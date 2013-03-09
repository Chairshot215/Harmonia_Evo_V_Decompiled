.class public interface abstract Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.super Ljava/lang/Object;
.source "HtcActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHandleMessageListener"
.end annotation


# virtual methods
.method public abstract onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
.end method

.method public abstract onHandleNonUIMessage(Landroid/os/Message;)Z
.end method

.method public abstract onHandleUIMessage(Landroid/os/Message;)Z
.end method
