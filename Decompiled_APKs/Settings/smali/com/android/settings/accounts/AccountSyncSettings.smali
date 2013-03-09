.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final CANT_DO_ONETIME_SYNC_DIALOG:I = 0x66

.field private static final FAILED_REMOVAL_DIALOG:I = 0x65

.field private static final KEY_DATA_SYNC:Ljava/lang/String; = "dataAndSynchronization"

.field private static final KEY_REFRESH_WHEN_OPEN:Ljava/lang/String; = "refresh_when_open"

.field private static final KEY_SYNC_INTERVAL:Ljava/lang/String; = "sync_interval"

#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field protected static final MENU_REMOVE_ACCOUNT_ID:I = 0x1

.field private static final MENU_SYNC_CANCEL_ID:I = 0x3

.field private static final MENU_SYNC_NOW_ID:I = 0x2

.field private static final REALLY_REMOVE_DIALOG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SyncSettings"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccounts:[Landroid/accounts/Account;

.field private mAccountsyncAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/lang/String;

.field private mDummyView1:Landroid/view/View;

.field private mDummyView2:Landroid/view/View;

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

.field private mPluinPackageName:Ljava/lang/String;

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field protected mRemoveAccountArea:Landroid/view/View;

.field private mRemoveAccountButton:Landroid/widget/Button;

.field private mSyncButton:Landroid/widget/Button;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "SyncSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/AccountSyncSettings;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    .line 100
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private CheckSyncButton()V
    .locals 10

    .prologue
    const v6, -0x777778

    const/high16 v5, -0x100

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 340
    .local v0, count:I
    const/4 v1, 0x1

    .line 341
    .local v1, disableSyncButton:Z
    const-string v7, "SyncSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckSyncButton count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 344
    .local v3, pref:Landroid/preference/Preference;
    instance-of v7, v3, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v7, :cond_1

    move-object v4, v3

    .line 345
    check-cast v4, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 346
    .local v4, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v4}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 347
    const/4 v1, 0x0

    .line 352
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    const-string v7, "SyncSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disableSyncButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v1, :cond_3

    .line 355
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 365
    :goto_2
    return-void

    .line 342
    .restart local v3       #pref:Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #pref:Landroid/preference/Preference;
    :cond_2
    move v5, v6

    .line 356
    goto :goto_1

    .line 360
    :cond_3
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->CheckSyncButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->addAdditionalPreferences(Landroid/accounts/Account;)V

    return-void
.end method

