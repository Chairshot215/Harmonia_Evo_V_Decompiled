.class public Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;,
        Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;
    }
.end annotation


# instance fields
.field public authToken:Ljava/lang/String;

.field public final mAccount:Landroid/accounts/Account;

.field public final mAuthTokenType:Ljava/lang/String;

.field public final mManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mManager:Landroid/accounts/AccountManager;

    .line 61
    iput-object p2, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    .line 62
    iput-object p3, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAuthTokenType:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAuthTokenType:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v2, "unable to get auth token"

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v2, "unable to get auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_0
    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    return-object v1
.end method

.method public invalidateAuthToken()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->authToken:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method
