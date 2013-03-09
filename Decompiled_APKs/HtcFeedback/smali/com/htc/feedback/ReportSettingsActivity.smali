.class public Lcom/htc/feedback/ReportSettingsActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "ReportSettingsActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final BOTH_NETWORK_OPTION:Ljava/lang/String; = "both_network_option"

.field private static final CHECK_HTC_ERROR_LOG:Ljava/lang/String; = "check_htc_error_log"

.field private static final KEY_APPLICATION_LOG_ENABLE:Ljava/lang/String; = "application_log_enable"

.field private static final KEY_AUTO_SEND:Ljava/lang/String; = "auto_send_preference"

.field private static final KEY_ERROR_REPORT_ENABLE:Ljava/lang/String; = "error_report_enable"

.field private static final KEY_PREFER_NETWORK:Ljava/lang/String; = "network_preference"

.field private static final LOG:Z = false

.field private static final REQUEST_CODE_NETWORK:I = 0x3e9

.field private static final REQUEST_CODE_PRIVACY_AUTOSEND:I = 0x3e8

.field private static final REQUEST_CODE_PRIVACY_USAGE:I = 0x3eb

.field private static final REQUEST_CODE_REPORT:I = 0x3ea

.field private static final SHOW_HTC_APPLICATION_LOG:Ljava/lang/String; = "show_htc_application_log"

.field private static final TAG:Ljava/lang/String; = "ReportSettingsActivity"


# instance fields
.field mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

.field mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mErrorReporteDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNullPreference:Lcom/htc/preference/HtcPreference;

.field private mPreferNetworkDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

.field private mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

.field mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/htc/feedback/ReportSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/feedback/ReportSettingsActivity$1;-><init>(Lcom/htc/feedback/ReportSettingsActivity;)V

    iput-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReporteDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    new-instance v0, Lcom/htc/feedback/ReportSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/feedback/ReportSettingsActivity$2;-><init>(Lcom/htc/feedback/ReportSettingsActivity;)V

    iput-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/feedback/ReportSettingsActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/feedback/ReportSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/feedback/ReportSettingsActivity;->lockUI()V

    return-void
.end method

.method private initPreference()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 305
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 306
    .local v3, enableReport:Z
    const-string v5, "0"

    .line 307
    .local v5, preferNetwork:Ljava/lang/String;
    const-string v0, "0"

    .line 308
    .local v0, autoSend:Ljava/lang/String;
    const/4 v4, 0x0

    .line 310
    .local v4, enableUsageReport:Z
    :try_start_0
    const-string v8, "send_htc_error_report"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v3, v6

    .line 311
    :goto_0
    const-string v8, "htc_error_report_prefer_network"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    const-string v8, "htc_error_report_auto_send"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v8, "send_htc_application_log"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v4, v6

    .line 315
    :goto_1
    if-nez v5, :cond_0

    const-string v5, "0"

    .line 316
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 328
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 334
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 335
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v6, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 338
    invoke-direct {p0}, Lcom/htc/feedback/ReportSettingsActivity;->lockUI()V

    .line 339
    return-void

    :cond_2
    move v3, v7

    .line 310
    goto :goto_0

    :cond_3
    move v4, v7

    .line 313
    goto :goto_1

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ReportSettingsActivity"

    const-string v7, "error in initPreference"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    const/4 v3, 0x0

    .line 320
    const/4 v4, 0x0

    .line 321
    const-string v5, "0"

    .line 322
    const-string v0, "0"

    goto :goto_2
.end method

.method private lockUI()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 166
    .local v0, report:Z
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v3, :cond_2

    move v1, v2

    .line 167
    .local v1, usageReport:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 168
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 169
    return-void

    .line 166
    .end local v1           #usageReport:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    goto :goto_0
.end method

