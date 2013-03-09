.class Lcom/android/htccontacts/DeDuplicationActivity$2;
.super Landroid/os/Handler;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    .line 305
    .local v0, msgType:I
    packed-switch v0, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 308
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 314
    .end local v1           #name:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 323
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogNoDuplicateContacts()V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->updateDeleteButtonState()V
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$300(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 327
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$500(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 328
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$600(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    .line 329
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    new-instance v4, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    iget-object v5, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {v4, v5}, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    #setter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
    invoke-static {v3, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->access$602(Lcom/android/htccontacts/DeDuplicationActivity;Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;)Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
    invoke-static {v4}, Lcom/android/htccontacts/DeDuplicationActivity;->access$600(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 333
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 334
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-static {v4}, Lcom/android/htccontacts/DeDuplicationActivity;->access$700(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->setAllItemChecked(Z)V
    invoke-static {v3, v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$800(Lcom/android/htccontacts/DeDuplicationActivity;Z)V

    .line 336
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->updateDeleteButtonState()V
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$300(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 337
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogConfirmDeleteContacts()V

    goto/16 :goto_0

    .line 340
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 341
    .local v2, total:I
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    goto/16 :goto_0

    .line 346
    .end local v2           #total:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0

    .line 349
    :pswitch_4
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 350
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$2;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->displayDeleteFinishDialog()V
    invoke-static {v3}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1000(Lcom/android/htccontacts/DeDuplicationActivity;)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
