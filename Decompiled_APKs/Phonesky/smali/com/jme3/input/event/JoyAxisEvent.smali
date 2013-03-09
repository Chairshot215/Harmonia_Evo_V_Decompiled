.class public Lcom/jme3/input/event/JoyAxisEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "JoyAxisEvent.java"


# instance fields
.field private axisIdx:I

.field private joyIdx:I

.field private value:F


# virtual methods
.method public getAxisIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->axisIdx:I

    return v0
.end method

.method public getJoyIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->joyIdx:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->value:F

    return v0
.end method
