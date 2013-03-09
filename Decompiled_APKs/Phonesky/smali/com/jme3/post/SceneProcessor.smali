.class public interface abstract Lcom/jme3/post/SceneProcessor;
.super Ljava/lang/Object;
.source "SceneProcessor.java"


# virtual methods
.method public abstract initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract postFrame(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
.end method

.method public abstract preFrame(F)V
.end method

.method public abstract reshape(Lcom/jme3/renderer/ViewPort;II)V
.end method
