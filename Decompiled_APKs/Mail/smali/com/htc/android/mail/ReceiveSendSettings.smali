.class public Lcom/htc/android/mail/ReceiveSendSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "ReceiveSendSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final PEAK_SETTING_REQUEST:I = 0xa

.field private static del_cb:Lcom/htc/preference/HtcCheckBoxPreference;


# instance fields
.field private final DIALOG_FOLDER_SYNC:I

.field TAG:Ljava/lang/String;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mFolderSyncPref:Lcom/htc/preference/HtcPreferenceScreen;

.field private mIsAccountExists:Z

.field private mIsNullAccount:Z

.field private mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field preferenceScreen_send:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 55
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ReceiveSendSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 42
    const-string v0, "ReceiveSendSettings"

    iput-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->TAG:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 50
    iput v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->DIALOG_FOLDER_SYNC:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;

    .line 57
    iput-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    .line 58
    iput-boolean v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 59
    iput-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsNullAccount:Z

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getFolderSyncPreferenceSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/ReceiveSendSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/ReceiveSendSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReceiveSendSettings;->updateAccountDetailFetchMailByDaySummary(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->updateAccount()V

    return-void
.end method

.method private addPreferenceToReceiveSetting()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->hasSettingSyncDeleteditemsFromServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 264
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 265
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 266
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "PreferenceCategory_title"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 268
    :cond_0
    return-void
.end method

.method private final bind()V
    .locals 10

    .prologue
    const v9, 0x7f0b01f2

    const/4 v8, 0x0

    const v6, 0x7f0b01f3

    const/4 v7, 0x1

    .line 415
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mFolderSyncPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getFolderSyncPreferenceSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, p0}, Lcom/htc/android/mail/Account;->getFetchMailNumIndex(Landroid/content/Context;)I

    move-result v3

    .line 419
    .local v3, fetchMailNum:I
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, p0}, Lcom/htc/android/mail/Account;->getFetchMailDaysIndex(Landroid/content/Context;)I

    move-result v2

    .line 421
    .local v2, fetchMailDays:I
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->supportDualFetchMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 422
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, p0}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    .line 423
    invoke-direct {p0, v3}, Lcom/htc/android/mail/ReceiveSendSettings;->updateAccountDetailFetchMailByNumSummary(I)V

    .line 431
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v4

    if-nez v4, :cond_4

    .line 432
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->hasSettingAlwaysBccMe()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, bNewChk:Z
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v4, :cond_0

    .line 436
    new-instance v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v4, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 437
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const v5, 0x7f0b00ca

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v1, 0x1

    .line 441
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->alwaysbccMyself()I

    move-result v4

    if-lez v4, :cond_a

    .line 442
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 443
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 452
    if-eqz v1, :cond_1

    .line 453
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "PreferenceCategory_title_send"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 458
    .end local v1           #bNewChk:Z
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->hasSettingDeleteMailOnServer()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    sget-boolean v4, Lcom/htc/android/mail/ReceiveSendSettings;->DEBUG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->TAG:Ljava/lang/String;

    const-string v5, "bind: not IMAP4"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->deleteFromServer()I

    move-result v4

    if-lez v4, :cond_b

    .line 461
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 462
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 467
    :goto_2
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 468
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 472
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v4

    if-lez v4, :cond_c

    .line 473
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 474
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    :goto_3
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 487
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->hasSettingSyncDeleteditemsFromServer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 489
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->syncWithServer()I

    move-result v4

    if-ne v4, v7, :cond_d

    .line 490
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 497
    :cond_5
    :goto_4
    sget-boolean v4, Lcom/htc/android/mail/ReceiveSendSettings;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "Jerry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "limit>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, p0}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_6
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_mailsize_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 500
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_mailsize_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 501
    .local v0, arrayStr:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_mailsize_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_mailsize_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    new-instance v5, Lcom/htc/android/mail/ReceiveSendSettings$9;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/ReceiveSendSettings$9;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 515
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getPollFrequencyLabels()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_poll_frequency_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v6, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Account;->getCheckFreqPosition(I)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v4

    if-nez v4, :cond_7

    .line 520
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 521
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_auto_download_message"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 526
    :cond_7
    :goto_5
    return-void

    .line 425
    .end local v0           #arrayStr:[Ljava/lang/CharSequence;
    :cond_8
    invoke-direct {p0, v2}, Lcom/htc/android/mail/ReceiveSendSettings;->updateAccountDetailFetchMailByDaySummary(I)V

    goto/16 :goto_0

    .line 428
    :cond_9
    invoke-direct {p0, v2}, Lcom/htc/android/mail/ReceiveSendSettings;->updateAccountDetailFetchMailByDaySummary(I)V

    goto/16 :goto_0

    .line 446
    .restart local v1       #bNewChk:Z
    :cond_a
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 447
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 464
    .end local v1           #bNewChk:Z
    :cond_b
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 465
    sget-object v4, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 477
    :cond_c
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 478
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_reply_with_text_value"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 492
    :cond_d
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 523
    .restart local v0       #arrayStr:[Ljava/lang/CharSequence;
    :cond_e
    iget-object v4, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "account_detail_auto_download_message"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method private final gatherValues()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 551
    iget-wide v6, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 553
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->hasSettingAlwaysBccMe()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setAlwaysbccMyself(I)V

    .line 557
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->hasSettingSyncDeleteditemsFromServer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mSyncWithServerPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setSyncWithServer(I)V

    .line 564
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_mailsize_value"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_mailsize_value"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, i:I
    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/Account;->setSizeLimitIndex(Landroid/content/Context;I)V

    .line 568
    invoke-static {p0, v0}, Lcom/htc/android/mail/MailCommon;->isInPeakTime(Landroid/content/Context;Lcom/htc/android/mail/Account;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 569
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, p0, v3}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 574
    :goto_2
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v3

    if-nez v3, :cond_2

    .line 576
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->hasSettingDeleteMailOnServer()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 577
    sget-object v3, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setDeleteFromServer(I)V

    .line 582
    :goto_4
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_reply_with_text_value"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 583
    invoke-virtual {v0, v4}, Lcom/htc/android/mail/Account;->setReplyWithText(I)V

    .line 588
    :goto_5
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_auto_download_message"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 589
    invoke-virtual {v0, v4}, Lcom/htc/android/mail/Account;->setDownloadMessageWhenScroll(Z)V

    .line 594
    :cond_2
    :goto_6
    return-void

    .end local v1           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 554
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 558
    goto :goto_1

    .line 571
    .restart local v1       #i:I
    .restart local v2       #str:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, p0, v3}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    goto :goto_2

    :cond_6
    move v3, v5

    .line 577
    goto :goto_3

    .line 579
    :cond_7
    invoke-virtual {v0, v4}, Lcom/htc/android/mail/Account;->setDeleteFromServer(I)V

    goto :goto_4

    .line 585
    :cond_8
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/Account;->setReplyWithText(I)V

    goto :goto_5

    .line 591
    :cond_9
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/Account;->setDownloadMessageWhenScroll(Z)V

    goto :goto_6
