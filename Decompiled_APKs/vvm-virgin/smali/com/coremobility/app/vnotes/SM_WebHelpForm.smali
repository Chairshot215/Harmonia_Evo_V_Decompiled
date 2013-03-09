.class public Lcom/coremobility/app/vnotes/SM_WebHelpForm;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->requestWindowFeature(I)Z

    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->setContentView(I)V

    const v0, 0x7f0b00dd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/coremobility/app/vnotes/kq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/kq;-><init>(Lcom/coremobility/app/vnotes/SM_WebHelpForm;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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
