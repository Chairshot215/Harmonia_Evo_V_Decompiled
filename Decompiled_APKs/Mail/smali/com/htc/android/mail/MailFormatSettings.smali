.class public Lcom/htc/android/mail/MailFormatSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "MailFormatSettings.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field final MAX_LEN:I

.field TAG:Ljava/lang/String;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mExternalIndex:I

.field private mInternalIndex:I

.field private mIsAccountExists:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private sdsave:I

.field sigText:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 60
    const-string v0, "MailFormatSettings"

    iput-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mInternalIndex:I

    .line 63
    iput v3, p0, Lcom/htc/android/mail/MailFormatSettings;->mExternalIndex:I

    .line 65
    iput-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    .line 67
    iput-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    .line 70
    iput-boolean v3, p0, Lcom/htc/android/mail/MailFormatSettings;->mIsAccountExists:Z

    .line 71
    iget v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mInternalIndex:I

    iput v0, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    .line 124
    iput-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    .line 499
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/android/mail/MailFormatSettings;->MAX_LEN:I

    .line 615
    new-instance v0, Lcom/htc/android/mail/MailFormatSettings$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailFormatSettings$9;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MailFormatSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailFormatSettings;->saveAccountAskBeforeDelete(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailFormatSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailFormatSettings;->saveAccountRefreshMail(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailFormatSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->startSigEditor()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/android/mail/MailFormatSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/MailFormatSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailFormatSettings;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/MailFormatSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->update()V

    return-void
.end method

.method private final bind()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0b01f3

    const v9, 0x7f0b01f2

    .line 130
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getUseSignature()I

    move-result v6

    if-lez v6, :cond_4

    .line 132
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->askBeforeDelete()I

    move-result v6

    if-lez v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v7, Lcom/htc/android/mail/MailFormatSettings$1;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/MailFormatSettings$1;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_refresh_mail_when_open_folder"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    const v7, 0x7f0b00cf

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_refresh_mail_when_open_folder"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 192
    :goto_2
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_refresh_mail_when_open_folder"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v7, Lcom/htc/android/mail/MailFormatSettings$2;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/MailFormatSettings$2;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->isDefaultaccount()I

    move-result v6

    if-lez v6, :cond_7

    .line 204
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 216
    :goto_3
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_font_size_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getFontsize()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 226
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_font_size_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 227
    .local v0, arrayStr:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_font_size_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getFontsize()I

    move-result v7

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_font_size_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    new-instance v7, Lcom/htc/android/mail/MailFormatSettings$3;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/MailFormatSettings$3;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_mail_body_preview"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    .line 242
    .local v3, bodyPreview:Lcom/htc/preference/HtcListPreference;
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 243
    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 244
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v6

    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v6, Lcom/htc/android/mail/MailFormatSettings$4;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/MailFormatSettings$4;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 257
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sig>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 260
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    .line 264
    :goto_4
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailFormatSettings;->makeSigDisp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, stgDisplay:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_signature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_signature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    new-instance v7, Lcom/htc/android/mail/MailFormatSettings$5;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/MailFormatSettings$5;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 275
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v6

    iput v6, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    .line 276
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->update()V

    .line 277
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 278
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->hasSettingAlwaysBccMe()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, bNewChk:Z
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v6, :cond_1

    .line 281
    new-instance v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v6, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 282
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const v7, 0x7f0b00ca

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v2, 0x1

    .line 286
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->alwaysbccMyself()I

    move-result v6

    if-lez v6, :cond_9

    .line 287
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    :goto_5
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 297
    if-eqz v2, :cond_2

    .line 298
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "PreferenceCategory_title"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 303
    .end local v2           #bNewChk:Z
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 304
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_auto_download_message"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 309
    :goto_6
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v6

    if-lez v6, :cond_b

    .line 310
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 311
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    :goto_7
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 335
    :cond_3
    :goto_8
    return-void

    .line 138
    .end local v0           #arrayStr:[Ljava/lang/CharSequence;
    .end local v3           #bodyPreview:Lcom/htc/preference/HtcListPreference;
    .end local v5           #stgDisplay:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_useSignature_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_ask_before_delete_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 184
    :cond_6
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_refresh_mail_when_open_folder"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 211
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_default_account"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 262
    .restart local v0       #arrayStr:[Ljava/lang/CharSequence;
    .restart local v3       #bodyPreview:Lcom/htc/preference/HtcListPreference;
    :cond_8
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->getDefaultSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    goto/16 :goto_4

    .line 291
    .restart local v2       #bNewChk:Z
    .restart local v5       #stgDisplay:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 306
    .end local v2           #bNewChk:Z
    :cond_a
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_auto_download_message"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 314
    :cond_b
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 315
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailFormatSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 323
    :cond_c
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_detail_auto_download_message"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 324
    .local v1, autoDownloadPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_d

    .line 325
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "PreferenceCategory_title"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 329
    :cond_d
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "account_reply_with_text_value"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 330
    .local v4, replyTextPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v4, :cond_3

    .line 331
    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "PreferenceCategory_title"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_8
.end method

.method private makeSigDisp(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "src"

    .prologue
    const/16 v10, 0x32

    const/4 v9, 0x0

    .line 501
    if-nez p1, :cond_1

    .line 502
    const-string v2, ""

    .line 548
    :cond_0
    :goto_0
    return-object v2

    .line 503
    :cond_1
    move-object v2, p1

    .line 504
    .local v2, sigDisp:Ljava/lang/String;
    move-object v5, p1

    .line 505
    .local v5, str:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_2
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, index:I
    if-lez v0, :cond_b

    .line 511
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, sigDisp2:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp2>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, index2:I
    if-lez v1, :cond_9

    .line 516
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index2>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_4
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, sigDisp3:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp3>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 521
    const/16 v6, 0x1e

    if-le v1, v6, :cond_6

    .line 522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, 0x1

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    :goto_1
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, 0x1

    add-int/2addr v7, v1

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 529
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_8

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v7, v7, 0x19

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    :goto_2
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_8
    move-object v2, v5

    goto :goto_2

    .line 537
    .end local v4           #sigDisp3:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_a

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v7, v7, 0x19

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    :goto_3
    sget-boolean v6, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sigDisp b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :cond_a
    move-object v2, v5

    goto :goto_3

    .line 545
    .end local v1           #index2:I
    .end local v3           #sigDisp2:Ljava/lang/String;
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_0

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x19

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private saveAccountAskBeforeDelete(Z)V
    .locals 2
    .parameter "ask"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/Account;->setAskBeforeDelete(I)V

    .line 414
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveAccountRefreshMail(Z)V
    .locals 1
    .parameter "ask"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->setRefreshMailOpenFolder(Z)V

    .line 418
    return-void
.end method

.method private startSigEditor()V
    .locals 4

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    const-class v3, Lcom/htc/android/mail/signatureEditor;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, itent:Landroid/content/Intent;
    const-string v1, "sig"

    iget-object v2, p0, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailFormatSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 481
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 583
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_0

    .line 584
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailFormatSettings;->updateSDStatusWithPhoneStorage(Z)V

    .line 613
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isDeviceSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailFormatSettings;->updateSDStatusWithPhoneStorage(Z)V

    goto :goto_0

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->updateSDStatus()V

    goto :goto_0
.end method

.method private final updateAccount()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 421
    iget-wide v8, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    invoke-static {v8, v9}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 423
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_useSignature_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 424
    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setUseSignature(I)V

    .line 432
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_font_size_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_font_size_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 434
    .local v3, i:I
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setFontsize(I)V

    .line 436
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_enableSDsave_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 437
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_enableSDsave_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 438
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setEnableSDsave(I)V

    .line 440
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->supportUnifiedSettings()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->hasSettingAlwaysBccMe()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 443
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/Account;->setAlwaysbccMyself(I)V

    .line 446
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_detail_auto_download_message"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 447
    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setDownloadMessageWhenScroll(Z)V

    .line 452
    :goto_2
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "account_reply_with_text_value"

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v5, v6, :cond_5

    .line 453
    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setReplyWithText(I)V

    .line 458
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_mail_body_preview"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 459
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_mail_body_preview"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 460
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->setPreviewLineNum(I)V

    .line 462
    iget-object v5, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v6, "account_detail_default_account"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 463
    .local v2, defaultAccountChanged:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 465
    .local v1, c:Landroid/content/Context;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/htc/android/mail/MailFormatSettings$7;

    invoke-direct {v6, p0, v2, v1}, Lcom/htc/android/mail/MailFormatSettings$7;-><init>(Lcom/htc/android/mail/MailFormatSettings;Ljava/lang/Boolean;Landroid/content/Context;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 474
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailFormatSettings;->setResult(I)V

    .line 475
    return-void

    .line 426
    .end local v1           #c:Landroid/content/Context;
    .end local v2           #defaultAccountChanged:Ljava/lang/Boolean;
    .end local v3           #i:I
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v7}, Lcom/htc/android/mail/Account;->setUseSignature(I)V

    goto/16 :goto_0

    .restart local v3       #i:I
    .restart local v4       #str:Ljava/lang/String;
    :cond_3
    move v5, v7

    .line 443
    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {v0, v7}, Lcom/htc/android/mail/Account;->setDownloadMessageWhenScroll(Z)V

    goto :goto_2

    .line 455
    :cond_5
    invoke-virtual {v0, v7}, Lcom/htc/android/mail/Account;->setReplyWithText(I)V

    goto :goto_3
.end method

.method private updateSDStatus()V
    .locals 6

    .prologue
    .line 361
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iget v4, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 363
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 364
    .local v1, arrayStr:[Ljava/lang/CharSequence;
    const v3, 0x7f0b0174

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailFormatSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, SdUnavailable:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    const v3, 0x7f0b0176

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailFormatSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 379
    .local v2, dlg:Landroid/app/Dialog;
    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 381
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 382
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iget v4, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    iget v3, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    iget v4, p0, Lcom/htc/android/mail/MailFormatSettings;->mExternalIndex:I

    if-ne v3, v4, :cond_5

    .line 385
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mInternalIndex:I

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_3
    :goto_1
    return-void

    .line 370
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    const v3, 0x7f0b0175

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailFormatSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 389
    .restart local v2       #dlg:Landroid/app/Dialog;
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iget v4, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 395
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iget v4, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "account_detail_enableSDsave_value"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    new-instance v4, Lcom/htc/android/mail/MailFormatSettings$6;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/MailFormatSettings$6;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method private updateSDStatusWithPhoneStorage(Z)V
    .locals 3
    .parameter "deviceWithOnlyPhoneStorage"

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 557
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 563
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iget v2, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 565
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 566
    .local v0, arrayStr:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iget v2, p0, Lcom/htc/android/mail/MailFormatSettings;->sdsave:I

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    new-instance v2, Lcom/htc/android/mail/MailFormatSettings$8;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailFormatSettings$8;-><init>(Lcom/htc/android/mail/MailFormatSettings;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 579
    return-void

    .line 559
    .end local v0           #arrayStr:[Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 560
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_enableSDsave_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 485
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 486
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 487
    if-nez p3, :cond_1

    .line 488
    sget-boolean v1, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult<result ok,but data null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/mail/MailFormatSettings;->makeSigDisp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, stgDisplay:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_signature_value"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    sget-boolean v1, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v0           #stgDisplay:Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    const-string v2, "sig cancel"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    .line 97
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 99
    sget-boolean v1, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    const-string v2, "bind null url>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iput-boolean v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mIsAccountExists:Z

    .line 102
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->finish()V

    .line 123
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    .line 106
    sget-boolean v1, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAccountId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailFormatSettings;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-wide v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 111
    :cond_3
    iput-boolean v5, p0, Lcom/htc/android/mail/MailFormatSettings;->mIsAccountExists:Z

    .line 112
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->finish()V

    goto :goto_0

    .line 119
    :cond_4
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailFormatSettings;->addPreferencesFromResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 122
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/MailFormatSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 352
    sget-boolean v0, Lcom/htc/android/mail/MailFormatSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 354
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailFormatSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 346
    iget-boolean v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mIsAccountExists:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->updateAccount()V

    .line 349
    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 77
    iget-wide v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailFormatSettings;->mIsAccountExists:Z

    .line 79
    invoke-virtual {p0}, Lcom/htc/android/mail/MailFormatSettings;->finish()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailFormatSettings;->bind()V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 341
    return-void
.end method
