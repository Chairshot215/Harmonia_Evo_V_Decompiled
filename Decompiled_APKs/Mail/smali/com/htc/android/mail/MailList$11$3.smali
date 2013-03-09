.class Lcom/htc/android/mail/MailList$11$3;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$11;->getListView()Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$11;

.field final synthetic val$expandListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$11;Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$11$3;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z
    .locals 17
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 1652
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$2900()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGroupClick>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    #calls: Lcom/htc/android/mail/MailList;->getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3000(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-result-object v15

    .line 1657
    .local v15, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-virtual {v15}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getChildCount()I

    move-result v13

    .line 1659
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMsgIdIdx:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/database/AbstractMailCursor;->getLong(I)J

    move-result-wide v6

    .line 1661
    .local v6, messageId:J
    const/4 v2, 0x1

    if-ne v13, v2, :cond_6

    .line 1662
    const/16 v16, -0x1

    .line 1663
    .local v16, lastPosition:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    .line 1664
    .local v12, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v12, :cond_1

    .line 1665
    const/4 v2, 0x0

    .line 1692
    .end local v6           #messageId:J
    .end local v12           #adapter:Landroid/widget/ExpandableListAdapter;
    .end local v13           #count:I
    .end local v15           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v16           #lastPosition:I
    :goto_0
    return v2

    .line 1667
    .restart local v6       #messageId:J
    .restart local v12       #adapter:Landroid/widget/ExpandableListAdapter;
    .restart local v13       #count:I
    .restart local v15       #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .restart local v16       #lastPosition:I
    :cond_1
    move/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 1669
    .local v11, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    if-nez v11, :cond_2

    .line 1670
    const/4 v2, 0x0

    goto :goto_0

    .line 1672
    :cond_2
    invoke-virtual {v11}, Lcom/htc/android/mail/database/AbstractMailCursor;->getPosition()I

    move-result v14

    .line 1673
    .local v14, curCursorPosition:I
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1674
    const/4 v2, 0x0

    goto :goto_0

    .line 1676
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, v11

    .line 1677
    check-cast v2, Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v3, v3, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$2800(Lcom/htc/android/mail/MailList;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionByGroup(JLjava/lang/String;)I

    move-result v16

    .line 1679
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const-string v3, "_group"

    invoke-virtual {v11, v3}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/htc/android/mail/database/AbstractMailCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/mail/MailList;->access$2702(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const-string v3, "_account"

    invoke-virtual {v11, v3}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/htc/android/mail/database/AbstractMailCursor;->getLong(I)J

    move-result-wide v3

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailList;->access$2802(Lcom/htc/android/mail/MailList;J)J

    .line 1681
    invoke-virtual {v11, v14}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v3, 0x0

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailList$11$3;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v4, v4, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v10

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v10}, Lcom/htc/android/mail/MailList;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJJLcom/htc/android/mail/MailList$TabInfo;)V

    .line 1685
    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 1686
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1688
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$11$3;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 1689
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1692
    .end local v6           #messageId:J
    .end local v11           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .end local v12           #adapter:Landroid/widget/ExpandableListAdapter;
    .end local v13           #count:I
    .end local v14           #curCursorPosition:I
    .end local v15           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v16           #lastPosition:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
