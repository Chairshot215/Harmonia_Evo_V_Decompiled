.class public interface abstract Lcom/jme3/system/JmeContext;
.super Ljava/lang/Object;
.source "JmeContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/system/JmeContext$Type;
    }
.end annotation


# virtual methods
.method public abstract create(Z)V
.end method

.method public abstract destroy(Z)V
.end method

.method public abstract getJoyInput()Lcom/jme3/input/JoyInput;
.end method

.method public abstract getKeyInput()Lcom/jme3/input/KeyInput;
.end method

.method public abstract getMouseInput()Lcom/jme3/input/MouseInput;
.end method

.method public abstract getRenderer()Lcom/jme3/renderer/Renderer;
.end method

.method public abstract getSettings()Lcom/jme3/system/AppSettings;
.end method

.method public abstract getTimer()Lcom/jme3/system/Timer;
.end method

.method public abstract getTouchInput()Lcom/jme3/input/TouchInput;
.end method

.method public abstract getType()Lcom/jme3/system/JmeContext$Type;
.end method

.method public abstract isCreated()Z
.end method

.method public abstract isRenderable()Z
.end method

.method public abstract restart()V
.end method

.method public abstract setSettings(Lcom/jme3/system/AppSettings;)V
.end method

.method public abstract setSystemListener(Lcom/jme3/system/SystemListener;)V
.end method
