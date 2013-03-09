.class public interface abstract Lcom/android/smith/ClientSocket$OnSocketEventListener;
.super Ljava/lang/Object;
.source "ClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/ClientSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSocketEventListener"
.end annotation


# virtual methods
.method public abstract isSocketClosed(Z)V
.end method

.method public abstract isSocketConnected(Z)V
.end method

.method public abstract onSocketClosed()V
.end method

.method public abstract onSocketOpened(Z)V
.end method

.method public abstract onSocketRead(I[B)V
.end method

.method public abstract onSocketWrite(Z)V
.end method
