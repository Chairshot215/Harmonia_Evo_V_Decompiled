.class Lcom/android/mms/ui/ExtractObjectViewActivity$5;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity;->handleItemclick(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #setter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$202(Lcom/android/mms/ui/ExtractObjectViewActivity;Z)Z

    .line 681
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$300(Lcom/android/mms/ui/ExtractObjectViewActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p3

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$300(Lcom/android/mms/ui/ExtractObjectViewActivity;)[Z

    move-result-object v2

    aput-boolean v4, v2, p3

    .line 683
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$400(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 684
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$400(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 688
    :goto_0
    const/4 v1, 0x0

    .line 689
    .local v1, selectitem:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$300(Lcom/android/mms/ui/ExtractObjectViewActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-ne v2, v4, :cond_0

    .line 691
    const/4 v1, 0x1

    .line 689
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    .end local v0           #i:I
    .end local v1           #selectitem:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$300(Lcom/android/mms/ui/ExtractObjectViewActivity;)[Z

    move-result-object v2

    aput-boolean v3, v2, p3

    goto :goto_0

    .line 692
    .restart local v0       #i:I
    .restart local v1       #selectitem:Z
    :cond_2
    if-nez v1, :cond_3

    .line 693
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$400(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 694
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$5;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$400(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 696
    :cond_3
    return-void
.end method
