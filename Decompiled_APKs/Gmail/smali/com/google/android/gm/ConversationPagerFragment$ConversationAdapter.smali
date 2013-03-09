.class Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ConversationPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationAdapter"
.end annotation


# instance fields
.field private mSavedStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gm/ConversationPagerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ConversationPagerFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 417
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationPagerFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;-><init>(Lcom/google/android/gm/ConversationPagerFragment;)V

    return-void
.end method

.method private getItem(II)Lcom/google/android/gm/ConversationView;
    .locals 13
    .parameter "position"
    .parameter "autoLoad"

    .prologue
    const/4 v5, 0x0

    .line 517
    const/4 v9, 0x0

    .line 518
    .local v9, senders:Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 519
    .local v10, subject:Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 520
    .local v11, snippet:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    .line 542
    .local v7, info:Lcom/google/android/gm/ConversationInfo;
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$600(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$900(Lcom/google/android/gm/ConversationPagerFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1000(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v6

    move v8, p2

    invoke-static/range {v4 .. v11}, Lcom/google/android/gm/ConversationView;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/android/gm/ConversationViewable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    return-object v0

    .line 523
    .end local v7           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 524
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v12

    .line 525
    .local v12, info:Lcom/google/android/gm/ConversationInfo;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 526
    .local v2, sendersBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 527
    .local v3, statusBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$600(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gm/ConversationPagerFragment;->access$700()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v6}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasDraftMessage()Z

    move-result v7

    const/4 v8, 0x1

    move v6, v5

    move v9, v5

    invoke-static/range {v0 .. v9}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V

    .line 532
    .end local v9           #senders:Ljava/lang/CharSequence;
    move-object v9, v2

    .line 533
    .restart local v9       #senders:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v10

    .line 534
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v11

    .line 537
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getNumMessages()I

    move-result v0

    invoke-static {}, Lcom/google/android/gm/ConversationPagerFragment;->access$800()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 539
    const/4 p2, 0x1

    move-object v7, v12

    .end local v12           #info:Lcom/google/android/gm/ConversationInfo;
    .restart local v7       #info:Lcom/google/android/gm/ConversationInfo;
    goto/16 :goto_0

    .end local v7           #info:Lcom/google/android/gm/ConversationInfo;
    .restart local v12       #info:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    move-object v7, v12

    .end local v12           #info:Lcom/google/android/gm/ConversationInfo;
    .restart local v7       #info:Lcom/google/android/gm/ConversationInfo;
    goto/16 :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 8
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 492
    move-object v0, p3

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 493
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(Lcom/google/android/gm/ConversationView;)J

    move-result-wide v1

    .line 494
    .local v1, id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversation-pager-view-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, tag:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eq p3, v5, :cond_0

    .line 513
    .end local p1
    :goto_0
    return-void

    .line 501
    .restart local p1
    :cond_0
    invoke-virtual {v0, v7}, Lcom/google/android/gm/ConversationView;->setConversationCallbacks(Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;)V

    .line 502
    invoke-virtual {v0, v7}, Lcom/google/android/gm/ConversationView;->setConversationSubjectDisplayer(Lcom/google/android/gm/ConversationSubjectDisplayer;)V

    .line 505
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onPause()V

    .line 506
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v3, outState:Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Lcom/google/android/gm/ConversationView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 508
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onStop()V

    .line 510
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onDestroyView()V

    .line 511
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onDestroy()V

    .line 512
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 549
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    goto :goto_0
.end method

.method public getId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v0

    .line 431
    .local v0, isDataLoaded:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    :cond_0
    if-eqz v0, :cond_1

    .line 434
    const-string v1, "Gmail"

    const-string v2, "Couldn\'t move to position: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-static {v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    .line 438
    :goto_0
    return-wide v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getId(Lcom/google/android/gm/ConversationView;)J
    .locals 4
    .parameter "conversationView"

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 446
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 448
    .local v1, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7
    .parameter "object"

    .prologue
    const/4 v2, -0x2

    .line 594
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 595
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    iget-object v3, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 596
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(Lcom/google/android/gm/ConversationView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-static {v5}, Lcom/google/android/gm/ConversationPagerFragment;->access$400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 600
    :cond_0
    :goto_0
    return v2

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/gm/ConversationPagerFragment;->access$1200(Lcom/google/android/gm/ConversationPagerFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(Lcom/google/android/gm/ConversationView;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 600
    .local v1, position:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 10
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    .line 458
    invoke-virtual {p0, p2}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(I)J

    move-result-wide v2

    .line 459
    .local v2, id:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conversation-pager-view-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 463
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 487
    .end local v6           #view:Landroid/view/View;
    .end local p1
    :goto_0
    return-object v6

    .line 467
    .restart local v6       #view:Landroid/view/View;
    .restart local p1
    :cond_0
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lcom/google/android/gm/ConversationPagerFragment;->access$500(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne p2, v7, :cond_1

    const/4 v0, 0x2

    .line 470
    .local v0, autoLoad:I
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getItem(II)Lcom/google/android/gm/ConversationView;

    move-result-object v1

    .line 471
    .local v1, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v1, v5}, Lcom/google/android/gm/ConversationView;->setTag(Ljava/lang/Object;)V

    .line 474
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 475
    .local v4, savedInstanceState:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v1, v7}, Lcom/google/android/gm/ConversationView;->setFragment(Landroid/app/Fragment;)V

    .line 476
    invoke-virtual {v1, v4}, Lcom/google/android/gm/ConversationView;->onCreate(Landroid/os/Bundle;)V

    .line 477
    invoke-virtual {v1, v9, v9, v4}, Lcom/google/android/gm/ConversationView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 478
    invoke-virtual {v1, v4}, Lcom/google/android/gm/ConversationView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationView;->onStart()V

    .line 480
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationView;->onResume()V

    .line 482
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 484
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v1, v7}, Lcom/google/android/gm/ConversationView;->setConversationCallbacks(Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;)V

    .line 485
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v1, v7}, Lcom/google/android/gm/ConversationView;->setConversationSubjectDisplayer(Lcom/google/android/gm/ConversationSubjectDisplayer;)V

    move-object v6, v1

    .line 487
    goto :goto_0

    .line 467
    .end local v0           #autoLoad:I
    .end local v1           #conversationView:Lcom/google/android/gm/ConversationView;
    .end local v4           #savedInstanceState:Landroid/os/Bundle;
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 553
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 8
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 577
    if-nez p1, :cond_1

    .line 590
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 580
    check-cast v0, Landroid/os/Bundle;

    .line 581
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 582
    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 584
    .local v4, key:Ljava/lang/String;
    const-string v6, "conversation-pager-state-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 585
    const-string v6, "conversation-pager-state-"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 586
    .local v2, id:J
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 587
    .local v5, savedInstanceState:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 559
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lcom/google/android/gm/ConversationPagerFragment;->access$500(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 560
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lcom/google/android/gm/ConversationPagerFragment;->access$500(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationView;

    .line 561
    .local v1, conversationView:Lcom/google/android/gm/ConversationView;
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;
    invoke-static {v7}, Lcom/google/android/gm/ConversationPagerFragment;->access$1100(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(Lcom/google/android/gm/ConversationView;)J

    move-result-wide v4

    .line 562
    .local v4, id:J
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v6, outState:Landroid/os/Bundle;
    invoke-virtual {v1, v6}, Lcom/google/android/gm/ConversationView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 564
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v1           #conversationView:Lcom/google/android/gm/ConversationView;
    .end local v4           #id:J
    .end local v6           #outState:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 570
    .restart local v4       #id:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conversation-pager-state-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->mSavedStates:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 572
    .end local v4           #id:J
    :cond_1
    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 454
    return-void
.end method
