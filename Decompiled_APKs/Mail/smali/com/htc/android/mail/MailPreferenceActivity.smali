.class public Lcom/htc/android/mail/MailPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "MailPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;,
        Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;
    }
.end annotation


# static fields
.field public static final ACNT_CONFIG_REQUEST:I = 0x0

.field static final CANNOT_DELETE_WHILE_SYNC:I = 0x2

.field public static final CFG_RESULT_DELETE_ACCOUNT:I = 0x1

.field public static final CFG_RESULT_NEW_ACCOUNT:I = 0x4

.field public static final CFG_RESULT_REFRESH_MAIL:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DELETE_HUX_ACCT_ONSERVER_FAIL:I = 0xd

.field public static final DIALOG_NO_NETWORK_ACCESS:I = 0xe

.field public static final DIALOG_PROGRESS_DELETE_ACCOUNT:I = 0xb

.field public static final MSG_ACTIVITY_RESULT:I = 0xc

.field private static final MSG_DELETE_ACCOUNT_END:I = 0x3

.field public static final REQUEST_CODE_LOCK:I = 0x320

.field private static TAG:Ljava/lang/String;

.field public static isExchange:Z

.field public static isHUX:Z

.field public static isIMAP4:Z


# instance fields
.field private final DELETE_CONFIRM:I

.field private confirmDelAccountEvent:Landroid/content/DialogInterface$OnClickListener;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDelAccountHandler:Landroid/os/Handler;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorStatus:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCode:I

.field private mResultIntent:Landroid/content/Intent;

.field private mShowAccountInfoPerference:Z

.field private mShowDeleteAccountPerference:Z

.field private mUri:Landroid/net/Uri;

.field private m_id:J

.field private mbDeletingAccount:Z

