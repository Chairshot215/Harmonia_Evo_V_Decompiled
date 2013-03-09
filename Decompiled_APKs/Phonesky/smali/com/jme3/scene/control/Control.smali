.class public interface abstract Lcom/jme3/scene/control/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# virtual methods
.method public abstract cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
.end method

.method public abstract render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
.end method

.method public abstract setSpatial(Lcom/jme3/scene/Spatial;)V
.end method

.method public abstract update(F)V
.end method
