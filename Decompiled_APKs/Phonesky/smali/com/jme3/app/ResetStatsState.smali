.class public Lcom/jme3/app/ResetStatsState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "ResetStatsState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 1
    .parameter "rm"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->render(Lcom/jme3/renderer/RenderManager;)V

    .line 57
    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getStatistics()Lcom/jme3/renderer/Statistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->clearFrame()V

    .line 58
    return-void
.end method
