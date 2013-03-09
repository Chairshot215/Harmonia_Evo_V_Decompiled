.class public interface abstract Lcom/jme3/app/state/AppState;
.super Ljava/lang/Object;
.source "AppState.java"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract postRender()V
.end method

.method public abstract render(Lcom/jme3/renderer/RenderManager;)V
.end method

.method public abstract stateAttached(Lcom/jme3/app/state/AppStateManager;)V
.end method

.method public abstract stateDetached(Lcom/jme3/app/state/AppStateManager;)V
.end method

.method public abstract update(F)V
.end method
