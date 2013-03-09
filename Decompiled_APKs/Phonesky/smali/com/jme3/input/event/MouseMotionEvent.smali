.class public Lcom/jme3/input/event/MouseMotionEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "MouseMotionEvent.java"


# instance fields
.field private deltaWheel:I

.field private dx:I

.field private dy:I

.field private wheel:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"
    .parameter "wheel"
    .parameter "deltaWheel"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 47
    iput p1, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    .line 48
    iput p2, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    .line 49
    iput p3, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    .line 50
    iput p4, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    .line 51
    iput p5, p0, Lcom/jme3/input/event/MouseMotionEvent;->wheel:I

    .line 52
    iput p6, p0, Lcom/jme3/input/event/MouseMotionEvent;->deltaWheel:I

    .line 53
    return-void
.end method


# virtual methods
.method public getDX()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    return v0
.end method

.method public getDY()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    return v0
.end method

.method public getDeltaWheel()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->deltaWheel:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MouseMotion(X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
