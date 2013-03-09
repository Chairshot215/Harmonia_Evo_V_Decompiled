.class Lcom/htc/android/mail/MailList$15$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$15;->getListView()Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$15;

.field final synthetic val$expandListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$15;Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$15$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 8
    .parameter "groupPosition"

    .prologue
    .line 1877
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    if-nez v4, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1879
    :cond_1
    const/4 v3, -0x1

    .line 1880
    .local v3, lastPosition:I
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 1881
    .local v1, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v1, :cond_0

    .line 1883
    invoke-interface {v1, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 1884
    .local v0, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    if-eqz v0, :cond_0

    .line 1886
    invoke-virtual {v0}, Lcom/htc/android/mail/database/AbstractMailCursor;->getPosition()I

    move-result v2

    .line 1887
    .local v2, curCursorPosition:I
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1890
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v4, v4, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 1891
    check-cast v4, Lcom/htc/android/mail/database/ConversationGroupCursor;

    iget-object v5, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v5, v5, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$2800(Lcom/htc/android/mail/MailList;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v7, v7, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionByGroup(JLjava/lang/String;)I

    move-result v3

    .line 1893
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v4, v4, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    const-string v5, "_group"

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailList;->access$2702(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;

    .line 1894
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v4, v4, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    const-string v5, "_account"

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->getLong(I)J

    move-result-wide v5

    #setter for: Lcom/htc/android/mail/MailList;->lastExpandAccountId:J
    invoke-static {v4, v5, v6}, Lcom/htc/android/mail/MailList;->access$2802(Lcom/htc/android/mail/MailList;J)J

    .line 1895
    invoke-virtual {v0, v2}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    .line 1897
    if-eq v3, p1, :cond_0

    .line 1900
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 1901
    iget-object v4, p0, Lcom/htc/android/mail/MailList$15$1;->val$expandListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    goto :goto_0
.end method
