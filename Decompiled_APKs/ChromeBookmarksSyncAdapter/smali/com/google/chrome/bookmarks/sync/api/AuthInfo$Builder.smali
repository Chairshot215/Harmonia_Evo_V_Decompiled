.class public interface abstract Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
.end method

.method public abstract setAccount(Landroid/accounts/Account;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
.end method

.method public abstract setAuthTokenType(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
.end method

.method public abstract setContext(Landroid/content/Context;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
.end method
