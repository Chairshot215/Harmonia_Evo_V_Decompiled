.class final Lcom/coremobility/app/vnotes/kp;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/app/vnotes/SM_TwitterLogin;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/kp;-><init>(Lcom/coremobility/app/vnotes/SM_TwitterLogin;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/app/vnotes/SM_TwitterLogin;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setProgressBarIndeterminateVisibility(Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "voicemail://tweet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\\?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v0, v6

    :goto_0
    const-string v2, ""

    const-string v3, ""

    const-string v4, "denied"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_1
    if-lez v0, :cond_1

    aget-object v7, v6, v1

    const-string v8, "oauth_token"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v2, v6, v1

    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    :cond_0
    aget-object v7, v6, v1

    const-string v8, "oauth_verifier"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v3, v6, v1

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    :cond_1
    if-le v0, v5, :cond_7

    aget-object v0, v6, v5

    const-string v7, "oauth_token"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v6, v5

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    :goto_2
    aget-object v2, v6, v5

    const-string v7, "oauth_verifier"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v6, v5

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_3
    iget-object v3, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v4, :cond_4

    const-string v0, "voicemail://tweet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-virtual {v0, v1, v3}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setResult(ILandroid/content/Intent;)V

    :goto_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->finish()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    const-string v1, "oauth_token"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oauth_verifier"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setResult(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_5
    move-object v2, v0

    move-object v0, v3

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v4, v1

    goto/16 :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kp;->a:Lcom/coremobility/app/vnotes/SM_TwitterLogin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/SM_TwitterLogin;->setProgressBarIndeterminateVisibility(Z)V

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

    return-void
.end method
