.class public Lcom/s0up/goomanager/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# instance fields
.field Max:I

.field Min:I

.field private canGoBack:Ljava/lang/Boolean;

.field dialog:Landroid/app/ProgressDialog;

.field private downloadLink:Ljava/lang/String;

.field file:Ljava/io/File;

.field private fileMd5:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field private isDownloading:Ljava/lang/Boolean;

.field mWebView:Landroid/webkit/WebView;

.field notification:Landroid/app/Notification;

.field notificationId:I

.field notificationManager:Landroid/app/NotificationManager;

.field pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->isDownloading:Ljava/lang/Boolean;

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->canGoBack:Ljava/lang/Boolean;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->fileMd5:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->fileName:Ljava/lang/String;

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/s0up/goomanager/WebViewActivity;->Min:I

    .line 30
    const v0, 0x88b8

    iput v0, p0, Lcom/s0up/goomanager/WebViewActivity;->Max:I

    .line 40
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020006

    const-string v2, "Downloading file..."

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->notification:Landroid/app/Notification;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/WebViewActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/s0up/goomanager/WebViewActivity;->canGoBack:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->isDownloading:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->fileMd5:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->canGoBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 107
    invoke-virtual {p0}, Lcom/s0up/goomanager/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/WebViewActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/s0up/goomanager/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, ""

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    .line 51
    iget v3, p0, Lcom/s0up/goomanager/WebViewActivity;->Min:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/s0up/goomanager/WebViewActivity;->Max:I

    iget v7, p0, Lcom/s0up/goomanager/WebViewActivity;->Min:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/s0up/goomanager/WebViewActivity;->notificationId:I

    .line 52
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->dialog:Landroid/app/ProgressDialog;

    .line 53
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 56
    const-string v3, "goomanager"

    invoke-virtual {p0, v3, v8}, Lcom/s0up/goomanager/WebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "mHash"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, prefHash:Ljava/lang/String;
    const-string v3, "downloadLink"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "downloadLink"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const-string v3, "downloadLink"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    .line 61
    const-string v3, "fileMd5"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->fileMd5:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    iget-object v4, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->fileName:Ljava/lang/String;

    .line 63
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&hash="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    .line 66
    :cond_0
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 67
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/s0up/goomanager/WebViewActivity$1;

    invoke-direct {v4, p0}, Lcom/s0up/goomanager/WebViewActivity$1;-><init>(Lcom/s0up/goomanager/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 96
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 97
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object v3, p0, Lcom/s0up/goomanager/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity;->downloadLink:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&android=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    :cond_1
    return-void
.end method
