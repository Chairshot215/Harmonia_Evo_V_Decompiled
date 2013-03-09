.class public Lcom/jme3/input/dummy/DummyInput;
.super Ljava/lang/Object;
.source "DummyInput.java"

# interfaces
.implements Lcom/jme3/input/Input;


# instance fields
.field protected inited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    .line 65
    return-void
.end method

.method public getInputTimeNanos()J
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    .line 53
    return-void
.end method

.method public setInputListener(Lcom/jme3/input/RawInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/jme3/input/dummy/DummyInput;->inited:Z

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method
