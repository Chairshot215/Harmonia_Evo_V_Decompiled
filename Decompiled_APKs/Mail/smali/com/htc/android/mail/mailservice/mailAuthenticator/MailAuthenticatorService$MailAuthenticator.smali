.class public Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "MailAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailAuthenticator"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private removeAccountFailed()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, resultBundle:Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-object v0
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
    const/4 v5, 0x1

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->isHuxOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 68
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/huxservice/HuxAddAccount;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const-string v2, "provider"

    const-string v3, "Yahoo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "providerDesc"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-string v4, "Yahoo"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_1
    :goto_1
    const-string v2, "inprotocol"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    :goto_2
    const-string v2, "CallingActivity"

    const/16 v3, 0x60

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    return-object v0

    .line 71
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 77
    :cond_3
    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    const-string v2, "provider"

    const-string v3, "MSN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "providerDesc"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-string v4, "MSN"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 80
    :cond_4
    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    const-string v2, "provider"

    const-string v3, "AOL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "providerDesc"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-string v4, "AOL"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 83
    :cond_5
    sget-object v2, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "provider"

    const-string v3, "Google"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "providerDesc"

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-string v4, "Google"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 91
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/ecNewAccount;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "provider"

    const-string v3, "other"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 5
    .parameter "response"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/Account;->isAccountDelProhibited(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/Account;->removeAccountDelProhibition(Landroid/content/Context;Ljava/lang/String;)Z

    .line 111
    invoke-super {p0, p1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    .line 125
    :goto_0
    return-object v3

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 115
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 117
    .local v1, mailAccount:Lcom/htc/android/mail/Account;
    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 119
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/huxservice/HuxProvController;->deleteEndPointOnServer(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    .line 120
    .local v2, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->removeAccountFailed()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 123
    .end local v2           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->delete()Z

    .line 125
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 158
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
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method
