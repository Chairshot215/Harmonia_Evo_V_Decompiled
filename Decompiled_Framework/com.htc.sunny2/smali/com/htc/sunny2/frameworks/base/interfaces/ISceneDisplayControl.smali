.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.super Ljava/lang/Object;
.source "ISceneDisplayControl.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentAccess;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentAccess;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapterAccess;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayAnimation;


# virtual methods
.method public abstract getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.end method

.method public abstract getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.end method

.method public abstract gotoPreviousScene()V
.end method

.method public abstract gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end method

.method public abstract isDisplayControlBusy()Z
.end method

.method public abstract isSceneExist(Ljava/lang/String;)Z
.end method

.method public abstract onNotifyErrorResult(Ljava/lang/Object;)V
.end method

.method public abstract removeAllScene()Z
.end method

.method public abstract removeScene(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Z)V
.end method

.method public abstract removeScene(Ljava/lang/String;Z)V
.end method

.method public abstract startScene(Landroid/os/Bundle;Ljava/lang/String;)V
.end method
