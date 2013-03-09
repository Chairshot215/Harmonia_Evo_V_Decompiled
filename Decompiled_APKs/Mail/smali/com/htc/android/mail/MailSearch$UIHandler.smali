.class Lcom/htc/android/mail/MailSearch$UIHandler;
.super Landroid/os/Handler;
.source "MailSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final MARK_ALL:I = 0x1

.field public static final UNMARK_ALL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailSearch;Lcom/htc/android/mail/MailSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailSearch$UIHandler;-><init>(Lcom/htc/android/mail/MailSearch;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x0

    .line 1702
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$2600(Lcom/htc/android/mail/MailSearch;)Landroid/database/Cursor;

    move-result-object v9

    .line 1703
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1739
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1706
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-nez v0, :cond_2

    .line 1707
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailSearch"

    const-string v11, "select all initally>"

    invoke-static {v0, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v11, 0x1

    #setter for: Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z
    invoke-static {v0, v11}, Lcom/htc/android/mail/MailSearch;->access$2702(Lcom/htc/android/mail/MailSearch;Z)Z

    .line 1711
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 1712
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 1713
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1714
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MailSearch"

    const-string v11, "MARK_ALL>not thread"

    invoke-static {v0, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_3
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1716
    .local v5, messageId:J
    const-string v0, "_account"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1717
    .local v1, accountId:J
    const-string v0, "_mailboxId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1718
    .local v3, mailboxId:J
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$2700(Lcom/htc/android/mail/MailSearch;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v10, :cond_4

    .line 1719
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #setter for: Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z
    invoke-static {v0, v12}, Lcom/htc/android/mail/MailSearch;->access$2702(Lcom/htc/android/mail/MailSearch;Z)Z

    .line 1720
    const-string v0, "_read"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1721
    .local v8, _read:I
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #calls: Lcom/htc/android/mail/MailSearch;->setCmdBarInit(I)V
    invoke-static {v0, v8}, Lcom/htc/android/mail/MailSearch;->access$2800(Lcom/htc/android/mail/MailSearch;I)V

    .line 1723
    .end local v8           #_read:I
    :cond_4
    const-string v0, "_group"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1724
    .local v7, group:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->checkboxChecked(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1725
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->deselect(JJJ)V

    .line 1712
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1727
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    goto :goto_2

    .line 1730
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    .end local v7           #group:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1733
    .end local v10           #i:I
    :pswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "MailSearch"

    const-string v11, " menu UNMARK_ALL>"

    invoke-static {v0, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 1735
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    .line 1736
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$UIHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
