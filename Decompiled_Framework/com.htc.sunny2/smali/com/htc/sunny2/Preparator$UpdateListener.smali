.class public interface abstract Lcom/htc/sunny2/Preparator$UpdateListener;
.super Ljava/lang/Object;
.source "Preparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/Preparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract onExpired(IILandroid/os/Bundle;)V
.end method

.method public abstract onFailed(IILandroid/os/Bundle;)V
.end method

.method public abstract onReady(IILandroid/os/Bundle;)V
.end method
