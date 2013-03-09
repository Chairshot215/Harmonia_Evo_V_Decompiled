.class Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->handleMessage_Debug(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1956
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1959
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1960
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1962
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z

    .line 1969
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1970
    .local v0, emptyView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->visible:Z

    if-nez v1, :cond_2

    .line 1973
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1978
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadCount:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)I

    move-result v2

    #calls: Lcom/android/mms/ui/ConversationList;->updateCountText(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;I)V

    .line 1988
    .end local v0           #emptyView:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 1976
    .restart local v0       #emptyView:Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1985
    .end local v0           #emptyView:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/MatrixCursor;

    if-nez v1, :cond_1

    .line 1986
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    goto :goto_1
.end method
