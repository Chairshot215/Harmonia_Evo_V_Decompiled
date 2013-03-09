.class Lcom/android/browser/Tab$5;
.super Landroid/webkit/WebBackForwardListClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 2
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1445
    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getCustomData()Ljava/lang/Object;

    move-result-object v0

    .line 1446
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    check-cast v0, Landroid/content/Intent;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 1449
    :cond_0
    return-void
.end method

.method public onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/webkit/WebHistoryItem;->setCustomData(Ljava/lang/Object;)V

    .line 1427
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1900(Lcom/android/browser/Tab;)Ljava/util/regex/Pattern;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1428
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1900(Lcom/android/browser/Tab;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1431
    .local v0, match:Z
    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewHistoryItem: match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v3}, Lcom/android/browser/Tab;->access$1900(Lcom/android/browser/Tab;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    if-eqz v0, :cond_1

    .line 1436
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$2000(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1437
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$2000(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 1440
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    #setter for: Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v1, v2}, Lcom/android/browser/Tab;->access$1902(Lcom/android/browser/Tab;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 1442
    .end local v0           #match:Z
    :cond_2
    return-void
.end method
