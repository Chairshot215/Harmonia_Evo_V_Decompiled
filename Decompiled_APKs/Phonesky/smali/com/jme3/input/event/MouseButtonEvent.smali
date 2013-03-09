.class public Lcom/jme3/input/event/MouseButtonEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "MouseButtonEvent.java"


# instance fields
.field private btnIndex:I

.field private pressed:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IZII)V
    .locals 0
    .parameter "btnIndex"
    .parameter "pressed"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 50
    iput p1, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    .line 51
    iput-boolean p2, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    .line 52
    iput p3, p0, Lcom/jme3/input/event/MouseButtonEvent;->x:I

    .line 53
    iput p4, p0, Lcom/jme3/input/event/MouseButtonEvent;->y:I

    .line 54
    return-void
.end method


# virtual methods
.method public getButtonIndex()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->y:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MouseButton(BTN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, str:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PRESSED)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RELEASED)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
