.class public Lcom/coremobility/app/vnotes/SM_TwitterLogin;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->requestWindowFeature(I)Z

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setContentView(I)V

    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/coremobility/app/vnotes/kp;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/kp;-><init>(Lcom/coremobility/app/vnotes/SM_TwitterLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "auth_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
