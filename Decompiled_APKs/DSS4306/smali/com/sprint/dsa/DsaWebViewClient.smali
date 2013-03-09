.class public Lcom/sprint/dsa/DsaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DsaWebViewClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DSS"


# instance fields
.field private dsaClient:Lcom/sprint/dsa/DsaClient;

.field private images:I

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/DsaClient;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->page:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->images:I

    .line 28
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DsaWebViewClient;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/DsaWebViewClient;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->page:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFirstPage()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/DsaClient;->loading:Z

    .line 250
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 256
    sget-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v1, "Network Error"

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->closeDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z

    goto :goto_0

    .line 266
    :cond_1
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaHttpClient;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.loadData(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-nez p1, :cond_1

    .line 211
    const-string v0, "DSS"

    const-string v1, "HttpClient returned null string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaWebViewClient$4;

    invoke-direct {v1, p0, p1}, Lcom/sprint/dsa/DsaWebViewClient$4;-><init>(Lcom/sprint/dsa/DsaWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebViewClient;->page:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadImages()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaWebViewClient$5;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/DsaWebViewClient$5;-><init>(Lcom/sprint/dsa/DsaWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    const-string v1, "DsaWebViewClient.onFormResubmission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 79
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 97
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "DSS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DsaWebViewClient.onLoadResource(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 103
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v1, p2}, Lcom/sprint/dsa/DsaHttpClient;->getResource(Ljava/lang/String;)V

    .line 104
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/sprint/dsa/DsaWebViewClient;->images:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sprint/dsa/DsaWebViewClient;->images:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "getResource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onPageFinished(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->images:I

    if-lez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaWebViewClient;->loadImages()V

    .line 43
    iput v3, p0, Lcom/sprint/dsa/DsaWebViewClient;->images:I

    .line 73
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-boolean v3, v0, Lcom/sprint/dsa/DsaClient;->loading:Z

    .line 49
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const-string v1, "javascript: (function() {var elem = document.getElementsByName (\'SELFACTIVATION_leftsoft\');if(elem.length > 0){try{window.dsa.setLeftSoftKey(elem[0].value) ;window.dsa.setExitMessage(elem[0].getAttribute(\'message\'));}catch(err){ }}elem = document.getElementsByName(\'SELFACTIVATION_nextURL\');if(elem.length > 0)window.dsa.setNextURL(elem[0].value);elem = document.getElementsByName(\'SELFACTIVATION_rightsoft\');if(elem.length > 0){try{window.dsa.setRightSoftKey(elem[0].value);window.dsa.setExitMessage(elem[0].getAttribute(\'message\'));}catch(err){ }}elem = document.getElementsByName(\'SELFACTIVATION_title\');if(elem.length > 0)window.dsa.setTitle(elem[0].value);var myvar;myvar = document.getElementsByName(\'SELFACTIVATION_back\');if(myvar.length > 0){window.dsa.setBackMessage(myvar[0].value);window.dsa.setBackMessage(myvar[0].getAttribute(\'message\'));}var index;var i;var Size=0;myvar=document.getElementsByName(\'SELFACTIVATION_write\');Size = myvar.length;if(Size>0){for(i=Size;i>0;i--){window.dsa.setSysProp(myvar[i-1].value);}}window.dsa.doneWrite(Size);})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaWebViewClient;->restoreFormData()V

    .line 69
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    .line 70
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 71
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onPageStarted(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 84
    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaWebViewClient.onReceivedError():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/DsaWebViewClient$1;-><init>(Lcom/sprint/dsa/DsaWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public restoreElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 294
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript: (function (var1,var2){window.dsa.logError(var1,var2);myvar=document.getElementsByName(var1);myvar[0].value = var2;})(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public restoreFormData()V
    .locals 5

    .prologue
    .line 283
    const-string v1, ""

    .line 284
    .local v1, script:Ljava/lang/String;
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript: (function (){"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "myvar=document.getElementsByName(\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\');"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "myvar[0].value = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iget-object v2, v2, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\';"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public saveFormData()V
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iget-object v0, v0, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const-string v1, "javascript: (function() {myvar=document.getElementsByTagName(\'INPUT\');Size = myvar.length;for(i=Size;i>0;i--){if(myvar[i-1].type != \'hidden\'){if(myvar[i-1].value.length > 0){window.dsa.saveformelement(myvar[i-1].name,myvar[i-1].value)}}}})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x3d

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 113
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v6, v6, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "DSS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DsaWebViewClient.shouldOverrideUrlLoading():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-object v6, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v6}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v6

    sget-object v7, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne v6, v7, :cond_2

    .line 202
    :cond_1
    :goto_0
    return v9

    .line 118
    :cond_2
    sget-object v6, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v7, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 121
    if-eqz p2, :cond_1

    .line 122
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    const-string v6, "dsatel:"

    invoke-virtual {p2, v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 125
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-boolean v9, v6, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, telIntent:Landroid/content/Intent;
    const-string v6, "911"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 129
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=tel_911"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 147
    :goto_1
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v6, v4}, Lcom/sprint/dsa/DsaClient;->startActivity(Landroid/content/Intent;)V

    .line 148
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v6, v10}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_3
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 139
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_2
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=tel_*2"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "DSS"

    const-string v7, "dialing"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #telIntent:Landroid/content/Intent;
    :cond_4
    const-string v6, "dm:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ciq:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 152
    :cond_5
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-boolean v9, v6, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    .line 153
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v6, v6, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    if-nez v6, :cond_6

    .line 155
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v7, Lcom/sprint/dsa/DsaWebViewClient$2;

    invoke-direct {v7, p0}, Lcom/sprint/dsa/DsaWebViewClient$2;-><init>(Lcom/sprint/dsa/DsaWebViewClient;)V

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 165
    :cond_6
    :try_start_2
    const-string v6, "dm:cidc"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 166
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=dm_cidc"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 174
    :cond_7
    :goto_3
    sget-object v6, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    const-string v6, "dm:cifumo"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 168
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=dm_cifumo"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    goto :goto_3

    .line 169
    :cond_9
    const-string v6, "dm:ciprl"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 170
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=dm_ciprl"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    goto :goto_3

    .line 171
    :cond_a
    const-string v6, "ciq:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 172
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v7, "option=ciq_report"

    iput-object v7, v6, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 180
    :cond_b
    const-string v6, "popup:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 181
    invoke-virtual {p2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 182
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 183
    const/4 v5, 0x0

    .line 184
    .local v5, title:Ljava/lang/String;
    const-string v6, "title="

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_c

    .line 185
    const/16 v6, 0x26

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {p2, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 188
    :cond_c
    move-object v1, v5

    .line 189
    .local v1, finalTitle:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v7, Lcom/sprint/dsa/DsaWebViewClient$3;

    invoke-direct {v7, p0, v3, v1}, Lcom/sprint/dsa/DsaWebViewClient$3;-><init>(Lcom/sprint/dsa/DsaWebViewClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 199
    .end local v1           #finalTitle:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p2, v6, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 201
    sget-object v6, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-virtual {v6, v12}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
