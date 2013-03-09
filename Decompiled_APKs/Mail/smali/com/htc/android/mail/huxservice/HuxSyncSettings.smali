.class public Lcom/htc/android/mail/huxservice/HuxSyncSettings;
.super Landroid/preference/PreferenceActivity;
.source "HuxSyncSettings.java"


# static fields
.field private static final ACCOUNT_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_REMOVE_FAILED:I = 0x2

.field private static final INTENT_EXTRA:Ljava/lang/String; = "intent_extra"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final KEY_CONTACT:Ljava/lang/String; = "contact"

.field private static final KEY_REFRESH_WHEN_OPEN:Ljava/lang/String; = "refresh_when_open"

.field private static final KEY_SYNC_INTERVAL:Ljava/lang/String; = "sync_interval"

.field private static final SYNC_STATE:Ljava/lang/String; = "state"

.field private static final SYNC_STATE_CHANGED_INTENT:Ljava/lang/String; = "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "HuxSyncSettings"


# instance fields
.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAvailableSyncAccounts:[Landroid/accounts/Account;

.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mExtraBundle:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

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

.field private mIsServiceCalendarSupported:Z

.field private mIsServiceContactSupported:Z

.field private mPluinPackageName:Ljava/lang/String;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mRemoveAccountButton:Landroid/widget/Button;

.field private mStatusChangeListenerHandler:Ljava/lang/Object;

.field private mSyncAccount:Landroid/accounts/Account;

.field private mSyncButton:Landroid/widget/Button;

.field private mSyncStateChangedIntent:Landroid/content/Intent;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Landroid/widget/TextView;

.field private onAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private preferenceChangeOnChange:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private removeAccountOnClick:Landroid/view/View$OnClickListener;

.field private syncAccountOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    .line 91
    iput-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mIsServiceContactSupported:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mIsServiceCalendarSupported:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    .line 732
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 745
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$3;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->removeAccountOnClick:Landroid/view/View$OnClickListener;

    .line 751
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$4;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->syncAccountOnClick:Landroid/view/View$OnClickListener;

    .line 762
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$5;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->preferenceChangeOnChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 784
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    return-void
.end method

.method private CheckSyncButton()V
    .locals 8

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 559
    .local v0, count:I
    const/4 v1, 0x1

    .line 560
    .local v1, disableSyncButton:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 562
    .local v3, pref:Landroid/preference/Preference;
    instance-of v5, v3, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    if-eqz v5, :cond_2

    move-object v4, v3

    .line 563
    check-cast v4, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    .line 564
    .local v4, syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    invoke-virtual {v4}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 565
    const/4 v1, 0x0

    .line 570
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    :cond_0
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_1

    .line 571
    const-string v5, "HuxSyncSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckSyncButton count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "disableSyncButton="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_1
    if-eqz v1, :cond_3

    .line 573
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 577
    :goto_1
    return-void

    .line 560
    .restart local v3       #pref:Landroid/preference/Preference;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/huxservice/HuxSyncSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/android/mail/huxservice/HuxSyncSettings;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAvailableSyncAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/huxservice/HuxSyncSettings;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    return-void
.end method

.method private addAdditionalPreferences(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 323
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 325
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, v6}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->setFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    return-void

    .line 329
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v5, 0x0

    .line 336
    new-instance v0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, p2}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 338
    .local v0, item:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 349
    const v2, 0x7f0b031e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "mail"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v0, p2}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method private checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"
    .parameter "list"

    .prologue
    const/4 v2, 0x0

    .line 648
    if-eqz p3, :cond_0

    array-length v3, p3

    if-nez v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v2

    .line 651
    :cond_1
    array-length v1, p3

    .line 652
    .local v1, size:I
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HuxSyncSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkActive :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authority:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 654
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "HuxSyncSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiActive :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_3
    aget-object v3, p3, v0

    if-eqz v3, :cond_4

    aget-object v3, p3, v0

    iget-object v3, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/accounts/Account;

    aget-object v4, p3, v0

    iget-object v4, v4, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 657
    const/4 v2, 0x1

    goto :goto_0

    .line 653
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getStrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 240
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 241
    .local v4, sec:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 242
    const v5, 0x7f0b00b9

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    .end local v4           #sec:I
    .end local p1
    :goto_0
    return-object p1

    .line 243
    .restart local v4       #sec:I
    .restart local p1
    :cond_0
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 244
    const v5, 0x7f0b02e8

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_1
    div-int/lit8 v3, v4, 0x3c

    .line 247
    .local v3, min:I
    div-int/lit8 v2, v3, 0x3c

    .line 248
    .local v2, hr:I
    div-int/lit8 v0, v2, 0x18

    .line 249
    .local v0, day:I
    if-ne v0, v6, :cond_2

    .line 250
    const v5, 0x7f0b0186

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 251
    :cond_2
    if-lez v2, :cond_4

    .line 252
    if-ne v2, v6, :cond_3

    .line 253
    const v5, 0x7f0b0325

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 255
    :cond_3
    const v5, 0x7f0b0326

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_4
    if-ne v3, v6, :cond_5

    .line 257
    const v5, 0x7f0b0324

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 259
    :cond_5
    const v5, 0x7f0b0327

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 260
    .end local v0           #day:I
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #sec:I
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 166
    if-eqz p3, :cond_0

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .parameter "startSync"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 628
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 630
    .local v4, pref:Landroid/preference/Preference;
    instance-of v6, v4, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 628
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 633
    check-cast v5, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    .line 634
    .local v5, syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    invoke-virtual {v5}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 640
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 641
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

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

    .line 642
    .local v0, authority:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    invoke-direct {p0, v6, v0, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 645
    .end local v0           #authority:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setFromCursor(Landroid/database/Cursor;)V
    .locals 13
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 266
    const-string v12, "refresh_when_open"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    .line 267
    .local v4, refresh:I
    const-string v12, "plugin_pkg_name"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, pkgName:Ljava/lang/String;
    iput-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPluinPackageName:Ljava/lang/String;

    .line 270
    :try_start_0
    const-string v12, "update_secs_res_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, resName:Ljava/lang/String;
    const-string v12, "sync_interval"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, interval:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 273
    .local v5, res:Landroid/content/res/Resources;
    if-ltz v4, :cond_0

    .line 274
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 275
    .local v2, item:Landroid/preference/CheckBoxPreference;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 276
    const v12, 0x7f0b0261

    invoke-virtual {v2, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 277
    const v12, 0x7f0b0323

    invoke-virtual {v2, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 278
    if-ne v4, v10, :cond_2

    :goto_0
    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    const-string v10, "refresh_when_open"

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2           #item:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v10, "update_intent_action"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 287
    .local v7, strIntent:Ljava/lang/String;
    const/4 v8, 0x0

    .line 289
    .local v8, updateIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 293
    :goto_1
    if-eqz v8, :cond_1

    .line 294
    :try_start_2
    new-instance v9, Landroid/preference/Preference;

    invoke-direct {v9, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    .local v9, updateItem:Landroid/preference/Preference;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 296
    const-string v10, "sync_interval"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 297
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->preferenceChangeOnChange:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    const v10, 0x7f0b025f

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 299
    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getStrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    const-string v10, "account_name"

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 302
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 309
    .end local v1           #interval:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #resName:Ljava/lang/String;
    .end local v7           #strIntent:Ljava/lang/String;
    .end local v8           #updateIntent:Landroid/content/Intent;
    .end local v9           #updateItem:Landroid/preference/Preference;
    :cond_1
    :goto_2
    return-void

    .restart local v1       #interval:Ljava/lang/String;
    .restart local v2       #item:Landroid/preference/CheckBoxPreference;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #resName:Ljava/lang/String;
    :cond_2
    move v10, v11

    .line 278
    goto :goto_0

    .line 290
    .end local v2           #item:Landroid/preference/CheckBoxPreference;
    .restart local v7       #strIntent:Ljava/lang/String;
    .restart local v8       #updateIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 306
    .end local v0           #e:Ljava/net/URISyntaxException;
    .end local v1           #interval:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #resName:Ljava/lang/String;
    .end local v7           #strIntent:Ljava/lang/String;
    .end local v8           #updateIntent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 307
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private setSyncButtonText(Z)V
    .locals 2
    .parameter "syncNow"

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    const v1, 0x7f0b0260

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    const v1, 0x7f0b0263

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 18
    .parameter "accounts"

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v11

    .line 376
    .local v11, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 377
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    array-length v9, v11

    .local v9, n:I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 378
    aget-object v10, v11, v6

    .line 379
    .local v10, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 380
    iget-object v14, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 381
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v14, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v14, :cond_1

    .line 386
    const-string v14, "HuxSyncSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onAccountUpdated: added authority "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to accountType "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    iget-object v14, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    .end local v10           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_2
    if-ge v6, v9, :cond_4

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/preference/Preference;

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 408
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 420
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    if-eqz v14, :cond_a

    .line 421
    const/4 v7, 0x0

    .local v7, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, m:I
    :goto_3
    if-ge v7, v8, :cond_7

    .line 422
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    .local v3, authority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    invoke-static {v14, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v12

    .line 425
    .local v12, syncState:I
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v14, :cond_5

    const-string v14, "HuxSyncSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  found authority "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_5
    if-lez v12, :cond_6

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 421
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 431
    .end local v3           #authority:Ljava/lang/String;
    .end local v12           #syncState:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mIsServiceContactSupported:Z

    if-eqz v14, :cond_8

    .line 432
    new-instance v5, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 433
    .local v5, contactItem:Landroid/preference/CheckBoxPreference;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 434
    const v14, 0x7f0b031e

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "contact"

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 435
    .local v13, title:Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    const-string v14, "contact"

    invoke-virtual {v5, v14}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v5           #contactItem:Landroid/preference/CheckBoxPreference;
    .end local v13           #title:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mIsServiceCalendarSupported:Z

    if-eqz v14, :cond_9

    .line 442
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v14}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 443
    .local v4, calendarItem:Landroid/preference/CheckBoxPreference;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 444
    const v14, 0x7f0b031e

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "calendar"

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 445
    .restart local v13       #title:Ljava/lang/String;
    invoke-virtual {v4, v13}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    const-string v14, "calendar"

    invoke-virtual {v4, v14}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v4           #calendarItem:Landroid/preference/CheckBoxPreference;
    .end local v13           #title:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->addAdditionalPreferences(Landroid/accounts/Account;)V

    .line 453
    .end local v7           #j:I
    .end local v8           #m:I
    :cond_a
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "prefs"

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 358
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 359
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 360
    const-string v2, "account"

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 8
    .parameter "accountType"

    .prologue
    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, prefs:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    const/4 v2, 0x0

    .line 466
    .local v2, desc:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    move-object v2, v0

    .line 467
    if-eqz v2, :cond_0

    iget v5, v2, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v5, :cond_0

    .line 468
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 469
    .local v1, authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    iget v6, v2, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 476
    .end local v1           #authContext:Landroid/content/Context;
    .end local v2           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v4

    .line 472
    .restart local v2       #desc:Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v3

    .line 473
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "HuxSyncSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 514
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 515
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 523
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 516
    :catch_0
    move-exception v2

    .line 518
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HuxSyncSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 520
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "HuxSyncSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon resource not found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 492
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 493
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 498
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HuxSyncSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label for account type , type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 530
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 532
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 534
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 537
    .local v1, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 538
    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 540
    :cond_1
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->addPreferencesFromResource(I)V

    .line 542
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #prefs:Landroid/preference/PreferenceScreen;
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    .line 112
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    .line 113
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->setContentView(I)V

    .line 114
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->addPreferencesFromResource(I)V

    .line 115
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    const v2, 0x7f0b02cf

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->removeAccountOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->syncAccountOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->setSyncButtonText(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    .line 129
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 130
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "HuxSyncSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v2, v4, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 137
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->updateAuthDescriptions()V

    .line 138
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 139
    return-void

    :cond_2
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0b02cf

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 591
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0321

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0320

    new-instance v3, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 622
    :cond_0
    :goto_0
    return-object v0

    .line 617
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 618
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 163
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mStatusChangeListenerHandler:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 177
    instance-of v9, p2, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    if-eqz v9, :cond_5

    move-object v8, p2

    .line 178
    check-cast v8, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    .line 179
    .local v8, syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 181
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 182
    .local v6, syncAutomatically:Z
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 183
    const/4 v9, 0x1

    invoke-direct {p0, v0, v1, v9}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 209
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .line 234
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v6           #syncAutomatically:Z
    .end local v8           #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    .end local p2
    :goto_1
    return v9

    .line 185
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v6       #syncAutomatically:Z
    .restart local v8       #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    .restart local p2
    :cond_1
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v7

    .line 186
    .local v7, syncOn:Z
    if-eqz v7, :cond_4

    .line 187
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncButton:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    :goto_2
    move v4, v6

    .line 192
    .local v4, oldSyncState:Z
    if-eq v7, v4, :cond_0

    .line 194
    invoke-static {v0, v1, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 198
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v7, :cond_3

    .line 199
    :cond_2
    invoke-direct {p0, v0, v1, v7}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 202
    :cond_3
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "type"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "authority"

    invoke-virtual {v8}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "state"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    const-string v10, "intent_extra"

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    .end local v4           #oldSyncState:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->CheckSyncButton()V

    goto :goto_2

    .line 210
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v6           #syncAutomatically:Z
    .end local v7           #syncOn:Z
    .end local v8           #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    :cond_5
    instance-of v9, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_8

    move-object v8, p2

    .line 211
    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 212
    .local v8, syncPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, prefKey:Ljava/lang/String;
    const-string v9, "contact"

    if-ne v5, v9, :cond_7

    .line 221
    .end local p2
    :cond_6
    :goto_3
    const/4 v9, 0x1

    goto :goto_1

    .line 216
    .restart local p2
    :cond_7
    const-string v9, "calendar"

    if-eq v5, v9, :cond_6

    .line 217
    const-string v9, "refresh_when_open"

    if-ne v5, v9, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 224
    .end local v5           #prefKey:Ljava/lang/String;
    .end local v8           #syncPref:Landroid/preference/CheckBoxPreference;
    .restart local p2
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 225
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_9

    .line 226
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;

    const-string v11, "no_new_task"

    invoke-virtual {v9, v10, v11}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, no_new_task:Ljava/lang/String;
    const-string v9, "true"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 229
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, -0x10000001

    and-int/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 231
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 234
    .end local v3           #no_new_task:Ljava/lang/String;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 144
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mStatusChangeListenerHandler:Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onSyncStateUpdated()V

    .line 150
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->CheckSyncButton()V

    .line 151
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 30

    .prologue
    .line 664
    const/16 v22, 0x0

    .line 665
    .local v22, syncNow:Z
    const/16 v21, 0x0

    .line 668
    .local v21, syncIsFailing:Z
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 669
    .local v9, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Landroid/content/SyncInfo;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/SyncInfo;

    .line 672
    .local v14, multiSync:[Landroid/content/SyncInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAvailableSyncAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 674
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    .line 675
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 677
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, count:I
    :goto_0
    if-ge v10, v8, :cond_10

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 679
    .local v16, pref:Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 677
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v23, v16

    .line 682
    check-cast v23, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    .line 683
    .local v23, syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 685
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 687
    .local v17, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    .line 688
    .local v20, syncEnabled:Z
    if-nez v17, :cond_6

    const/4 v5, 0x0

    .line 689
    .local v5, authorityIsPending:Z
    :goto_2
    if-nez v17, :cond_7

    const/4 v11, 0x0

    .line 690
    .local v11, initialSync:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v3

    .line 691
    .local v3, activelySyncing:Z
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v12, 0x1

    .line 695
    .local v12, lastSyncFailed:Z
    :goto_4
    if-nez v20, :cond_1

    .line 696
    const/4 v12, 0x0

    .line 697
    :cond_1
    if-eqz v12, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 698
    const/16 v21, 0x1

    .line 700
    :cond_2
    sget-boolean v26, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v26, :cond_3

    const-string v26, "HuxSyncSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_3
    if-nez v17, :cond_9

    const-wide/16 v18, 0x0

    .line 705
    .local v18, successEndTime:J
    :goto_5
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_a

    .line 706
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 707
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 709
    .local v25, timeString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 713
    .end local v25           #timeString:Ljava/lang/String;
    :goto_6
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 714
    .local v24, syncState:I
    if-eqz v3, :cond_b

    if-ltz v24, :cond_b

    if-nez v11, :cond_b

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 715
    if-eqz v5, :cond_c

    if-ltz v24, :cond_c

    if-nez v11, :cond_c

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 717
    if-eqz v3, :cond_d

    if-ltz v24, :cond_d

    if-nez v11, :cond_d

    const/16 v26, 0x1

    :goto_9
    or-int v22, v22, v26

    .line 718
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 719
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 720
    .local v7, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v13

    .line 721
    .local v13, masterSyncAutomatically:Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 722
    .local v6, backgroundDataEnabled:Z
    if-eqz v13, :cond_4

    if-nez v6, :cond_e

    :cond_4
    const/4 v15, 0x1

    .line 723
    .local v15, oneTimeSyncMode:Z
    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 724
    if-nez v15, :cond_5

    if-eqz v20, :cond_f

    :cond_5
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 688
    .end local v3           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v11           #initialSync:Z
    .end local v12           #lastSyncFailed:Z
    .end local v13           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v18           #successEndTime:J
    .end local v24           #syncState:I
    :cond_6
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 689
    .restart local v5       #authorityIsPending:Z
    :cond_7
    move-object/from16 v0, v17

    iget-boolean v11, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 691
    .restart local v3       #activelySyncing:Z
    .restart local v11       #initialSync:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 703
    .restart local v12       #lastSyncFailed:Z
    :cond_9
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto/16 :goto_5

    .line 711
    .restart local v18       #successEndTime:J
    :cond_a
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 714
    .restart local v24       #syncState:I
    :cond_b
    const/16 v26, 0x0

    goto :goto_7

    .line 715
    :cond_c
    const/16 v26, 0x0

    goto :goto_8

    .line 717
    :cond_d
    const/16 v26, 0x0

    goto :goto_9

    .line 722
    .restart local v6       #backgroundDataEnabled:Z
    .restart local v7       #connManager:Landroid/net/ConnectivityManager;
    .restart local v13       #masterSyncAutomatically:Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_a

    .line 724
    .restart local v15       #oneTimeSyncMode:Z
    :cond_f
    const/16 v26, 0x0

    goto :goto_b

    .line 727
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #activelySyncing:Z
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v11           #initialSync:Z
    .end local v12           #lastSyncFailed:Z
    .end local v13           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v16           #pref:Landroid/preference/Preference;
    .end local v17           #status:Landroid/content/SyncStatusInfo;
    .end local v18           #successEndTime:J
    .end local v20           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v21, :cond_11

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->setSyncButtonText(Z)V

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->CheckSyncButton()V

    .line 730
    return-void

    .line 727
    :cond_11
    const/16 v26, 0x8

    goto :goto_c
.end method

.method protected updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 550
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 551
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onAuthDescriptionsUpdated()V

    .line 555
    return-void
.end method
