.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterIntentService;
.super Landroid/app/IntentService;
.source "ContactsSyncAdapterIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "ContactsSyncAdapterIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, applicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->getOrMakeContactsSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    move-result-object v2

    .line 38
    .local v2, contactsSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 41
    .local v0, accounts:[Landroid/accounts/Account;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, e:Landroid/os/RemoteException;
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "ensureSpecialGroupsAreCreated failed when handling the accounts changed intent"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
