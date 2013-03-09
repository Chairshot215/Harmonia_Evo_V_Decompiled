.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

.field private mTextDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 129
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    .line 130
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsLicenseActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/SettingsLicenseActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    .line 228
    const v0, 0x7f0c0a9f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 231
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 193
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0a9e

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 198
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 199
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$2;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$3;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 222
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 223
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsLicenseActivity;->requestWindowFeature(I)Z

    .line 137
    const-string v5, "ro.config.license_path"

    const-string v6, "/system/etc/NOTICE.html.gz"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 176
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLicenseActivity;->setVisible(Z)V

    .line 148
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 149
    iget-object v5, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    .line 151
    new-instance v5, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 166
    const v5, 0x7f0c0a9e

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 167
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f0c0aa0

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 169
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-static {p0, v4, v1, v8, v7}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    .line 170
    .local v2, pd:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v2, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 171
    iput-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    .line 174
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 183
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 187
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;

    .line 189
    :cond_1
    return-void
.end method
