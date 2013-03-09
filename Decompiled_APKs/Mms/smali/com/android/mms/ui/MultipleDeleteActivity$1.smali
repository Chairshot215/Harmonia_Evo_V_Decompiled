.class Lcom/android/mms/ui/MultipleDeleteActivity$1;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 553
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    if-nez p3, :cond_1

    .line 555
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$100(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 594
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$100(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 561
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aget-boolean v2, v2, p3

    if-nez v2, :cond_5

    .line 566
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aput-boolean v3, v2, p3

    .line 567
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 574
    :goto_1
    const/4 v1, 0x0

    .line 575
    .local v1, selectitem:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 577
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v3, :cond_6

    .line 579
    const/4 v1, 0x1

    .line 583
    :cond_3
    if-nez v1, :cond_4

    .line 584
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 585
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 589
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mSelectStatus:I

    .line 590
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$100(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 571
    .end local v0           #i:I
    .end local v1           #selectitem:Z
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$1;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aput-boolean v4, v2, p3

    goto :goto_1

    .line 575
    .restart local v0       #i:I
    .restart local v1       #selectitem:Z
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
