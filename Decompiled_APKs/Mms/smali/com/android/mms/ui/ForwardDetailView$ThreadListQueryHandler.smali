.class final Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ForwardDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ForwardDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ForwardDetailView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ForwardDetailView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    .line 786
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 787
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 792
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    invoke-virtual {v1}, Lcom/android/mms/ui/ForwardDetailView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    invoke-static {p3}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 802
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mCursorLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/mms/ui/ForwardDetailView;->access$400(Lcom/android/mms/ui/ForwardDetailView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ForwardDetailView;->access$500(Lcom/android/mms/ui/ForwardDetailView;)I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 805
    if-nez p3, :cond_2

    .line 806
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    const v3, 0x7f090373

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 807
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    invoke-virtual {v1}, Lcom/android/mms/ui/ForwardDetailView;->finish()V

    .line 808
    monitor-exit v2

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 810
    :cond_2
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 811
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    const v3, 0x7f090373

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 812
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 813
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    invoke-virtual {v1}, Lcom/android/mms/ui/ForwardDetailView;->finish()V

    .line 814
    monitor-exit v2

    goto :goto_0

    .line 818
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ForwardDetailView;->access$300(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 819
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #setter for: Lcom/android/mms/ui/ForwardDetailView;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/android/mms/ui/ForwardDetailView;->access$602(Lcom/android/mms/ui/ForwardDetailView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 820
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ForwardDetailView;->access$300(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->calculateTimestamp()V

    .line 821
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    invoke-virtual {v1}, Lcom/android/mms/ui/ForwardDetailView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    #getter for: Lcom/android/mms/ui/ForwardDetailView;->mCurrent_pos:I
    invoke-static {v3}, Lcom/android/mms/ui/ForwardDetailView;->access$700(Lcom/android/mms/ui/ForwardDetailView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 822
    iget-object v1, p0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ForwardDetailView;

    const v3, 0x7f0e002b

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ForwardDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 823
    .local v0, viewLoading:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 824
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 826
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
