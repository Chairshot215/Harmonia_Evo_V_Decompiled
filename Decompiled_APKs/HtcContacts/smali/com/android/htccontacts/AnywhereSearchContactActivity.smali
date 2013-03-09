.class public Lcom/android/htccontacts/AnywhereSearchContactActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "AnywhereSearchContactActivity.java"


# instance fields
.field mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    return-void
.end method

.method private checkSupportHtcCompanySearch()Z
    .locals 7

    .prologue
    .line 62
    iget-object v5, p0, Lcom/android/htccontacts/AnywhereSearchContactActivity;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v5, :cond_1

    .line 63
    iget-object v5, p0, Lcom/android/htccontacts/AnywhereSearchContactActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 64
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 65
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 66
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.htc.android.mail.eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const/4 v5, 0x1

    .line 74
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return v5

    .line 65
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private process()V
    .locals 8

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 28
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 30
    .local v5, newIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/AnywhereSearchContactActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 34
    .local v1, data:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    .end local v5           #newIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .restart local v5       #newIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->finish()V

    .line 59
    .end local v1           #data:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v6, "com.htc.intent.ACTION_SEARCH_COMPANY_DIRECTORY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.intent.ACTION_SEARCH_COMPANY_DIRECTORY_RESULT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->checkSupportHtcCompanySearch()Z

    move-result v4

    .line 42
    .local v4, isLogHtcExchange:Z
    if-eqz v4, :cond_5

    .line 43
    new-instance v5, Landroid/content/Intent;

    .end local v5           #newIntent:Landroid/content/Intent;
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v5       #newIntent:Landroid/content/Intent;
    const-string v6, "intent_extra_data_key"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, extra:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 46
    const-string v6, "intent_extra_data_key"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .end local v2           #extra:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 54
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_5
    new-instance v5, Landroid/content/Intent;

    .end local v5           #newIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v5       #newIntent:Landroid/content/Intent;
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcom/android/htccontacts/AnywhereSearchContactActivity;->process()V

    .line 24
    return-void
.end method
