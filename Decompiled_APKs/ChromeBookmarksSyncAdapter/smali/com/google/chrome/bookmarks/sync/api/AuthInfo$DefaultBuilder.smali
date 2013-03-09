.class public Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;
.super Ljava/lang/Object;
.source "AuthInfo.java"

# interfaces
.implements Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultBuilder"
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mAuthTokenType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mAuthTokenType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
    .locals 0
    .parameter "account"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mAccount:Landroid/accounts/Account;

    .line 45
    return-object p0
.end method

.method public setAuthTokenType(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mAuthTokenType:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;->mContext:Landroid/content/Context;

    .line 55
    return-object p0
.end method
