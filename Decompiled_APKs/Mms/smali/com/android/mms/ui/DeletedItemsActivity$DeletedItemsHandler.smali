.class Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "DeletedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletedItemsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;Lcom/android/mms/ui/DeletedItemsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 753
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 754
    .local v1, token:Ljava/lang/Integer;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;

    .line 755
    .local v0, args:Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 774
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #calls: Lcom/android/mms/ui/DeletedItemsActivity;->DismissProgressDialog()V
    invoke-static {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->access$800(Lcom/android/mms/ui/DeletedItemsActivity;)V

    .line 775
    return-void

    .line 757
    :pswitch_1
    const-string v2, "DeletedItemsActivity"

    const-string v3, "Get Message - MSG_DI_DELETED_SINGLE_ITEM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iget-object v3, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Ids:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    iget v5, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/DeletedItemsActivity;->DeleteSMSMMSById(Ljava/lang/String;ZIZ)V

    goto :goto_0

    .line 761
    :pswitch_2
    const-string v2, "DeletedItemsActivity"

    const-string v3, "Get Message - MSG_DI_RESTORE_SINGLE_ITEM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iget-wide v3, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Id:J

    iget-boolean v5, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    iget v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/DeletedItemsActivity;->RestoreMessageById(JZI)V

    .line 763
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DraftCache;->refresh()V

    goto :goto_0

    .line 766
    :pswitch_3
    const-string v2, "DeletedItemsActivity"

    const-string v3, "Get Message - MSG_DI_UNLOCK_SINGLE_ITEM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iget-wide v3, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Id:J

    iget-boolean v5, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    iget v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/DeletedItemsActivity;->UnlockMessageById(JZI)V

    goto :goto_0

    .line 770
    :pswitch_4
    const-string v2, "DeletedItemsActivity"

    const-string v3, "Get Message - MSG_RESTORE_SINGLE_ITME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/DeletedItemsActivity;->access$700(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->locked:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/DeletedItemsActivity;->DeleteAllMessageByCursor(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x4e8f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    const-string v0, "DeletedItemsActivity"

    const-string v1, "Activity is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    if-eqz p3, :cond_0

    .line 736
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->finish()V

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 744
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #setter for: Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/DeletedItemsActivity;->access$102(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method
