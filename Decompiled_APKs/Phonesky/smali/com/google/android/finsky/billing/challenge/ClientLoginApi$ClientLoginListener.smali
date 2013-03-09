.class public interface abstract Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientLoginListener"
.end annotation


# virtual methods
.method public abstract onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
.end method

.method public abstract onAuthSuccess()V
.end method
