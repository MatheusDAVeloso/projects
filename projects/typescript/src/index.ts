window.onload = (event) => {
    // ——————————————————————————————————————————————————
    // INICIALIZATION
    // ——————————————————————————————————————————————————
    // Guard clause 1 — document
    if (typeof document == 'undefined') {
        return;
    }

    let canvas : HTMLCanvasElement;
    const possibleCanvas: HTMLCanvasElement | null = <HTMLCanvasElement | null>document.getElementById('canvas');
    // Guard clause 2 — canvas
    if (typeof possibleCanvas == null) {
        alert('Id \"canvas\" não encontrado no HTML')
        console.log('Id \"canvas\" não encontrado no HTML');
        return;
    } else {
        canvas = <HTMLCanvasElement>possibleCanvas;
        canvas.width = window.innerWidth * 0.95;
        canvas.height = window.innerHeight * 0.95;
    }

    let context2d: CanvasRenderingContext2D;
    // Guard clause 3 — context 2d
    if (!canvas.getContext) {
        alert('Não foi possível obter o \"Context 2D\" do elemento \"canvas\"');
        console.log('Não foi possível obter o \"Context 2D\" do elemento \"canvas\"');
        return;
    } else {
        // It can only be accessed once the window has fully loaded,
        // and "onload" ensures this.
        context2d = <CanvasRenderingContext2D>canvas.getContext('2d');
    }

    // ——————————————————————————————————————————————————
    // CONFIGURATION
    // ——————————————————————————————————————————————————
    context2d.fillStyle = "white";
    context2d.fillRect(0, 0, canvas.width, canvas.height);

    let walker: RandomWalker = new RandomWalker(canvas.width / 2, canvas.height / 2, context2d);

    function walkAndDraw() {
        walker.draw();
        walker.walk();
        window.requestAnimationFrame(walkAndDraw);
    }

    window.requestAnimationFrame(walkAndDraw);
}


// ——————————————————————————————————————————————————
// CLASSES
// ——————————————————————————————————————————————————
class RandomWalker {
    positionX: number;
    positionY: number;
    context: CanvasRenderingContext2D;
    constructor(positionX: number, positionY: number, context: CanvasRenderingContext2D) {
        this.positionX = positionX;
        this.positionY = positionY;
        this.context = context;
    }

    color: string = "black";
    width: number = 1;
    height: number = 1;

    walk() {
        let result: number = getRandomIntInclusive(1, 4);

        if (result == 1) {
            this.positionX += 1;
        } else if (result == 2) {
            this.positionX -= 1;
        } else if (result == 3) {
            this.positionY += 1;
        } else if (result == 4) {
            this.positionY -=1;
        }
    }

    draw() {
        this.context.beginPath();
        this.context.fillStyle = this.color;
        this.context.fillRect(this.positionX, this.positionY, this.width, this.height);
    }
}

// ——————————————————————————————————————————————————
// HELPER METHODS
// ——————————————————————————————————————————————————
function getRandomIntInclusive(min: number, max: number) {
    min = Math.ceil(min);
    max = Math.ceil(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}