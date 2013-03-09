.class public Lcom/htc/android/mail/MiscSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "MiscSettings.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field TAG:Ljava/lang/String;

.field private mAccountId:J

.field preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MiscSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 70
    const-string v0, "MiscSettings"

    iput-object v0, p0, Lcom/htc/android/mail/MiscSettings;->TAG:Ljava/lang/String;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MiscSettings;->saveAccountNotify(Lcom/htc/android/mail/Account;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MiscSettings;->saveAccountVibrate(Lcom/htc/android/mail/Account;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MiscSettings;->saveAccountSound(Lcom/htc/android/mail/Account;Z)V

    return-void
.end method

.method private final bind()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b01f3

    const v3, 0x7f0b01f2

    .line 123
    iget-wide v1, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 125
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->showEmailNotifications()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 127
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v2, Lcom/htc/android/mail/MiscSettings$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MiscSettings$1;-><init>(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 149
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->vibrate()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v2, Lcom/htc/android/mail/MiscSettings$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MiscSettings$2;-><init>(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 173
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->sound()I

    move-result v1

    if-lez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v2, Lcom/htc/android/mail/MiscSettings$3;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MiscSettings$3;-><init>(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 195
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_email_notifications"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_sound"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MiscSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private saveAccountNotify(Lcom/htc/android/mail/Account;Z)V
    .locals 1
    .parameter "account"
    .parameter "ask"

    .prologue
    .line 106
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/Account;->setEmailNotifications(I)V

    .line 107
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 108
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveAccountSound(Lcom/htc/android/mail/Account;Z)V
    .locals 1
    .parameter "account"
    .parameter "ask"

    .prologue
    .line 116
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/Account;->setSound(I)V

    .line 117
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveAccountVibrate(Lcom/htc/android/mail/Account;Z)V
    .locals 1
    .parameter "account"
    .parameter "ask"

    .prologue
    .line 111
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/Account;->setVibrate(I)V

    .line 112
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->finish()V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    .line 93
    iget-wide v1, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->finish()V

    goto :goto_0

    .line 99
    :cond_1
    const v1, 0x7f050017

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MiscSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 102
    invoke-direct {p0}, Lcom/htc/android/mail/MiscSettings;->bind()V

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 3

    .prologue
    .line 199
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 202
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->finish()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    .line 208
    iget-wide v1, p0, Lcom/htc/android/mail/MiscSettings;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/htc/android/mail/MiscSettings;->finish()V

    goto :goto_0

    .line 214
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/MiscSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings;->TAG:Ljava/lang/String;

    const-string v2, "# do register"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 221
    sget-boolean v0, Lcom/htc/android/mail/MiscSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MiscSettings;->TAG:Ljava/lang/String;

    const-string v1, "# un register"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method
