.class public Lcom/jme3/input/event/JoyButtonEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "JoyButtonEvent.java"


# instance fields
.field private btnIdx:I

.field private joyIdx:I

.field private pressed:Z


# virtual methods
.method public getButtonIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->btnIdx:I

    return v0
.end method

.method public getJoyIndex()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->joyIdx:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->pressed:Z

    return v0
.end method
