.class Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectInstrumentFamilyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 186
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v4}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 187
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v4}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 189
    .local v2, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    invoke-static {v4, v2}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$500(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 203
    .end local v2           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 192
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v4, "select_instr_family_dialog"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 196
    const v3, 0x7f07005d

    .line 197
    .local v3, titleResourceId:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v4}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$700(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v5

    invoke-static {v4, v5, v3, v6}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->newInstance(Ljava/util/List;Lcom/google/android/finsky/billing/InstrumentFactory;II)Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    move-result-object v0

    .line 200
    .local v0, dialog:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 201
    const-string v4, "select_instr_family_dialog"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