.end method

.method private getFolderSyncPreferenceSummary()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 161
    iget-object v6, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForSelectDefaultSync()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    .line 162
    .local v1, defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v1, :cond_1

    .line 163
    const/4 v4, 0x0

    .line 180
    :cond_0
    :goto_0
    return-object v4

    .line 165
    :cond_1
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v10

    .line 166
    .local v4, str:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    .local v0, count:Ljava/lang/Integer;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    .line 168
    .local v3, mailboxcount:I
    invoke-virtual {v1}, Lcom/htc/android/mail/Mailboxs;->getDefaultSyncEnabled()[Z

    move-result-object v5

    .line 170
    .local v5, summarySyncEnabled:[Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 171
    aget-boolean v6, v5, v2

    if-ne v6, v9, :cond_2

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v8, 0x7f0b00c0

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReceiveSendSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setupListener()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->supportDualFetchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "account_detail_fetch_type"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/ReceiveSendSettings$6;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReceiveSendSettings$6;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "account_detail_poll_frequency_value"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/ReceiveSendSettings$8;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReceiveSendSettings$8;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 403
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "hux_account_detail_download_days"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/ReceiveSendSettings$7;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReceiveSendSettings$7;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private final updateAccount()V
    .locals 4

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 598
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 599
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->gatherValues()V

    .line 601
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateAccountDetailFetchMailByDaySummary(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 303
    const-string v0, ""

    .line 304
    .local v0, summary:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->supportDualFetchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b00c4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_fetch_type"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    :goto_1
    return-void

    .line 306
    :pswitch_0
    const v1, 0x7f0b018d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    const v1, 0x7f0b018e

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    goto :goto_0

    .line 312
    :pswitch_2
    const v1, 0x7f0b018f

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    goto :goto_0

    .line 315
    :pswitch_3
    const v1, 0x7f0b0190

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    goto :goto_0

    .line 318
    :pswitch_4
    const v1, 0x7f0b0191

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_0

    .line 321
    :pswitch_5
    const v1, 0x7f0b0192

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and up to 100 messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "hux_account_detail_download_days"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "hux_account_detail_download_days"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateAccountDetailFetchMailByNumSummary(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 335
    const-string v0, ""

    .line 336
    .local v0, summary:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->supportDualFetchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b00c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_fetch_type"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    :goto_1
    return-void

    .line 338
    :pswitch_0
    const v1, 0x7f0b0187

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    goto :goto_0

    .line 341
    :pswitch_1
    const v1, 0x7f0b0188

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    goto :goto_0

    .line 344
    :pswitch_2
    const v1, 0x7f0b0189

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    goto :goto_0

    .line 347
    :pswitch_3
    const v1, 0x7f0b018a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    goto :goto_0

    .line 350
    :pswitch_4
    const v1, 0x7f0b018b

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    goto :goto_0

    .line 353
    :pswitch_5
    const v1, 0x7f0b018c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "hux_account_detail_download_days"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "hux_account_detail_download_days"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 407
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/ReceiveSendSettings;->setResult(I)V

    .line 408
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 68
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 69
    iput-boolean v7, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 70
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    .line 148
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    .line 75
    iget-wide v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    invoke-static {v5, v6}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    iput-boolean v7, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 77
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    goto :goto_0

    .line 81
    :cond_1
    iget-wide v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    .line 82
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 83
    :cond_2
    iput-boolean v7, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 84
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    goto :goto_0

    .line 89
    :cond_3
    const v5, 0x7f05001c

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReceiveSendSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 92
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->addPreferenceToReceiveSetting()V

    .line 94
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->supportDualFetchMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 95
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_fetch_type"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 96
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_4

    .line 97
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 108
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_auto_download_message"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 109
    .local v0, autoDownloadPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_5

    .line 110
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title_send"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 115
    .local v2, sendSettingPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_6

    .line 116
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 119
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "hux_unified_settings_verbiage"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 120
    .local v3, textPreference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 121
    new-instance v5, Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;Lcom/htc/android/mail/ReceiveSendSettings$1;)V

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V

    .line 139
    .end local v0           #autoDownloadPreference:Lcom/htc/preference/HtcPreference;
    .end local v2           #sendSettingPreference:Lcom/htc/preference/HtcPreference;
    .end local v3           #textPreference:Lcom/htc/preference/HtcPreference;
    :cond_7
    :goto_2
    const-string v5, "account_folder_to_sync"

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReceiveSendSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mFolderSyncPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 140
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mFolderSyncPref:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v6, Lcom/htc/android/mail/ReceiveSendSettings$1;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/ReceiveSendSettings$1;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->bind()V

    goto/16 :goto_0

    .line 101
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_8
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "hux_account_detail_download_days"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 102
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_4

    .line 103
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 124
    :cond_9
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "hux_unified_settings_verbiage"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_a

    .line 126
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    :cond_a
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->hasSettingDeleteMailOnServer()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 130
    sget-boolean v5, Lcom/htc/android/mail/ReceiveSendSettings;->DEBUG:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->TAG:Ljava/lang/String;

    const-string v6, "onCreate: not IMAP4"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_b
    new-instance v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 132
    sget-object v5, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    const v6, 0x7f0b00bb

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 134
    iget-object v5, p0, Lcom/htc/android/mail/ReceiveSendSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "PreferenceCategory_title_send"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    sget-object v6, Lcom/htc/android/mail/ReceiveSendSettings;->del_cb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForSelectDefaultSync()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    .line 188
    .local v0, defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;
    if-eqz v0, :cond_0

    .line 191
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00bf

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/android/mail/Mailboxs;->getDefaultSyncEnabled()[Z

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/ReceiveSendSettings$5;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/mail/ReceiveSendSettings$5;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;Lcom/htc/android/mail/Mailboxs;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0291

    new-instance v4, Lcom/htc/android/mail/ReceiveSendSettings$4;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ReceiveSendSettings$4;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    new-instance v4, Lcom/htc/android/mail/ReceiveSendSettings$3;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ReceiveSendSettings$3;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/mail/ReceiveSendSettings$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/ReceiveSendSettings$2;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 255
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 536
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 540
    iget-boolean v0, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReceiveSendSettings$10;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReceiveSendSettings$10;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 547
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 276
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 277
    iput-boolean v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 278
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    .line 300
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    .line 283
    iget-wide v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iput-boolean v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 285
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    goto :goto_0

    .line 289
    :cond_1
    iget-wide v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    .line 290
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 291
    :cond_2
    iput-boolean v3, p0, Lcom/htc/android/mail/ReceiveSendSettings;->mIsAccountExists:Z

    .line 292
    invoke-virtual {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->finish()V

    goto :goto_0

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->bind()V

    .line 299
    invoke-direct {p0}, Lcom/htc/android/mail/ReceiveSendSettings;->setupListener()V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 0

    .prologue
    .line 530
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 532
    return-void
.end method
