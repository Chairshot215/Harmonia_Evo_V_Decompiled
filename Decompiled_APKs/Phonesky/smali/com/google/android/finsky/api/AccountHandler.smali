.class public Lcom/google/android/finsky/api/AccountHandler;
.super Ljava/lang/Object;
.source "AccountHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;
    .locals 7
    .parameter "accountName"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 63
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 64
    .local v0, a:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/accounts/Account;
    :cond_2
    move-object v0, v5

    .line 68
    goto :goto_0
.end method

.method public static getAccountFromPreferences(Landroid/content/Context;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, preference:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, currentAccountName:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 98
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, p1}, Lcom/google/android/finsky/api/AccountHandler;->saveAccountToPreferences(Landroid/accounts/Account;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)V

    goto :goto_0
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 26
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 48
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasAccount(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "accountName"
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveAccountToPreferences(Landroid/accounts/Account;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)V
    .locals 1
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, preference:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method
