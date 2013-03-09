.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInstrumentSelectorItem"
.end annotation


# instance fields
.field private mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter
    .parameter "eligibleInstrument"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 244
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method


# virtual methods
.method public getInstrument()Lcom/google/android/finsky/billing/Instrument;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->hasSubtitle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->canAdd(II)Z

    move-result v0

    return v0
.end method

.method public isValidSelection()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onSelected(Z)V
    .locals 2
    .parameter "isUserInitiatedSelection"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const/4 v1, 0x0

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-interface {v0, v1, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;->onAddInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Z)V

    .line 269
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
