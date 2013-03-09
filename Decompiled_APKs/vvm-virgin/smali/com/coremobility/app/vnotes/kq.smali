.class final Lcom/coremobility/app/vnotes/kq;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/app/vnotes/SM_WebHelpForm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/kq;-><init>(Lcom/coremobility/app/vnotes/SM_WebHelpForm;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/app/vnotes/SM_WebHelpForm;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/kq;->a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kq;->a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kq;->a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kq;->a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->setProgressBarIndeterminateVisibility(Z)V

    const-string v0, "TwitterWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kq;->a:Lcom/coremobility/app/vnotes/SM_WebHelpForm;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_WebHelpForm;->showDialog(I)V

    return-void
.end method
