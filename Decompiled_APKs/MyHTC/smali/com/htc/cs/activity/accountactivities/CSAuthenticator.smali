.class public Lcom/htc/cs/activity/accountactivities/CSAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "CSAuthenticator.java"


# static fields
.field public static final OPTIONS_CONTACTS_SYNC_ENABLED:Ljava/lang/String; = "contacts"

.field public static final OPTIONS_PASSWORD:Ljava/lang/String; = "password"

.field public static final OPTIONS_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mIntent:Landroid/content/Intent;

.field private msContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->mIntent:Landroid/content/Intent;

    .line 38
    const-string v0, "[CSAuthenticator] "

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->msContext:Landroid/content/Context;

    .line 43
    const-string v0, "MyHTC"

    const-string v1, "[CSAuthenticator] CSAuthenticator OnCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p5, :cond_0

    const-string v4, "password"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "username"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, b:Landroid/os/Bundle;
    move-object v2, v1

    .line 92
    .end local v1           #b:Landroid/os/Bundle;
    .local v2, b:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 64
    .end local v2           #b:Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v4, "MyHTC"

    const-string v5, "[CSAuthenticator] addAccount()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->msContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.htc.cs"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 70
    .local v0, account:[Landroid/accounts/Account;
    array-length v4, v0

    if-nez v4, :cond_1

    .line 72
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.htc.cs"

    const-string v5, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v4, 0x1080

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    const-string v4, "intent"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    move-object v2, v1

    .line 92
    .restart local v2       #b:Ljava/lang/Object;
    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public confirmPassword(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method
