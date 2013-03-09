.class public Lcom/google/android/gm/GviewActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "GviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
    }
.end annotation


# instance fields
.field private mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GviewActivity;)Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/google/android/gm/GviewActivity;->requestWindowFeature(I)Z

    .line 85
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    .line 88
    .local v11, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 89
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 90
    invoke-virtual {v11, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {v11, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 92
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gm/GviewActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/GviewActivity$1;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 106
    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, account:Ljava/lang/String;
    const-string v0, "serverMessageId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, serverMessageId:Ljava/lang/String;
    const-string v0, "attId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, attachmentId:Ljava/lang/String;
    const-string v0, "mimeType"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_gview_url"

    const-string v2, "https://docs.google.com/viewer?embedded=true&a=v&pid=gmail&user=%s&thid=%s&attid=%s&mt=%s"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, pattern:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v12

    aput-object v10, v0, v4

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/gm/GviewActivity;->showDialog(I)V

    .line 119
    new-instance v0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    iget-object v4, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;-><init>(Lcom/google/android/gm/GviewActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 131
    if-ne p1, v3, :cond_0

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 138
    new-instance v1, Lcom/google/android/gm/GviewActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/gm/GviewActivity$2;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    .end local v0           #progressDialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0037

    new-instance v3, Lcom/google/android/gm/GviewActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/gm/GviewActivity$3;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialog ID in GviewActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 126
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onDestroy()V

    .line 127
    return-void
.end method
