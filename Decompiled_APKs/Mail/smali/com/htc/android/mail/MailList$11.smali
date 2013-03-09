.class Lcom/htc/android/mail/MailList$11;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doThreadTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter "groupCursor"

    .prologue
    .line 1551
    sget v2, Lcom/htc/android/mail/MailProvider;->sSummaryThreadAccountIdx:I

    .line 1552
    .local v2, accountIdColIdx:I
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryThreadGroupIdx:I

    .line 1554
    .local v3, groupIdColIdx:I
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-boolean v5, v5, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-nez v5, :cond_0

    .line 1555
    sget v2, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadAccountIdx:I

    .line 1556
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadGroupIdx:I

    .line 1559
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1560
    .local v0, accountId:J
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1561
    .local v4, groupKey:Ljava/lang/String;
    check-cast p1, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .end local p1
    invoke-virtual {p1, v0, v1, v4}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getChildCursor(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method public getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "column"
    .parameter "order"

    .prologue
    .line 1542
    const-string v0, "messages._internaldate DESC limit 100"

    return-object v0
.end method

.method public getChildrenUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 1567
    iget-object v2, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1568
    .local v0, baseUri:Landroid/net/Uri;
    const-string v2, "threadChildren"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1569
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 7
    .parameter "groupCursor"

    .prologue
    .line 1527
    sget v2, Lcom/htc/android/mail/MailProvider;->sSummaryThreadAccountIdx:I

    .line 1528
    .local v2, accountIdColIdx:I
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryThreadGroupIdx:I

    .line 1530
    .local v3, groupIdColIdx:I
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-boolean v5, v5, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-nez v5, :cond_0

    .line 1531
    sget v2, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadAccountIdx:I

    .line 1532
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadGroupIdx:I

    .line 1535
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1536
    .local v0, accountId:J
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1537
    .local v4, groupKey:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messages._account ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND messages._group = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1591
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_0

    .line 1592
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1593
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1594
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1595
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1597
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    .line 1598
    .local v1, expandListView:Lcom/htc/widget/HtcExpandableListView;
    new-instance v2, Lcom/htc/android/mail/MailList$11$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/android/mail/MailList$11$1;-><init>(Lcom/htc/android/mail/MailList$11;Lcom/htc/widget/HtcExpandableListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V

    .line 1635
    new-instance v2, Lcom/htc/android/mail/MailList$11$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailList$11$2;-><init>(Lcom/htc/android/mail/MailList$11;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 1649
    new-instance v2, Lcom/htc/android/mail/MailList$11$3;

    invoke-direct {v2, p0, v1}, Lcom/htc/android/mail/MailList$11$3;-><init>(Lcom/htc/android/mail/MailList$11;Lcom/htc/widget/HtcExpandableListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 1696
    new-instance v2, Lcom/htc/android/mail/MailList$11$4;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailList$11$4;-><init>(Lcom/htc/android/mail/MailList$11;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1703
    iget-object v2, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1704
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/mail/MailList;->setIndicatorBounds(Landroid/content/res/Configuration;Lcom/htc/widget/HtcExpandableListView;)V

    .line 1707
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 1709
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v2
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"
    .parameter "order"

    .prologue
    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collate nocase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _group ASC, _internaldate DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method public initSortItems(Lcom/htc/android/mail/Account;)V
    .locals 7
    .parameter "account"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1574
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1575
    .local v0, items:Landroid/util/SparseIntArray;
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1576
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1577
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1578
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1579
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 1581
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0           #items:Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1582
    .restart local v0       #items:Landroid/util/SparseIntArray;
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1583
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1584
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1585
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1586
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    .line 1587
    return-void
.end method
