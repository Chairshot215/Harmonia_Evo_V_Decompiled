.class public Lcom/sprint/dsa/DsaWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "DsaWebChromeClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DSS"


# instance fields
.field private dsaClient:Lcom/sprint/dsa/DsaClient;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/DsaClient;)V
    .locals 2
    .parameter "dsaApp"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    .line 22
    sget-object v0, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/dsa/DsaWebChromeClient$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/DsaWebChromeClient$1;-><init>(Lcom/sprint/dsa/DsaWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/dsa/DsaWebChromeClient$2;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/DsaWebChromeClient$2;-><init>(Lcom/sprint/dsa/DsaWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method


# virtual methods
.method public getFormData()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->setProgressBarIndeterminateVisibility(Z)V

    .line 93
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:(function() { var myvar ;var myvar1;var Size;var i;var FormData=\'\';var regexp;var message;var error;var reStr;var ret=true;myvar=document.getElementsByTagName(\'INPUT\');Size = myvar.length;for(i=0;i<Size;i++){if(myvar[i].type != \'hidden\'){if(myvar[i].type == \'text\' || myvar[i].type == \'password\' ){reStr = myvar[i].getAttribute(\'regexp\');if(reStr != null){var patt=new RegExp(reStr);var data = myvar[i].value;ret = patt.test(data);if(ret==false){;message = myvar[i].getAttribute(\'message\');window.dsa.popup(message,\'Error\');break;}}var valid = myvar[i].getAttribute(\'validation\');if(valid != null){if(valid.indexOf(\'eq:\') == 0){var pw = document.getElementById(valid.substr(3));if((myvar[i].value.length != pw.value.length)||(myvar[i].value.match(pw.value)==null)){ret = false;message = myvar[i].getAttribute(\'message\');window.dsa.popup(message,\'Error\');break;}}}var encodedstr = encodeURIComponent(myvar[i].value);FormData = FormData +\'&\'+ myvar[i].name+\'=\'+encodedstr; }else if(myvar[i].checked == true){FormData = FormData +\'&\'+ myvar[i].name+\'=\'+myvar[i].value; }\t }}if(ret==true)window.dsa.processFormData(FormData);})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    if-eqz p3, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaWebChromeClient$4;

    invoke-direct {v1, p0, p3}, Lcom/sprint/dsa/DsaWebChromeClient$4;-><init>(Lcom/sprint/dsa/DsaWebChromeClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 172
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 38
    return-void
.end method

.method public processCommand(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 4
    .parameter "button"
    .parameter "text"

    .prologue
    .line 41
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, fc:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 45
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFocus()V

    .line 48
    :cond_2
    const-string v1, "002"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "008"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "00C"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v2, Lcom/sprint/dsa/DsaWebChromeClient$3;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/DsaWebChromeClient$3;-><init>(Lcom/sprint/dsa/DsaWebChromeClient;)V

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :cond_5
    const-string v1, "001"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaWebChromeClient;->getFormData()V

    goto :goto_0

    .line 75
    :cond_7
    const-string v1, "010"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&option="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaWebChromeClient;->getFormData()V

    goto :goto_0
.end method
