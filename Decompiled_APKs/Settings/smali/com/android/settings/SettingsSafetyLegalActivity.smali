.class public Lcom/android/settings/SettingsSafetyLegalActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsSafetyLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PROPERTY_LSAFETYLEGAL_URL:Ljava/lang/String; = "ro.url.safetylegal"


# instance fields
.field private mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsSafetyLegalActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0aa2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0aa3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 106
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v6, "ro.url.safetylegal"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, userSafetylegalUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 53
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, language:Ljava/lang/String;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, country:Ljava/lang/String;
    const-string v6, "locale=%s-%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, loc:Ljava/lang/String;
    const-string v6, "%s&%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 60
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    .line 63
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/android/settings/SettingsSafetyLegalActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SettingsSafetyLegalActivity$1;-><init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v4, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 84
    .local v4, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v6, 0x7f0c0aa4

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 85
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 86
    iput-boolean v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->setupAlert()V

    .line 88
    return-void

    .line 67
    .end local v4           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 141
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
