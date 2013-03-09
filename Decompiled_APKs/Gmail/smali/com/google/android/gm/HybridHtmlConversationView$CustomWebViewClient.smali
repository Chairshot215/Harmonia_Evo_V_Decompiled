.class Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HybridHtmlConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1577
    iget-object v7, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v7

    .line 1578
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v6, v6, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x-thread://conversation/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, v8, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v8}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, conversationUrl:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$800(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1583
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mSimpleTimer:Lcom/google/android/gm/perf/SimpleTimer;
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1500(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/perf/SimpleTimer;

    move-result-object v6

    const-string v8, "onPageFinished"

    invoke-virtual {v6, v8}, Lcom/google/android/gm/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 1590
    const-string v6, "from loadData to onPageFinished"

    invoke-static {v6}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1592
    const-string v6, "Gmail"

    const-string v8, "PAGE FINISHED t=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1597
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$800(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->getSenders()Ljava/util/Set;

    move-result-object v4

    .line 1598
    .local v4, senders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {v6, v8, v4}, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/util/Set;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1601
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->hasAttachment()Z
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1600(Lcom/google/android/gm/HybridHtmlConversationView;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1604
    .local v0, args:Landroid/os/Bundle;
    const-string v6, "conversationId"

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, v8, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v8}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1605
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    const/4 v9, 0x1

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->getLoaderId(I)I
    invoke-static {v8, v9}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1700(Lcom/google/android/gm/HybridHtmlConversationView;I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mAttachmentListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v9}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1800(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v9

    invoke-virtual {v6, v8, v0, v9}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1609
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, v8, Lcom/google/android/gm/HybridHtmlConversationView;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v8}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gm/HybridHtmlConversationView;->highlightTerms(Ljava/util/List;)V

    .line 1611
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, v8, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v9, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v9}, Lcom/google/android/gm/HybridHtmlConversationView;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gm/HybridHtmlConversationView;->notifySubjectSet(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 1612
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mEnableContentReadySignal:Z
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1900(Lcom/google/android/gm/HybridHtmlConversationView;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1613
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v8, v8, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v6, v8}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 1614
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->dismissLoadingStatus()V
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1200(Lcom/google/android/gm/HybridHtmlConversationView;)V

    .line 1630
    .end local v4           #senders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    monitor-exit v7

    .line 1631
    return-void

    .line 1578
    .end local v1           #conversationUrl:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1617
    .restart local v1       #conversationUrl:Ljava/lang/String;
    :cond_3
    const-string v6, "Gmail"

    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1618
    move-object v2, p2

    .line 1619
    .local v2, logSafeUrl:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1620
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1621
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1622
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "<redacted>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1626
    .end local v3           #scheme:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_4
    const-string v6, "Gmail"

    const-string v8, "ignoring onPageFinished, state=%s pageUrl=%s convUrl=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    invoke-static {v11}, Lcom/google/android/gm/HybridHtmlConversationView;->access$800(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v6, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1630
    .end local v1           #conversationUrl:Ljava/lang/String;
    .end local v2           #logSafeUrl:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1538
    const/4 v4, 0x0

    .line 1539
    .local v4, uri:Ljava/net/URI;
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v6, v6, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x-thread://conversation/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v7, v7, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, conversationUrl:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    .line 1547
    .local v1, disableJsInterface:Z
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #uri:Ljava/net/URI;
    .local v5, uri:Ljava/net/URI;
    move-object v4, v5

    .line 1552
    .end local v5           #uri:Ljava/net/URI;
    .restart local v4       #uri:Ljava/net/URI;
    :goto_1
    if-eqz p2, :cond_0

    if-eqz v4, :cond_0

    .line 1553
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1554
    const/4 v1, 0x0

    .line 1567
    :cond_0
    :goto_2
    if-eqz v1, :cond_3

    .line 1568
    const-string v6, "Gmail"

    const-string v7, "Removing javascript interface, for external content"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1569
    const-string v6, "gmail"

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1573
    :goto_3
    return-void

    .line 1539
    .end local v0           #conversationUrl:Ljava/lang/String;
    .end local v1           #disableJsInterface:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1556
    .restart local v0       #conversationUrl:Ljava/lang/String;
    .restart local v1       #disableJsInterface:Z
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1557
    .local v3, scheme:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1558
    .local v2, part:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, "data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "text/html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1560
    const/4 v1, 0x0

    goto :goto_2

    .line 1571
    .end local v2           #part:Ljava/lang/String;
    .end local v3           #scheme:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mGmailJsInterface:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;
    invoke-static {v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    move-result-object v6

    const-string v7, "gmail"

    invoke-virtual {p1, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1548
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1659
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v1, v1, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V

    .line 1662
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1635
    const/4 v1, 0x0

    .line 1636
    .local v1, result:Z
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1637
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1638
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.browser.application_id"

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1639
    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1641
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v4, v4, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-static {v3, v2, v4, v0}, Lcom/google/android/gm/Utils;->addGoogleUriAccountIntentExtras(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1644
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebViewClient;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    const/4 v1, 0x1

    .line 1651
    :goto_0
    return v1

    .line 1646
    :catch_0
    move-exception v3

    goto :goto_0
.end method
