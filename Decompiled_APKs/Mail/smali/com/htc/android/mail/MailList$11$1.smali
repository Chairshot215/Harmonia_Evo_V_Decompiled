.class Lcom/htc/android/mail/MailList$11$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


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
    .line 1598
    iput-object p1, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$11$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 8
    .parameter "groupPosition"

    .prologue
    .line 1601
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    if-nez v5, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    const/4 v4, -0x1

    .line 1606
    .local v4, lastPosition:I
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1607
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    .line 1610
    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 1611
    .local v1, amc:Lcom/htc/android/mail/database/AbstractMailCursor;
    if-eqz v1, :cond_0

    .line 1614
    invoke-virtual {v1}, Lcom/htc/android/mail/database/AbstractMailCursor;->getPosition()I

    move-result v2

    .line 1615
    .local v2, curCursorPosition:I
    invoke-virtual {v1, p1}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1618
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 1619
    check-cast v3, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .line 1620
    .local v3, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$2800(Lcom/htc/android/mail/MailList;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v7, v7, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionByGroup(JLjava/lang/String;)I

    move-result v4

    .line 1622
    .end local v3           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const-string v6, "_group"

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/database/AbstractMailCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/android/mail/MailList;->access$2702(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;

    .line 1623
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    const-string v6, "_account"

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/database/AbstractMailCursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/MailList;->access$2802(Lcom/htc/android/mail/MailList;J)J

    .line 1624
    invoke-virtual {v1, v2}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    .line 1626
    if-eq v4, p1, :cond_0

    .line 1629
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 1631
    iget-object v5, p0, Lcom/htc/android/mail/MailList$11$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    goto :goto_0
.end method
