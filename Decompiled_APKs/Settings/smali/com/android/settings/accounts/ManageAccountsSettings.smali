.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final EXTRA_ACTION:Ljava/lang/String; = "AccountAction"

.field private static final EXTRA_FLAG:Ljava/lang/String; = "AccountAction"

#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field private static final MANAGE_ACCOUNTS_CATEGORY_KEY:Ljava/lang/String; = "manageAccountsCategory"

.field private static final MENU_ADD_ACCOUNT_ID:I = 0x1

.field private static final MENU_SYNC_ALL_ID:I = 0x2

.field private static final MENU_SYNC_CANCEL_ID:I = 0x3

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManageAccountsSettings"


# instance fields
.field firstSet:Z

.field isSyncing:Z

.field private mAccounts:[Landroid/accounts/Account;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mSyncAllButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "ManageAccountsSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/ManageAccountsSettings;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccounts:[Landroid/accounts/Account;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->firstSet:Z

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 18
    .parameter "accounts"

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 485
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    .line 486
    .local v12, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 489
    .local v2, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 490
    aget-object v11, v12, v6

    .line 492
    .local v11, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 493
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 494
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 495
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_0
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 502
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v0, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 505
    .end local v11           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    sget-boolean v15, Lcom/android/settings/accounts/ManageAccountsSettings;->LDEBUG:Z

    if-eqz v15, :cond_3

    .line 506
    const-string v15, "ManageAccountsSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SyncCheckedAuthorityForAllAccount accounts.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    :goto_2
    if-ge v6, v10, :cond_7

    .line 510
    aget-object v1, p1, v6

    .line 511
    .local v1, account:Landroid/accounts/Account;
    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 512
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    .line 513
    const/4 v8, 0x0

    .local v8, j:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, m:I
    :goto_3
    if-ge v8, v9, :cond_5

    .line 514
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 516
    .local v4, authority:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 517
    .local v14, syncState:I
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 519
    .local v13, syncEnabled:Z
    if-lez v14, :cond_4

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    .line 520
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v5, extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 513
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 526
    .end local v4           #authority:Ljava/lang/String;
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v13           #syncEnabled:Z
    .end local v14           #syncState:I
    :cond_5
    if-eqz v1, :cond_6

    .line 528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 529
    .restart local v4       #authority:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 530
    .restart local v5       #extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 509
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 535
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method private checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"
    .parameter "multiSync"

    .prologue
    const/4 v4, 0x0

    .line 449
    if-eqz p3, :cond_0

    array-length v5, p3

    if-nez v5, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v4

    .line 452
    :cond_1
    array-length v3, p3

    .line 453
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 454
    aget-object v5, p3, v0

    if-eqz v5, :cond_2

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    if-nez v5, :cond_3

    .line 453
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_3
    new-instance v1, Landroid/accounts/Account;

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v6, p3, v0

    iget-object v6, v6, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v1, itemAccount:Landroid/accounts/Account;
    aget-object v5, p3, v0

    iget-object v2, v5, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 458
    .local v2, itemAuthority:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getAccountPreferenceIntent(Lcom/android/settings/AccountPreference;)Landroid/content/Intent;
    .locals 11
    .parameter "acctPref"

    .prologue
    const/high16 v10, 0x1000

    .line 292
    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 293
    .local v5, mAccount:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 294
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v7, "AccountAction"

    invoke-virtual {v1, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, action:Ljava/lang/String;
    const-string v7, "AccountAction"

    invoke-virtual {v1, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, flag:Ljava/lang/String;
    const-string v7, "ManageAccountsSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountAction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accountFlag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "com.htc.android.mail.eas"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "android.htc.mail.eas.EAS_MAIN_PAGE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v7, "account"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v7, v4

    .line 363
    :goto_1
    return-object v7

    .line 305
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 307
    :cond_2
    const-string v7, "com.htc.VzWBASync"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 308
    if-nez v0, :cond_3

    .line 309
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.VzWBackupAssistantClient.SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_2
    if-eqz v3, :cond_4

    .line 316
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 317
    .local v6, nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v6           #nflag:I
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 320
    const-string v7, "ManageAccountsSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (com.htc.VzWBackupAssistantClient.SETTINGS) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 323
    :cond_4
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 326
    :cond_5
    const-string v7, "com.htc.vmm.Backup"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 327
    if-nez v0, :cond_6

    .line 328
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.vmm.settings.Backup"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_3
    if-eqz v3, :cond_7

    .line 334
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 335
    .restart local v6       #nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 336
    .end local v6           #nflag:I
    :catch_1
    move-exception v2

    .line 337
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 338
    const-string v7, "ManageAccountsSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (com.htc.vmm.settings.Backup) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 341
    :cond_7
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 344
    :cond_8
    if-nez v0, :cond_9

    .line 347
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 349
    :cond_9
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v4       #intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 353
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 354
    .restart local v6       #nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 355
    .end local v6           #nflag:I
    :catch_2
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 357
    const-string v7, "ManageAccountsSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (android.settings.ACCOUNT_SYNC_SETTINGS) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized requestOrCancelSyncForEnabledProviders(Z)V
    .locals 2
    .parameter "startSync"

    .prologue
    .line 473
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccounts:[Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 478
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSyncButtonText(Z)V
    .locals 2
    .parameter "syncNow"

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v1, 0x7f0c061d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 9
    .parameter "acctPref"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAccountPreferenceIntent(Lcom/android/settings/AccountPreference;)Landroid/content/Intent;

    move-result-object v7

    .line 199
    .local v7, accIntent:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v8

    .line 203
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const-string v0, "ManageAccountsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0c86

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 541
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccounts:[Landroid/accounts/Account;

    .line 542
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_6

    .line 543
    aget-object v2, p1, v7

    .line 544
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 546
    .local v5, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 547
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .restart local v5       #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v12, 0x1

    .line 551
    .local v12, showAccount:Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    .line 552
    const/4 v12, 0x0

    .line 553
    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v11, v6, v8

    .line 554
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 555
    const/4 v12, 0x1

    .line 561
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_2
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v13, "com.google"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accounts/Util;->isGmailSupported(Landroid/content/Context;)Z

    move-result v12

    .line 564
    :cond_3
    if-eqz v12, :cond_4

    .line 565
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 566
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 567
    .local v4, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 569
    .local v0, preference:Lcom/android/settings/AccountPreference;
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 542
    .end local v0           #preference:Lcom/android/settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #label:Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 553
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 572
    .end local v2           #account:Landroid/accounts/Account;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v12           #showAccount:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, view:Landroid/view/View;
    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    new-instance v3, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 152
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v6, v6, v1, v6}, Lcom/htc/widget/HtcToggleButton;->setPadding(IIII)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d38

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 155
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x19

    if-eq v3, v4, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d39

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 166
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$3;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 178
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 589
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccountPreference;

    .line 580
    .local v1, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 581
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v1           #pref:Lcom/android/settings/AccountPreference;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string v2, "manageAccountsCategory"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .local v1, j:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0400b1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    const v2, 0x7f040048

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v3, 0x7f0c061d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, mAddAccountButton:Landroid/widget/Button;
    const v2, 0x7f0c0c88

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 126
    new-instance v2, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v1
.end method

.method public onLeftClick()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 260
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 188
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 189
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 193
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 191
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onRightClick()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    .line 264
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 107
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 184
    return-void
.end method

.method public onSyncAllClicked()V
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 469
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSyncStateUpdated()V
    .locals 31

    .prologue
    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-nez v27, :cond_0

    .line 445
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Lcom/htc/widget/HtcToggleButton;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 377
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v23

    .line 378
    .local v23, syncInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v14, v0, [Landroid/content/SyncInfo;

    .line 379
    .local v14, multiSync:[Landroid/content/SyncInfo;
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 380
    const/4 v5, 0x0

    .line 381
    .local v5, anySyncFailed:Z
    const/16 v19, 0x0

    .line 383
    .local v19, sync:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    .line 384
    .local v20, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 385
    .local v26, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, k:I
    move-object/from16 v0, v20

    array-length v15, v0

    .local v15, n:I
    :goto_1
    if-ge v12, v15, :cond_3

    .line 386
    aget-object v17, v20, v12

    .line 387
    .local v17, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v17 .. v17}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 388
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 391
    .end local v17           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_2
    if-ge v10, v9, :cond_e

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 393
    .local v16, pref:Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 391
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v16

    .line 397
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 398
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 399
    .local v2, account:Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 400
    .local v21, syncCount:I
    const/16 v24, 0x0

    .line 401
    .local v24, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 402
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 403
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 404
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v18

    .line 405
    .local v18, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v27

    if-lez v27, :cond_6

    const/16 v22, 0x1

    .line 408
    .local v22, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 409
    .local v8, authorityIsPending:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v14}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v4

    .line 411
    .local v4, activelySyncing:Z
    if-eqz v18, :cond_7

    if-eqz v22, :cond_7

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_7

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    const/4 v13, 0x1

    .line 416
    .local v13, lastSyncFailed:Z
    :goto_6
    if-eqz v13, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 417
    const/16 v24, 0x1

    .line 418
    const/4 v5, 0x1

    .line 420
    :cond_5
    if-eqz v22, :cond_8

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    :goto_7
    add-int v21, v21, v27

    .line 421
    or-int v19, v19, v4

    .line 422
    goto :goto_4

    .line 405
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v13           #lastSyncFailed:Z
    .end local v22           #syncEnabled:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    .line 411
    .restart local v4       #activelySyncing:Z
    .restart local v8       #authorityIsPending:Z
    .restart local v22       #syncEnabled:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_6

    .line 420
    .restart local v13       #lastSyncFailed:Z
    :cond_8
    const/16 v27, 0x0

    goto :goto_7

    .line 424
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #lastSyncFailed:Z
    .end local v18           #status:Landroid/content/SyncStatusInfo;
    .end local v22           #syncEnabled:Z
    :cond_9
    const-string v27, "ManageAccountsSettings"

    const/16 v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 425
    const-string v27, "ManageAccountsSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "no syncadapters found for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_a
    const/16 v25, 0x1

    .line 429
    .local v25, syncStatus:I
    if-eqz v24, :cond_c

    .line 430
    const/16 v25, 0x2

    .line 436
    :cond_b
    :goto_8
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_3

    .line 431
    :cond_c
    if-nez v21, :cond_d

    .line 432
    const/16 v25, 0x1

    goto :goto_8

    .line 433
    :cond_d
    if-lez v21, :cond_b

    .line 434
    const/16 v25, 0x0

    goto :goto_8

    .line 438
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #pref:Landroid/preference/Preference;
    .end local v21           #syncCount:I
    .end local v24           #syncIsFailing:Z
    .end local v25           #syncStatus:I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->firstSet:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 439
    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/accounts/ManageAccountsSettings;->firstSet:Z

    .line 440
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->setSyncButtonText(Z)V

    .line 444
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v5, :cond_11

    const/16 v27, 0x0

    :goto_9
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    const/16 v27, 0x8

    goto :goto_9
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "ManageAccountsSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 223
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    return-void
.end method
