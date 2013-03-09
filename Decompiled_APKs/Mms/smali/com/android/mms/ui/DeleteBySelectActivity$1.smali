.class Lcom/android/mms/ui/DeleteBySelectActivity$1;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 373
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    if-nez p3, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$200(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 410
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$200(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 381
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 385
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aget-boolean v2, v2, p3

    if-nez v2, :cond_5

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aput-boolean v4, v2, p3

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 388
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 393
    :goto_1
    const/4 v1, 0x0

    .line 394
    .local v1, selectitem:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v4, :cond_6

    .line 396
    const/4 v1, 0x1

    .line 400
    :cond_3
    if-nez v1, :cond_4

    .line 401
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$400(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectListAdapter;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mSelectStatus:I

    .line 407
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$200(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 391
    .end local v0           #i:I
    .end local v1           #selectitem:Z
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$1;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aput-boolean v5, v2, p3

    goto :goto_1

    .line 394
    .restart local v0       #i:I
    .restart local v1       #selectitem:Z
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
