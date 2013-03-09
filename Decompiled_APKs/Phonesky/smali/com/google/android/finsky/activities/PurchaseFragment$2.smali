.class Lcom/google/android/finsky/activities/PurchaseFragment$2;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onInitViewBinders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 7
    .parameter "left"
    .parameter "top"

    .prologue
    .line 462
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/activities/PurchaseContentLayout;

    .line 465
    .local v4, purchaseContentLayout:Lcom/google/android/finsky/activities/PurchaseContentLayout;
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0801b1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 467
    .local v1, currAcquireRowTop:I
    invoke-virtual {v4}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowTop()I

    move-result v3

    .line 468
    .local v3, newAcquireRowTop:I
    if-eq v1, v3, :cond_0

    .line 470
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$900(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;

    move-result-object v5

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 472
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0801b6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    .line 474
    .local v0, currAcquireRowFooterTop:I
    invoke-virtual {v4}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowFooterTop()I

    move-result v2

    .line 475
    .local v2, newAcquireRowFooterTop:I
    if-eq v0, v2, :cond_1

    .line 477
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1000(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;

    move-result-object v5

    sub-int v6, v2, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 480
    :cond_1
    return-void
.end method
