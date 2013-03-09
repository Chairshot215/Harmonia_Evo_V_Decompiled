.class Lcom/htc/android/mail/MailList$MailListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailList.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailListAdapter"
.end annotation


# instance fields
.field protected mAlphabet:Ljava/lang/String;

.field protected mAlphabetReal:Ljava/lang/String;

.field protected mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

.field private mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;Landroid/content/Context;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 6
    .parameter
    .parameter "c"
    .parameter "context"
    .parameter "tabInfo"

    .prologue
    const/4 v5, 0x0

    .line 530
    iput-object p1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    .line 531
    invoke-direct {p0, p3, p2, v5}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 532
    iput-object p4, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 534
    const v0, 0x1040419

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    .line 535
    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/MailList;->revertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    .line 541
    :goto_0
    if-eqz p2, :cond_0

    .line 543
    new-instance v0, Lcom/htc/android/mail/MailAlphabetIndexer;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$200(Lcom/htc/android/mail/MailList;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    .line 544
    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAlphabetIndexer;->setRevertOrder()V

    .line 547
    :cond_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 600
    move-object v1, p1

    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/mail/Mailbox;->showSender:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListItemBig;->setShowSender(Z)V

    move-object v1, p1

    .line 601
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->isSortBySize()Z
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$600(Lcom/htc/android/mail/MailList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListItemBig;->setShowSize(Z)V

    .line 602
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    .line 603
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListItemBig;->enableSpannable(Ljava/lang/String;)V

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAccountCounts:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$700(Lcom/htc/android/mail/MailList;)I

    move-result v1

    if-le v1, v5, :cond_2

    move-object v1, p1

    .line 608
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    .line 611
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 612
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListItemBig;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 615
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_3

    move-object v1, p1

    .line 616
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListItemBig;->setPreviewLinesNumber(I)V

    :goto_2
    move-object v1, p1

    .line 620
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    iget-object v3, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v2, v3, v4}, Lcom/htc/android/mail/MailListItemBig;->bind(Landroid/database/Cursor;ILcom/htc/android/mail/util/SelectedMailMessages;Lcom/htc/android/mail/util/SelectedMailGroups;)V

    .line 621
    check-cast p1, Lcom/htc/android/mail/MailListItemBig;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/mail/MailListItemBig;->setMailListCheckBoxEvent()V

    .line 622
    return-void

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    :cond_1
    move-object v1, p1

    .line 605
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListItemBig;->disableSpannable()V

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 610
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    goto :goto_1

    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_3
    move-object v1, p1

    .line 618
    check-cast v1, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/MailListItemBig;->setPreviewLinesNumber(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$MailListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, old:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$300(Lcom/htc/android/mail/MailList;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailList$MailListAdapter$1;

    invoke-direct {v1, p0, v6}, Lcom/htc/android/mail/MailList$MailListAdapter$1;-><init>(Lcom/htc/android/mail/MailList$MailListAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->revertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    .line 565
    :goto_0
    new-instance v0, Lcom/htc/android/mail/MailAlphabetIndexer;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$200(Lcom/htc/android/mail/MailList;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    .line 567
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAlphabetIndexer;->setRevertOrder()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->alphabetType:I
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$400(Lcom/htc/android/mail/MailList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 587
    :goto_1
    return-void

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    goto :goto_0

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 580
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 583
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 7
    .parameter "sectionIndex"

    .prologue
    const/4 v5, 0x0

    .line 660
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    if-nez v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$MailListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 662
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 676
    .end local v2           #cursor:Landroid/database/Cursor;
    :goto_0
    return v5

    .line 666
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->revertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    .line 670
    :goto_1
    new-instance v0, Lcom/htc/android/mail/MailAlphabetIndexer;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$200(Lcom/htc/android/mail/MailList;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    .line 672
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAlphabetIndexer;->setRevertOrder()V

    .line 675
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPositionForSection(I)I

    move-result v6

    .local v6, res:I
    move v5, v6

    .line 676
    goto :goto_0

    .line 669
    .end local v6           #res:I
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabet:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mAlphabetReal:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 654
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 655
    .local v0, a:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 637
    if-eqz p2, :cond_0

    .line 638
    move-object v0, p2

    .line 647
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/mail/MailList$MailListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 648
    return-object v0

    .line 640
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/android/mail/MailList$MailListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 626
    new-instance v0, Lcom/htc/android/mail/MailListItemBig;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/MailListItemBig;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, v:Lcom/htc/android/mail/MailListItemBig;
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 594
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 596
    :cond_0
    return-void
.end method
