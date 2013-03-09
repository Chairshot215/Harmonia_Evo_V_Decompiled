.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

.field final synthetic val$lineItems:Ljava/util/List;

.field final synthetic val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

.field final synthetic val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$lineItems:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    iput-object p4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 554
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #setter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z
    invoke-static {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1302(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z

    .line 555
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 557
    .local v0, hadFocus:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$lineItems:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 558
    if-eqz v0, :cond_2

    .line 559
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 561
    :cond_2
    return-void
.end method
