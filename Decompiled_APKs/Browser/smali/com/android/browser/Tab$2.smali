.class Lcom/android/browser/Tab$2;
.super Landroid/webkit/WebViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDontResend:Landroid/os/Message;

.field private mResend:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object p1
.end method

.method private providersDiffer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "url"
    .parameter "otherUrl"

    .prologue
    .line 562
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 563
    .local v0, uri1:Landroid/net/Uri;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 564
    .local v1, uri2:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p3}, Lcom/android/browser/WebViewController;->doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V

    .line 760
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 748
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 709
    const-string v0, "Tab"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 714
    :cond_1
    iput-object p2, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    .line 715
    iput-object p3, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    .line 716
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0012

    new-instance v2, Lcom/android/browser/Tab$2$3;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$3;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0011

    new-instance v2, Lcom/android/browser/Tab$2$2;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$2;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$1;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$2$1;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 662
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_0

    .line 667
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 673
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$100(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mLoadStartTime:J
    invoke-static {v2}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/android/browser/LogTag;->logPageFinishedLoading(Ljava/lang/String;J)V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 626
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onPageFinished(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v1, v6}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 570
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x5

    #setter for: Lcom/android/browser/Tab;->mPageLoadProgress:I
    invoke-static {v1, v2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;I)I

    .line 571
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 573
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/browser/Tab;->mLoadStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/browser/Tab;->access$302(Lcom/android/browser/Tab;J)J

    .line 574
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/android/browser/Tab$2;->providersDiffer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v1, :cond_0

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    iput-object v5, v1, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 590
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iput-object v5, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ErrorConsoleView;->clearErrorMessages()V

    .line 596
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 597
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 602
    :cond_3
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 603
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/DeviceAccountLogin;->cancel()V

    .line 604
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;
    invoke-static {v1, v5}, Lcom/android/browser/Tab;->access$602(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;

    .line 605
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewController;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 609
    :cond_4
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p3}, Lcom/android/browser/WebViewController;->onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 611
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    .line 612
    return-void
.end method

.method public onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "error"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V
    invoke-static {v0, p2}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;Landroid/net/http/SslError;)V

    .line 828
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 10
    .parameter "view"
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequestHandler;->ignore()V

    .line 866
    :goto_0
    return-void

    .line 840
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 843
    .local v7, colon:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 844
    move-object v4, p3

    .line 845
    .local v4, host:Ljava/lang/String;
    const/4 v5, -0x1

    .line 856
    .local v5, port:I
    :goto_1
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$8;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/Tab$2$8;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/ClientCertRequestHandler;)V

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 847
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #port:I
    :cond_1
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 849
    .local v9, portString:Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 850
    .restart local v5       #port:I
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4       #host:Ljava/lang/String;
    goto :goto_1

    .line 851
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #port:I
    :catch_0
    move-exception v8

    .line 852
    .local v8, e:Ljava/lang/NumberFormatException;
    move-object v4, p3

    .line 853
    .restart local v4       #host:Ljava/lang/String;
    const/4 v5, -0x1

    .restart local v5       #port:I
    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 682
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    const/4 v0, -0x6

    if-eq p2, v0, :cond_0

    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    const/16 v0, -0xa

    if-eq p2, v0, :cond_0

    const/16 v0, -0xd

    if-eq p2, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;ILjava/lang/String;)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/WebViewController;->onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 909
    new-instance v0, Lcom/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/browser/DeviceAccountLogin;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/android/browser/Tab;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/browser/DeviceAccountLogin;->handleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 770
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    #calls: Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V
    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$1200(Lcom/android/browser/Tab;Lcom/android/browser/Tab$SecurityState;)V

    .line 817
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showSecurityWarnings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0018

    new-instance v2, Lcom/android/browser/Tab$2$7;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/browser/Tab$2$7;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001a

    new-instance v2, Lcom/android/browser/Tab$2$6;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/Tab$2$6;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001b

    new-instance v2, Lcom/android/browser/Tab$2$5;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$5;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$4;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/Tab$2$4;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/browser/homepages/HomeProvider;->shouldInterceptRequest(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 887
    .local v0, res:Landroid/webkit/WebResourceResponse;
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    .line 895
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, logIntent:Landroid/content/Intent;
    const-string v1, "extra_event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 645
    .end local v0           #logIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v1}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/browser/WebViewController;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 649
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
