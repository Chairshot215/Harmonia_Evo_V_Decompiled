.class Lcom/google/android/syncadapters/contacts/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field public final mAccount:Landroid/accounts/Account;

.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public mAuthToken:Ljava/lang/String;

.field public final mAuthTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "accountManager"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccountManager:Landroid/accounts/AccountManager;

    .line 23
    iput-object p2, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    .line 24
    iput-object p3, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthTokenType:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
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
    .line 37
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthTokenType:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v2, "unable to get auth token"

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v2, "unable to get auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_0
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    return-object v1
.end method

.method public invalidateAuthToken()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAuthToken:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method
