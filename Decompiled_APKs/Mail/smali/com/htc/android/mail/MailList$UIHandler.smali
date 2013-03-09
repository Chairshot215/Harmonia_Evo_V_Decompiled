.class Lcom/htc/android/mail/MailList$UIHandler;
.super Landroid/os/Handler;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final MARK_ALL:I = 0x1

.field public static final UNMARK_ALL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 6691
    iput-object p1, p0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6691
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$UIHandler;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "message"

    .prologue
    .line 6696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    move-object/from16 v17, v0

    .line 6697
    .local v17, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 6748
    :goto_0
    return-void

    .line 6699
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 6700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 6701
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 6702
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 6704
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v6, "MARK_ALL>in thread"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6705
    :cond_0
    const-string v2, "_account"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 6706
    .local v4, accountId:J
    const-string v2, "_group"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6707
    .local v7, group:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    #calls: Lcom/htc/android/mail/MailList;->getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3000(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-result-object v18

    .line 6708
    .local v18, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v7}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupCountByGroup(JLjava/lang/String;)I

    move-result v8

    .line 6709
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 6710
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/mail/util/SelectedMailGroups;->selectGroup(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V

    .line 6701
    .end local v3           #context:Landroid/content/Context;
    .end local v8           #count:I
    .end local v18           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 6712
    .end local v4           #accountId:J
    .end local v7           #group:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    const-string v6, "MARK_ALL>not thread"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6713
    :cond_2
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 6714
    .local v14, messageId:J
    const-string v2, "_account"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 6715
    .restart local v4       #accountId:J
    const-string v2, "_mailboxId"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 6716
    .local v12, mailboxId:J
    const-string v2, "_group"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6717
    .restart local v7       #group:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/htc/android/mail/util/SelectedMailMessages;->checkboxChecked(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v9

    move-wide v10, v4

    invoke-virtual/range {v9 .. v15}, Lcom/htc/android/mail/util/SelectedMailMessages;->deselect(JJJ)V

    goto :goto_2

    .line 6720
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v9

    move-wide v10, v4

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    goto :goto_2

    .line 6724
    .end local v4           #accountId:J
    .end local v7           #group:Ljava/lang/String;
    .end local v12           #mailboxId:J
    .end local v14           #messageId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0

    .line 6727
    .end local v19           #i:I
    :pswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "MailList"

    const-string v6, " menu UNMARK_ALL>"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6728
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 6729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 6730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 6731
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 6745
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$UIHandler;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0

    .line 6697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
