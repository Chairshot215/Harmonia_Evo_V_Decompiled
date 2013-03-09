.class public Lcom/google/android/finsky/activities/WebViewDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "WebViewDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/WebViewDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f0700d1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/WebViewDialog;->setTitle(I)V

    .line 32
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/WebViewDialog;->setContentView(I)V

    .line 34
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/WebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 35
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    return-void
.end method
