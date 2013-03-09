.class public interface abstract Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;
.super Ljava/lang/Object;
.source "AuthTokenFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchFailedCallback"
.end annotation


# virtual methods
.method public abstract accountMissing()V
.end method

.method public abstract authFailed(Ljava/lang/String;)V
.end method

.method public abstract fetchAuthTokenLater(Ljava/lang/String;)V
.end method
