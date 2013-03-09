.class Lcom/htc/android/mail/MailList$QueryHandler;
.super Lcom/htc/android/mail/content/MailAsyncQueryHandler;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 5735
    iput-object p1, p0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    .line 5736
    invoke-direct {p0, p2}, Lcom/htc/android/mail/content/MailAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 5737
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 5742
    if-nez p3, :cond_1

    .line 5743
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "onQueryComplete cursor null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5985
    :cond_0
    :goto_0
    return-void

    .line 5747
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5749
    move-object/from16 v13, p3

    .line 5750
    .local v13, fCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$300(Lcom/htc/android/mail/MailList;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/MailList$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/htc/android/mail/MailList$QueryHandler$1;-><init>(Lcom/htc/android/mail/MailList$QueryHandler;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5755
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "(isFinishing() return>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5758
    .end local v13           #fCursor:Landroid/database/Cursor;
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v7, p2

    .line 5759
    check-cast v7, Lcom/htc/android/mail/MailList$TabInfo;

    .line 5760
    .local v7, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    move-object/from16 v1, p3

    .line 5761
    check-cast v1, Lcom/htc/android/mail/database/AbstractMailCursor;

    iput-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 5764
    const/16 v1, 0xa

    move/from16 v0, p1

    if-ne v0, v1, :cond_e

    .line 5765
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mIsQuickLoadComplete:Z

    .line 5770
    :cond_4
    :goto_1
    iget-boolean v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-eqz v1, :cond_14

    .line 5771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    if-eqz v1, :cond_5

    .line 5772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailList;->findExpandId(Landroid/database/Cursor;)V

    .line 5774
    :cond_5
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-nez v1, :cond_11

    .line 5776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expandAlphabetType:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$7400(Lcom/htc/android/mail/MailList;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5784
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040419

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/MailList;->mExpandAlphabet:Ljava/lang/String;

    .line 5787
    new-instance v1, Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const v4, 0x7f03000e

    const v5, 0x7f03000e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v9, v3, Lcom/htc/android/mail/MailList;->mExpandAlphabet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$7500(Lcom/htc/android/mail/MailList;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expandAlphabetType:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$7400(Lcom/htc/android/mail/MailList;)I

    move-result v11

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Lcom/htc/android/mail/MailConversationExpandListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IILcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;Lcom/htc/android/mail/util/SelectedMailGroups;Ljava/lang/CharSequence;II)V

    iput-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    .line 5797
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$4500(Lcom/htc/android/mail/MailList;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setAccountId(J)V

    .line 5798
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setMailboxId(J)V

    .line 5800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAccountCounts:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$700(Lcom/htc/android/mail/MailList;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    const/16 v16, 0x1

    .line 5802
    .local v16, showAccountIndicator:Z
    :goto_3
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setShowAccountIndicator(Z)V

    .line 5804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    iget-wide v1, v1, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v3, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 5805
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    .line 5810
    :goto_4
    iget-boolean v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v1, :cond_6

    .line 5811
    new-instance v1, Lcom/htc/android/mail/MailList$MyDataSetObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {v1, v2, v7}, Lcom/htc/android/mail/MailList$MyDataSetObserver;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    iput-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    .line 5812
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5814
    :cond_6
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcExpandableListView;

    .line 5816
    .local v12, expandListView:Lcom/htc/widget/HtcExpandableListView;
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 5819
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v1, v1, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcExpandableListView;->setSections([Ljava/lang/Object;)V

    .line 5820
    new-instance v1, Lcom/htc/android/mail/MailList$QueryHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v7}, Lcom/htc/android/mail/MailList$QueryHandler$2;-><init>(Lcom/htc/android/mail/MailList$QueryHandler;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcExpandableListView;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    .line 5826
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    .line 5912
    .end local v12           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v16           #showAccountIndicator:Z
    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTime:J

    .line 5913
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    iput-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5915
    const/16 v1, 0xa

    move/from16 v0, p1

    if-ne v0, v1, :cond_17

    .line 5916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->hideLoadMessage(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v1, v7}, Lcom/htc/android/mail/MailList;->access$7600(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 5917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->isFirstLoadedTab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->updateGroupNumCount()V

    .line 5920
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/MailList$QueryHandler$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/htc/android/mail/MailList$QueryHandler$5;-><init>(Lcom/htc/android/mail/MailList$QueryHandler;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5969
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expand_group_position:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$8100(Lcom/htc/android/mail/MailList;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 5970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcExpandableListView;

    .line 5971
    .restart local v12       #expandListView:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expand_group_position:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$8100(Lcom/htc/android/mail/MailList;)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 5972
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$2900()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandGroup>2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->selGroupItemCount:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$8200(Lcom/htc/android/mail/MailList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5973
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->selGroupItemCount:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$8200(Lcom/htc/android/mail/MailList;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    .line 5974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expand_group_position:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$8100(Lcom/htc/android/mail/MailList;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v12, v1, v2, v3}, Lcom/htc/widget/HtcExpandableListView;->setSelectedChild(IIZ)Z

    .line 5976
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedGroup d>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expand_group_position:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$8100(Lcom/htc/android/mail/MailList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5977
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 5981
    .end local v12           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    :cond_d
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 5982
    new-instance v14, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.mailbox.ready"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5983
    .local v14, loadMailListDone:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v14}, Lcom/htc/android/mail/MailList;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5766
    .end local v14           #loadMailListDone:Landroid/content/Intent;
    :cond_e
    const/16 v1, 0x14

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 5767
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mIsFullLoadComplete:Z

    goto/16 :goto_1

    .line 5778
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_internaldate"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$7502(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_2

    .line 5781
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_subject"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$7502(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_2

    .line 5800
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 5808
    .restart local v16       #showAccountIndicator:Z
    :cond_10
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    goto/16 :goto_4

    .line 5831
    .end local v16           #showAccountIndicator:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expandAlphabetType:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$7400(Lcom/htc/android/mail/MailList;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 5840
    :goto_7
    :pswitch_3
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5841
    const-string v1, "MailList"

    const-string v2, "change cursor and close old cursor>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5844
    :cond_12
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v15

    .line 5847
    .local v15, preCursor:Landroid/database/Cursor;
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->sortColInvert:Z
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$100(Lcom/htc/android/mail/MailList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSortConditions(Z)V

    .line 5850
    iget-object v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    const/16 v1, 0x28

    move/from16 v0, p1

    if-ne v0, v1, :cond_13

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$7500(Lcom/htc/android/mail/MailList;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->expandAlphabetType:I
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$7400(Lcom/htc/android/mail/MailList;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->changeCursor(Landroid/database/Cursor;ZII)V

    .line 5853
    const-string v1, "MailList"

    const-string v2, "ExAdapter chageCursor, then close preCursor"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$300(Lcom/htc/android/mail/MailList;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/MailList$QueryHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/htc/android/mail/MailList$QueryHandler$3;-><init>(Lcom/htc/android/mail/MailList$QueryHandler;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5861
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5863
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v2, v2, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setSections([Ljava/lang/Object;)V

    .line 5864
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    new-instance v2, Lcom/htc/android/mail/MailList$QueryHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/htc/android/mail/MailList$QueryHandler$4;-><init>(Lcom/htc/android/mail/MailList$QueryHandler;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    .line 5870
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 5871
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_5

    .line 5833
    .end local v15           #preCursor:Landroid/database/Cursor;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_internaldate"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$7502(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_7

    .line 5836
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_subject"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mExNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$7502(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_7

    .line 5850
    .restart local v15       #preCursor:Landroid/database/Cursor;
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 5875
    .end local v15           #preCursor:Landroid/database/Cursor;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->alphabetType:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$400(Lcom/htc/android/mail/MailList;)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 5893
    :goto_9
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-nez v1, :cond_16

    .line 5894
    new-instance v1, Lcom/htc/android/mail/MailList$MailListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v0, v3, v7}, Lcom/htc/android/mail/MailList$MailListAdapter;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;Landroid/content/Context;Lcom/htc/android/mail/MailList$TabInfo;)V

    iput-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    .line 5896
    iget-boolean v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v1, :cond_15

    .line 5897
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    new-instance v2, Lcom/htc/android/mail/MailList$MyDataSetObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {v2, v3, v7}, Lcom/htc/android/mail/MailList$MyDataSetObserver;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$MailListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5898
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$MailListAdapter;->notifyDataSetChanged()V

    .line 5901
    :cond_15
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5906
    :goto_a
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5907
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 5908
    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_5

    .line 5877
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_internaldate"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$202(Lcom/htc/android/mail/MailList;I)I

    goto :goto_9

    .line 5880
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_importance"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$202(Lcom/htc/android/mail/MailList;I)I

    goto :goto_9

    .line 5883
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_subject"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$202(Lcom/htc/android/mail/MailList;I)I

    goto :goto_9

    .line 5886
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$202(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_9

    .line 5889
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const-string v2, "_messagesize"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/mail/MailList;->mNameIdx:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$202(Lcom/htc/android/mail/MailList;I)I

    goto/16 :goto_9

    .line 5904
    :cond_16
    iget-object v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_a

    .line 5925
    :cond_17
    const/16 v1, 0x14

    move/from16 v0, p1

    if-eq v0, v1, :cond_18

    const/16 v1, 0x28

    move/from16 v0, p1

    if-eq v0, v1, :cond_18

    const/16 v1, 0x32

    move/from16 v0, p1

    if-ne v0, v1, :cond_22

    .line 5926
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->hideLoadMessage(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v1, v7}, Lcom/htc/android/mail/MailList;->access$7600(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 5927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->isFirstLoadedTab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->updateGroupNumCount()V

    .line 5932
    :cond_19
    iget v1, v7, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-eqz v1, :cond_1a

    .line 5933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->refreshMailing:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4100(Lcom/htc/android/mail/MailList;)Z

    move-result v1

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->readMoreMailing:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4200(Lcom/htc/android/mail/MailList;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 5934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    .line 5940
    :cond_1a
    :goto_b
    const/16 v1, 0x14

    move/from16 v0, p1

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x32

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 5941
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->updateSearchServer()V
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$7700(Lcom/htc/android/mail/MailList;)V

    .line 5942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->updateMailRemain()V
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4300(Lcom/htc/android/mail/MailList;)V

    .line 5944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsFirstRefreshMail:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$7800(Lcom/htc/android/mail/MailList;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 5945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/mail/MailList;->mIsFirstRefreshMail:Z
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$7802(Lcom/htc/android/mail/MailList;Z)Z

    .line 5947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->isFirstLoadedTab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumber()V

    .line 5951
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->ableRefresh()Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$7900(Lcom/htc/android/mail/MailList;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5952
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "MailList"

    const-string v2, "refreshMail in complete>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5953
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/MailList;->refreshMail(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->access$8000(Lcom/htc/android/mail/MailList;ZZZ)V

    goto/16 :goto_6

    .line 5936
    :cond_1e
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update time>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->refreshMailing:Z
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$4100(Lcom/htc/android/mail/MailList;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->readMoreMailing:Z
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$4200(Lcom/htc/android/mail/MailList;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 5955
    :cond_1f
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "MailList"

    const-string v2, "no refreshMail in complete>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5956
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    .line 5957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    goto/16 :goto_6

    .line 5961
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_6

    .line 5964
    :cond_22
    const/16 v1, 0x1e

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 5966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget v2, v7, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_6

    .line 5776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 5831
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 5875
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
