.class public Lcom/jme3/app/state/AbstractAppState;
.super Ljava/lang/Object;
.source "AbstractAppState.java"

# interfaces
.implements Lcom/jme3/app/state/AppState;


# instance fields
.field private enabled:Z

.field protected initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    .line 87
    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 1
    .parameter "stateManager"
    .parameter "app"

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    .line 56
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    return v0
.end method

.method public postRender()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0
    .parameter "rm"

    .prologue
    .line 80
    return-void
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0
    .parameter "stateManager"

    .prologue
    .line 71
    return-void
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0
    .parameter "stateManager"

    .prologue
    .line 74
    return-void
.end method

.method public update(F)V
    .locals 0
    .parameter "tpf"

    .prologue
    .line 77
    return-void
.end method