.field preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private previewIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "MailPreferenceActivity"

    sput-object v0, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    .line 176
    sput-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isIMAP4:Z

    .line 177
    sput-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isExchange:Z

    .line 178
    sput-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isHUX:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 44
    iput-wide v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    .line 45
    iput-wide v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->m_id:J

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultIntent:Landroid/content/Intent;

    .line 64
    iput v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->DELETE_CONFIRM:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowDeleteAccountPerference:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    .line 77
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailPreferenceActivity$1;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailPreferenceActivity$8;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->confirmDelAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 428
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailPreferenceActivity$9;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mDelAccountHandler:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailPreferenceActivity$10;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1276(Lcom/htc/android/mail/MailPreferenceActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mDelAccountHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailPreferenceActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/MailPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailPreferenceActivity;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->deleteAcctOnDevice()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/MailPreferenceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/MailPreferenceActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/android/mail/MailPreferenceActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorCode:I

    return p1
.end method

.method static synthetic access$902(Lcom/htc/android/mail/MailPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private deleteAcctOnDevice()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 531
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->showDialog(I)V

    .line 532
    iput-boolean v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z

    .line 533
    iget-boolean v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    if-ne v1, v2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_info"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "receive_send"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 537
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "display_setting"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 538
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_delete_account"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 539
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "misc"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 540
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;I)V

    .line 541
    .local v0, deleteThread:Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;
    invoke-virtual {v0}, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->start()V

    .line 542
    return-void
.end method

.method private setupEnv()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 186
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_7

    .line 187
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pre id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_b

    .line 233
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v9, "bind null url>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    .line 266
    :cond_4
    :goto_2
    iget-boolean v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowDeleteAccountPerference:Z

    if-eqz v8, :cond_0

    .line 267
    :cond_5
    iget-wide v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    invoke-static {p0, v8, v9}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 268
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->getYesIDAccountInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, yesAccount:[Ljava/lang/String;
    if-eqz v0, :cond_0

    aget-object v8, v7, v10

    if-eqz v8, :cond_0

    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 277
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v9, "PreferenceCategory_title"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceCategory;

    .line 278
    .local v2, category:Lcom/htc/preference/HtcPreferenceCategory;
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v9, "account_info"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 279
    .local v5, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 280
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 281
    iput-boolean v10, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    .line 285
    :cond_6
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v9, "account_detail_delete_account"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 286
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 288
    iput-boolean v10, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowDeleteAccountPerference:Z

    goto/16 :goto_0

    .line 193
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v2           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v5           #preference:Lcom/htc/preference/HtcPreference;
    .end local v7           #yesAccount:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "account"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 194
    .local v6, syncAccount:Landroid/accounts/Account;
    if-eqz v6, :cond_8

    .line 196
    iput-boolean v10, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowDeleteAccountPerference:Z

    .line 199
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v11, "account_detail_delete_account"

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 201
    .restart local v5       #preference:Lcom/htc/preference/HtcPreference;
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 206
    iput-boolean v10, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    .line 207
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v11, "account_info"

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 209
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 214
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p0, v6}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 215
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_8

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/accounts/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    .line 220
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #preference:Lcom/htc/preference/HtcPreference;
    :cond_8
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_2

    .line 221
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v3

    .line 222
    .local v3, defaultAccountId:J
    const-wide/16 v11, 0x0

    cmp-long v8, v3, v11

    if-gez v8, :cond_a

    .line 223
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "defaultAccountId empty >"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto/16 :goto_0

    .line 227
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/accounts/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 237
    .end local v3           #defaultAccountId:J
    .end local v6           #syncAccount:Landroid/accounts/Account;
    :cond_b
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    .line 238
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAccountId>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_c
    iget-wide v11, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    invoke-static {v11, v12}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    .line 240
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v8, :cond_d

    .line 241
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto/16 :goto_0

    .line 244
    :cond_d
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v8, :cond_e

    .line 245
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_f

    move v8, v9

    :goto_3
    sput-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->isExchange:Z

    .line 246
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    const/4 v11, 0x6

    if-ne v8, v11, :cond_10

    move v8, v9

    :goto_4
    sput-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->isHUX:Z

    .line 248
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/MailPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->isHUX:Z

    if-ne v8, v9, :cond_e

    .line 251
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v9, "receive_send"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    const v9, 0x7f0b0038

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 252
    iget-object v8, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v9, "receive_send"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    const v9, 0x7f0b016d

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 256
    :cond_e
    sget-boolean v8, Lcom/htc/android/mail/MailPreferenceActivity;->isExchange:Z

    if-eqz v8, :cond_4

    .line 257
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/android/mail/MailPreferenceActivity$2;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/MailPreferenceActivity$2;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_f
    move v8, v10

    .line 245
    goto :goto_3

    :cond_10
    move v8, v10

    .line 246
    goto :goto_4
.end method

.method private setupListener()V
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "account_info"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailPreferenceActivity$3;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "receive_send"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailPreferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailPreferenceActivity$4;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "display_setting"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailPreferenceActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailPreferenceActivity$5;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 351
    iget-boolean v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mShowDeleteAccountPerference:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "account_detail_delete_account"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailPreferenceActivity$6;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailPreferenceActivity$6;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "misc"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailPreferenceActivity$7;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailPreferenceActivity$7;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 371
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    .line 128
    if-nez p1, :cond_4

    .line 129
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 130
    iget v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    .line 131
    iget v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailPreferenceActivity;->setResult(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 133
    if-eqz p3, :cond_3

    .line 134
    const-string v3, "accountId"

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 135
    .local v0, accountId:J
    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto :goto_0

    .line 139
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 140
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    iget v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    .line 142
    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultIntent:Landroid/content/Intent;

    const-string v4, "accountId"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    iget v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultCode:I

    iget-object v4, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/MailPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 146
    .end local v0           #accountId:J
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto :goto_0

    .line 149
    :cond_4
    const/16 v3, 0x320

    if-ne p1, v3, :cond_0

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mDelAccountHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    .line 110
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailPreferenceActivity;->addPreferencesFromResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 114
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v3, 0x7f0b0291

    const v6, 0x7f0b008e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 479
    sparse-switch p1, :sswitch_data_0

    .line 507
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 481
    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->confirmDelAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 489
    :sswitch_1
    new-instance v0, Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setAutoDismiss(Z)V

    .line 491
    sget-object v1, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    goto :goto_0

    .line 494
    .end local v0           #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    :sswitch_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0336

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 500
    :sswitch_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 512
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 513
    sget-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/MailPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPrepareDialog()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 528
    .end local p2
    :goto_0
    return-void

    .line 517
    .restart local p2
    :pswitch_0
    iget v1, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I

    if-gez v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorMessage:Ljava/lang/String;

    .line 524
    .local v0, error:Ljava/lang/String;
    :goto_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 522
    .end local v0           #error:Ljava/lang/String;
    .restart local p2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_1

    .line 514
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 165
    iget-wide v0, p0, Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->setupEnv()V

    .line 173
    invoke-direct {p0}, Lcom/htc/android/mail/MailPreferenceActivity;->setupListener()V

    goto :goto_0
.end method
