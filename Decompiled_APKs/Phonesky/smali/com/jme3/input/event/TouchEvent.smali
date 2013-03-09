.class public Lcom/jme3/input/event/TouchEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/input/event/TouchEvent$Type;
    }
.end annotation


# instance fields
.field private characters:Ljava/lang/String;

.field private deltaX:F

.field private deltaY:F

.field private keyCode:I

.field private pointerId:I

.field private posX:F

.field private posY:F

.field private pressure:F

.field private scaleFactor:F

.field private scaleSpan:F

.field private type:Lcom/jme3/input/event/TouchEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 92
    sget-object v0, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    iput-object v0, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    .line 108
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 109
    return-void
.end method


# virtual methods
.method public getDeltaY()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->deltaY:F

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    return v0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    return v0
.end method

.method public getType()Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->posX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->posY:F

    return v0
.end method

.method public set(Lcom/jme3/input/event/TouchEvent$Type;)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 116
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    .line 117
    return-void
.end method

.method public set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V
    .locals 2
    .parameter "type"
    .parameter "x"
    .parameter "y"
    .parameter "deltax"
    .parameter "deltay"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    iput-object p1, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    .line 121
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->posX:F

    .line 122
    iput p3, p0, Lcom/jme3/input/event/TouchEvent;->posY:F

    .line 123
    iput p4, p0, Lcom/jme3/input/event/TouchEvent;->deltaX:F

    .line 124
    iput p5, p0, Lcom/jme3/input/event/TouchEvent;->deltaY:F

    .line 125
    iput v1, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    .line 126
    iput v0, p0, Lcom/jme3/input/event/TouchEvent;->pressure:F

    .line 127
    iput v1, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    .line 128
    iput v0, p0, Lcom/jme3/input/event/TouchEvent;->scaleFactor:F

    .line 129
    iput v0, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/input/event/TouchEvent;->characters:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, Lcom/jme3/input/event/TouchEvent;->consumed:Z

    .line 132
    return-void
.end method

.method public setCharacters(Ljava/lang/String;)V
    .locals 0
    .parameter "characters"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/jme3/input/event/TouchEvent;->characters:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 183
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    .line 184
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .parameter "pointerId"

    .prologue
    .line 175
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    .line 176
    return-void
.end method

.method public setPressure(F)V
    .locals 0
    .parameter "pressure"

    .prologue
    .line 166
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->pressure:F

    .line 167
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .parameter "scaleFactor"

    .prologue
    .line 199
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleFactor:F

    .line 200
    return-void
.end method

.method public setScaleSpan(F)V
    .locals 0
    .parameter "scaleSpan"

    .prologue
    .line 207
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    .line 208
    return-void
.end method