.method private addAdditionalPreferences(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettings;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "refresh_when_open"

    aput-object v3, v2, v7

    const-string v3, "plugin_pkg_name"

    aput-object v3, v2, v8

    const-string v3, "account_name"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "update_secs_res_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "update_intent_action"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "sync_interval"

    aput-object v4, v2, v3

    const-string v3, "account_type=? AND (account_name is NULL OR account_name = ?)"

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 663
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 665
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->setFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_1
    return-void

    .line 669
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v7, 0x0

    .line 296
    new-instance v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 298
    .local v0, item:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 300
    .local v1, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 302
    .local v2, providerLabel:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const-string v4, "SyncSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object v2, p2

    .line 306
    :cond_0
    const v4, 0x7f0c0ca5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void

    .line 300
    .end local v2           #providerLabel:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 467
    return-void
.end method

.method private getStrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 767
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 768
    .local v4, sec:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 769
    const v5, 0x7f0c02c5

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 788
    .end local v4           #sec:I
    .end local p1
    :goto_0
    return-object p1

    .line 770
    .restart local v4       #sec:I
    .restart local p1
    :cond_0
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 771
    const v5, 0x7f0c02c6

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 773
    :cond_1
    div-int/lit8 v3, v4, 0x3c

    .line 774
    .local v3, min:I
    div-int/lit8 v2, v3, 0x3c

    .line 775
    .local v2, hr:I
    div-int/lit8 v0, v2, 0x18

    .line 776
    .local v0, day:I
    if-ne v0, v6, :cond_2

    .line 777
    const v5, 0x7f0c02cb

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 778
    :cond_2
    if-lez v2, :cond_4

    .line 779
    if-ne v2, v6, :cond_3

    .line 780
    const v5, 0x7f0c02c7

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 782
    :cond_3
    const v5, 0x7f0c02c8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 783
    :cond_4
    if-ne v3, v6, :cond_5

    .line 784
    const v5, 0x7f0c02c9

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 786
    :cond_5
    const v5, 0x7f0c02ca

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 787
    .end local v0           #day:I
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #sec:I
    :catch_0
    move-exception v1

    .line 788
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 503
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x1

    .line 507
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 492
    if-eqz p3, :cond_0

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .parameter "startSync"

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 472
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 474
    .local v4, pref:Landroid/preference/Preference;
    instance-of v6, v4, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 472
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 477
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 478
    .local v5, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 484
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 485
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    .local v0, authority:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 489
    .end local v0           #authority:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 518
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 519
    .local v10, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v9

    .line 520
    .local v9, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v21, 0x0

    .line 521
    .local v21, syncIsFailing:Z
    const/16 v22, 0x0

    .line 524
    .local v22, syncNow:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 526
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, count:I
    :goto_0
    if-ge v11, v8, :cond_f

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 528
    .local v16, pref:Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 526
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v23, v16

    .line 531
    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 533
    .local v23, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 536
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 537
    .local v17, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    .line 538
    .local v20, syncEnabled:Z
    if-nez v17, :cond_5

    const/4 v5, 0x0

    .line 539
    .local v5, authorityIsPending:Z
    :goto_2
    if-nez v17, :cond_6

    const/4 v12, 0x0

    .line 541
    .local v12, initialSync:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 542
    .local v3, activelySyncing:Z
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/4 v13, 0x1

    .line 546
    .local v13, lastSyncFailed:Z
    :goto_4
    if-nez v20, :cond_1

    const/4 v13, 0x0

    .line 547
    :cond_1
    if-eqz v13, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 548
    const/16 v21, 0x1

    .line 551
    :cond_2
    if-nez v17, :cond_8

    const-wide/16 v18, 0x0

    .line 552
    .local v18, successEndTime:J
    :goto_5
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_9

    .line 553
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 554
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedTime(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 556
    .local v25, timeString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    .end local v25           #timeString:Ljava/lang/String;
    :goto_6
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 562
    .local v24, syncState:I
    if-eqz v3, :cond_a

    if-ltz v24, :cond_a

    if-nez v12, :cond_a

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 564
    if-eqz v5, :cond_b

    if-ltz v24, :cond_b

    if-nez v12, :cond_b

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 567
    if-eqz v3, :cond_c

    if-ltz v24, :cond_c

    if-nez v12, :cond_c

    const/16 v26, 0x1

    :goto_9
    or-int v22, v22, v26

    .line 569
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 570
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 572
    .local v7, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v14

    .line 573
    .local v14, masterSyncAutomatically:Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 574
    .local v6, backgroundDataEnabled:Z
    if-eqz v14, :cond_3

    if-nez v6, :cond_d

    :cond_3
    const/4 v15, 0x1

    .line 575
    .local v15, oneTimeSyncMode:Z
    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 576
    if-nez v15, :cond_4

    if-eqz v20, :cond_e

    :cond_4
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 538
    .end local v3           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v12           #initialSync:Z
    .end local v13           #lastSyncFailed:Z
    .end local v14           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v18           #successEndTime:J
    .end local v24           #syncState:I
    :cond_5
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 539
    .restart local v5       #authorityIsPending:Z
    :cond_6
    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 542
    .restart local v3       #activelySyncing:Z
    .restart local v12       #initialSync:Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 551
    .restart local v13       #lastSyncFailed:Z
    :cond_8
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto/16 :goto_5

    .line 558
    .restart local v18       #successEndTime:J
    :cond_9
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 562
    .restart local v24       #syncState:I
    :cond_a
    const/16 v26, 0x0

    goto :goto_7

    .line 564
    :cond_b
    const/16 v26, 0x0

    goto :goto_8

    .line 567
    :cond_c
    const/16 v26, 0x0

    goto :goto_9

    .line 574
    .restart local v6       #backgroundDataEnabled:Z
    .restart local v7       #connManager:Landroid/net/ConnectivityManager;
    .restart local v14       #masterSyncAutomatically:Z
    :cond_d
    const/4 v15, 0x0

    goto :goto_a

    .line 576
    .restart local v15       #oneTimeSyncMode:Z
    :cond_e
    const/16 v26, 0x0

    goto :goto_b

    .line 578
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #activelySyncing:Z
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v12           #initialSync:Z
    .end local v13           #lastSyncFailed:Z
    .end local v14           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v16           #pref:Landroid/preference/Preference;
    .end local v17           #status:Landroid/content/SyncStatusInfo;
    .end local v18           #successEndTime:J
    .end local v20           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v21, :cond_10

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->setSyncButtonText(Z)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    new-instance v27, Lcom/android/settings/accounts/AccountSyncSettings$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings$2;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 585
    return-void

    .line 578
    :cond_10
    const/16 v26, 0x8

    goto :goto_c
.end method

.method private setFromCursor(Landroid/database/Cursor;)V
    .locals 22
    .parameter "c"

    .prologue
    .line 675
    const-string v19, "refresh_when_open"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v10

    .line 677
    .local v10, refresh:I
    const-string v19, "plugin_pkg_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 679
    .local v9, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    .line 681
    :try_start_0
    const-string v19, "update_secs_res_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 683
    .local v13, resName:Ljava/lang/String;
    const-string v19, "sync_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, interval:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 688
    .local v11, res:Landroid/content/res/Resources;
    if-ltz v10, :cond_0

    .line 689
    new-instance v8, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 690
    .local v8, item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setPersistent(Z)V

    .line 691
    const v19, 0x7f0c02bf

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setTitle(I)V

    .line 692
    const v19, 0x7f0c02c0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setSummary(I)V

    .line 693
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setChecked(Z)V

    .line 694
    const-string v19, "refresh_when_open"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 695
    const v19, 0x7f0c02c0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 696
    .local v15, summary:Ljava/lang/String;
    invoke-virtual {v8, v15}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v8           #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    .end local v15           #summary:Ljava/lang/String;
    :cond_0
    const-string v19, "-100"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 703
    const-string v19, "update_intent_action"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 706
    .local v14, strIntent:Ljava/lang/String;
    if-nez v14, :cond_5

    .line 707
    new-instance v16, Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;-><init>(Landroid/content/Context;)V

    .line 709
    .local v16, syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setPersistent(Z)V

    .line 710
    const v19, 0x7f0c02c1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setDialogTitle(I)V

    .line 711
    const-string v19, "array"

    move-object/from16 v0, v19

    invoke-virtual {v11, v13, v0, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 712
    .local v12, resId:I
    const-string v19, "SyncSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "resName : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v19, "SyncSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pkgName : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-lez v12, :cond_4

    .line 715
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 716
    .local v5, entryValues:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 717
    .local v4, entries:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 718
    aget-object v19, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getStrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v4, v6

    .line 717
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 693
    .end local v4           #entries:[Ljava/lang/String;
    .end local v5           #entryValues:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v12           #resId:I
    .end local v14           #strIntent:Ljava/lang/String;
    .end local v16           #syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    .restart local v8       #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 720
    .end local v8           #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    .restart local v4       #entries:[Ljava/lang/String;
    .restart local v5       #entryValues:[Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v12       #resId:I
    .restart local v14       #strIntent:Ljava/lang/String;
    .restart local v16       #syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    :cond_2
    const-string v19, "sync_interval"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setKey(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 722
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 723
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setValue(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 725
    const v19, 0x7f0c02c1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setTitle(I)V

    .line 726
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 759
    .end local v4           #entries:[Ljava/lang/String;
    .end local v5           #entryValues:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #interval:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #resId:I
    .end local v13           #resName:Ljava/lang/String;
    .end local v14           #strIntent:Ljava/lang/String;
    .end local v16           #syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    :cond_3
    :goto_2
    return-void

    .line 730
    .restart local v7       #interval:Ljava/lang/String;
    .restart local v11       #res:Landroid/content/res/Resources;
    .restart local v12       #resId:I
    .restart local v13       #resName:Ljava/lang/String;
    .restart local v14       #strIntent:Ljava/lang/String;
    .restart local v16       #syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    :cond_4
    const-string v19, "SyncSettings"

    const-string v20, "Can\'t find resId"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 755
    .end local v7           #interval:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #resId:I
    .end local v13           #resName:Ljava/lang/String;
    .end local v14           #strIntent:Ljava/lang/String;
    .end local v16           #syncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;
    :catch_0
    move-exception v3

    .line 757
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 733
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #interval:Ljava/lang/String;
    .restart local v11       #res:Landroid/content/res/Resources;
    .restart local v13       #resName:Ljava/lang/String;
    .restart local v14       #strIntent:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    .line 735
    .local v17, updateIntent:Landroid/content/Intent;
    const/16 v19, 0x0

    :try_start_1
    move/from16 v0, v19

    invoke-static {v14, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 739
    :goto_3
    if-eqz v17, :cond_3

    .line 740
    :try_start_2
    new-instance v18, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 741
    .local v18, updateItem:Landroid/preference/Preference;
    const v19, 0x7f0400b0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 742
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 743
    const-string v19, "sync_interval"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 745
    const v19, 0x7f0c02c1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 746
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->getStrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 747
    const-string v19, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 736
    .end local v18           #updateItem:Landroid/preference/Preference;
    :catch_1
    move-exception v19

    goto :goto_3
.end method

.method private setSyncButtonText(Z)V
    .locals 2
    .parameter "syncNow"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    const v1, 0x7f0c0c93

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 462
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 596
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 598
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 599
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 601
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v9

    .local v7, n:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 602
    aget-object v8, v9, v4

    .line 603
    .local v8, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 604
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 605
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_0
    sget-boolean v11, Lcom/android/settings/accounts/AccountSyncSettings;->LDEBUG:Z

    if-eqz v11, :cond_1

    .line 610
    const-string v11, "SyncSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onAccountUpdated: added authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to accountType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    :cond_2
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 621
    .end local v8           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 624
    :cond_4
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 626
    const/4 v4, 0x0

    array-length v7, p1

    :goto_3
    if-ge v4, v7, :cond_9

    .line 627
    aget-object v0, p1, v4

    .line 628
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 629
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 630
    :cond_5
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, m:I
    :goto_4
    if-ge v5, v6, :cond_8

    .line 631
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 634
    .local v10, syncState:I
    sget-boolean v11, Lcom/android/settings/accounts/AccountSyncSettings;->LDEBUG:Z

    if-eqz v11, :cond_6

    .line 635
    const-string v11, "SyncSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_6
    if-lez v10, :cond_7

    .line 638
    invoke-direct {p0, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 630
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 626
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 644
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 645
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    if-ge v4, v7, :cond_a

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 645
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 649
    :cond_a
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "prefs"

    .prologue
    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 827
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 828
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 829
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 826
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 4
    .parameter "rootView"

    .prologue
    const/4 v3, 0x0

    .line 195
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 197
    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 202
    const v0, 0x7f080173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f080174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f080172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountArea:Landroid/view/View;

    .line 207
    const v0, 0x7f080039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    .line 208
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    const v1, 0x7f0c0c9e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f080038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    .line 211
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDummyView1:Landroid/view/View;

    .line 214
    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDummyView2:Landroid/view/View;

    .line 216
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->setSyncButtonText(Z)V

    .line 217
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 589
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 590
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 591
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 593
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d38

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 250
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x19

    if-eq v3, v4, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d39

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 256
    .local v1, arguments:Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 257
    const-string v3, "SyncSettings"

    const-string v4, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 262
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 264
    .local v2, label:Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    .line 265
    const-string v2, ""

    .line 267
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.sync.provider.weather"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "Weather"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.newsreader"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "News"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.stock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "Stocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.showme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "Show Me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 272
    :cond_7
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 797
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 799
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 803
    .local v1, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 804
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 807
    .end local v1           #prefs:Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_2

    .line 808
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 810
    const-string v2, "dataAndSynchronization"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0400b1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 816
    new-instance v2, Lcom/android/settings/accounts/AccountSyncSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSyncSettings$3;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings$3;->start()V

    .line 823
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 229
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 231
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 232
    .local v0, syncActive:Z
    :goto_1
    if-nez v0, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 231
    .end local v0           #syncActive:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 235
    .restart local v0       #syncActive:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 173
    .local v3, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v3

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    aget-object v2, v3, v0

    .line 175
    .local v2, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v2           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 182
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f0c0ca1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 118
    const v1, 0x1080027

    .line 119
    .local v1, resId:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0ca2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0c9e

    new-instance v4, Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 166
    .end local v1           #resId:I
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    .line 154
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0ca3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    const/16 v2, 0x66

    if-ne p1, v2, :cond_0

    .line 160
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0ca6

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0ca7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 187
    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 416
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 407
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 413
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 293
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sync_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 843
    check-cast v1, Lcom/android/settings/accounts/OptionListPreference;

    .line 844
    .local v1, lpref:Lcom/android/settings/accounts/OptionListPreference;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/accounts/OptionListPreference;->setValue(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v1}, Lcom/android/settings/accounts/OptionListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/accounts/OptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 846
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 847
    .local v2, newInterval:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 849
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, changeIntent:Landroid/content/Intent;
    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string v3, "sync_interval"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 853
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 855
    const/4 v3, 0x1

    .line 858
    .end local v0           #changeIntent:Landroid/content/Intent;
    .end local v1           #lpref:Lcom/android/settings/accounts/OptionListPreference;
    .end local v2           #newInterval:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 421
    instance-of v8, p2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v8, :cond_4

    move-object v6, p2

    .line 422
    check-cast v6, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 423
    .local v6, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 425
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 426
    .local v4, syncAutomatically:Z
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 427
    invoke-direct {p0, v0, v1, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 455
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #syncAutomatically:Z
    .end local v6           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    :goto_0
    return v7

    .line 429
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v4       #syncAutomatically:Z
    .restart local v6       #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v5

    .line 430
    .local v5, syncOn:Z
    if-eqz v5, :cond_3

    .line 431
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    :goto_1
    move v3, v4

    .line 436
    .local v3, oldSyncState:Z
    if-eq v5, v3, :cond_0

    .line 438
    invoke-static {v0, v1, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 442
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v5, :cond_0

    .line 443
    :cond_2
    invoke-direct {p0, v0, v1, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 433
    .end local v3           #oldSyncState:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->CheckSyncButton()V

    goto :goto_1

    .line 448
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #syncAutomatically:Z
    .end local v5           #syncOn:Z
    .end local v6           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_4
    instance-of v8, p2, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "refresh_when_open"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v2, p2

    .line 450
    check-cast v2, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    .line 451
    .local v2, chechkPrefs:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 455
    .end local v2           #chechkPrefs:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 370
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .line 375
    .local v2, syncActive:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_5

    .line 376
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    .local v1, label:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 378
    const-string v1, ""

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.htc.sync.provider.weather"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "Weather"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.htc.newsreader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "News"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.htc.stock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "Stocks"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.htc.showme"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "Show Me"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 385
    :cond_4
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v6, "CanRemove"

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, CanRemove:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 392
    const-string v4, "SyncSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CanRemove="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v4, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDummyView1:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDummyView2:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    .end local v0           #CanRemove:Ljava/lang/String;
    .end local v1           #label:Ljava/lang/CharSequence;
    :cond_5
    return-void

    .end local v2           #syncActive:Z
    :cond_6
    move v2, v3

    .line 370
    goto/16 :goto_0

    .line 387
    .restart local v1       #label:Ljava/lang/CharSequence;
    .restart local v2       #syncActive:Z
    :cond_7
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 282
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 284
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 286
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 287
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method
