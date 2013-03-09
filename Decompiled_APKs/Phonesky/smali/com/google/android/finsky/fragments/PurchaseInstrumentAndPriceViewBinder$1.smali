.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$900(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 394
    .local v0, selectorItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->onSelected(Z)V

    .line 395
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z
    invoke-static {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1002(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z

    .line 396
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;->onNothingSelected()V

    .line 401
    return-void
.end method
