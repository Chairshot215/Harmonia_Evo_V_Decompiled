.class public interface abstract Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;
.super Ljava/lang/Object;
.source "SunnySceneChangeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISceneChangeListener"
.end annotation


# virtual methods
.method public abstract isSceneChangeCancelled()Z
.end method

.method public abstract isSceneChanging()Z
.end method

.method public abstract onSceneChangeBegin()V
.end method

.method public abstract onSceneChangeCancelled()V
.end method

.method public abstract onSceneChangeEnd(I)V
.end method
