.class public interface abstract Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;
.super Ljava/lang/Object;
.source "AsyncAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/AsyncAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAuthTokenReceived(Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/android/volley/AuthFailureError;)V
.end method
