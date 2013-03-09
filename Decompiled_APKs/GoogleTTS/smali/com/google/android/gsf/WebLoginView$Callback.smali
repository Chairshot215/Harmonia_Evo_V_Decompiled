.class public interface abstract Lcom/google/android/gsf/WebLoginView$Callback;
.super Ljava/lang/Object;
.source "WebLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/WebLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onWebLoginCompleted(Ljava/lang/String;)V
.end method

.method public abstract onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V
.end method