.method private logOptIn(Ljava/lang/String;)V
    .locals 5
    .parameter "opt"

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 227
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.htc.feedback"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "feedback_usageOpt"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "is_OptIn"

    invoke-interface {v2, v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 231
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 232
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ReportSettingsActivity"

    const-string v3, "log opt-in fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "setting"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v1, 0x1

    .line 59
    :goto_0
    return v1

    .line 54
    :cond_0
    const-string v2, "ReportSettingsActivity"

    const-string v3, "can\'t set value in setting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ReportSettingsActivity"

    const-string v3, "error in setting preference"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v1, 0x7d0

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 203
    if-ne p2, v1, :cond_0

    .line 204
    const-string v0, "htc_error_report_auto_send"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    .line 210
    if-ne p2, v1, :cond_2

    .line 211
    const-string v0, "send_htc_application_log"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    const-string v0, "true"

    invoke-direct {p0, v0}, Lcom/htc/feedback/ReportSettingsActivity;->logOptIn(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "false"

    invoke-direct {p0, v0}, Lcom/htc/feedback/ReportSettingsActivity;->logOptIn(Ljava/lang/String;)V

    .line 217
    const-string v0, "send_htc_application_log"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public onClickTosLink(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, privacyIntent:Landroid/content/Intent;
    const-string v1, "review_accepted_tos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/htc/feedback/ReportSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Lcom/htc/feedback/ReportSettingsActivity;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v5, "error_report_enable"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 96
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v5, "auto_send_preference"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    .line 97
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v5, "network_preference"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    .line 98
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v5, "application_log_enable"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 101
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, p0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    .line 102
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, p0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mNullPreference:Lcom/htc/preference/HtcPreference;

    .line 103
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f040003

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 104
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mNullPreference:Lcom/htc/preference/HtcPreference;

    const/high16 v5, 0x7f04

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 105
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/feedback/ReportSettingsActivity;->mNullPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "show_htc_application_log"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "application_log_category"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 113
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x92

    if-ne v3, v5, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "network_preference_category"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "both_network_option"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v5, "network_preference_category"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceGroup;

    .line 119
    .local v1, parent:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v1, :cond_2

    .line 120
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 121
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f06

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, entries:[Ljava/lang/String;
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, p0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;

    .line 123
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f070017

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 124
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 126
    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mWifiOnlyPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 130
    .end local v0           #entries:[Ljava/lang/String;
    .end local v1           #parent:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_2
    invoke-direct {p0}, Lcom/htc/feedback/ReportSettingsActivity;->initPreference()V

    .line 132
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "send_htc_application_log"

    invoke-static {v3, v5, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 134
    .local v2, usageReport:Z
    :goto_0
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 140
    :cond_3
    :goto_1
    return-void

    .end local v2           #usageReport:Z
    :cond_4
    move v2, v4

    .line 132
    goto :goto_0

    .line 137
    .restart local v2       #usageReport:Z
    :cond_5
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x1080027

    const/4 v2, 0x0

    .line 242
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 243
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c009c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070001

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070002

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    .line 251
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07001c

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReporteDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000a

    iget-object v3, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReporteDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 256
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 258
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, value:I
    move-object v2, p1

    .line 266
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 268
    .local v2, listPreference:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 299
    .end local p2
    :goto_0
    return v4

    .line 272
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_2

    .line 275
    if-nez v3, :cond_1

    .line 276
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/htc/feedback/ReportSettingsActivity;->showDialog(I)V

    move v4, v5

    .line 277
    goto :goto_0

    .line 279
    :cond_1
    const-string v5, "htc_error_report_prefer_network"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v6

    .line 283
    goto :goto_0

    .line 285
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_4

    .line 286
    if-nez v3, :cond_3

    .line 287
    const-string v4, "htc_error_report_auto_send"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    const-string v4, "check_htc_error_log"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/feedback/ReportSettingsActivity;->mAutoSendPreference:Lcom/htc/preference/HtcListPreference;

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v6

    .line 291
    goto :goto_0

    .line 293
    .end local v0           #entries:[Ljava/lang/CharSequence;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "display_error_report_tos"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    const/16 v4, 0x3e8

    invoke-virtual {p0, v1, v4}, Lcom/htc/feedback/ReportSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 296
    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v4, v5

    .line 299
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "HtcPreferenceScreen"
    .parameter "preference"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "send_htc_error_report"

    const-string v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/feedback/ReportSettingsActivity;->lockUI()V

    .line 193
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_1
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mUsageReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "read_exp_tos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v1, "false"

    invoke-direct {p0, v1}, Lcom/htc/feedback/ReportSettingsActivity;->logOptIn(Ljava/lang/String;)V

    .line 188
    const-string v1, "send_htc_application_log"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_htc_application_log"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 150
    .local v0, usageReport:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    :cond_0
    :goto_1
    return-void

    .end local v0           #usageReport:Z
    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    .restart local v0       #usageReport:Z
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/htc/feedback/ReportSettingsActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/ReportSettingsActivity;->mReviewTosLinkPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method
