.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
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
    name = "ExistingInstrumentSelectorItem"
.end annotation


# instance fields
.field private final mInstrument:Lcom/google/android/finsky/billing/Instrument;

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V
    .locals 0
    .parameter
    .parameter "instrument"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 202
    return-void
.end method


# virtual methods
.method public getInstrument()Lcom/google/android/finsky/billing/Instrument;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->hasMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v0

    return v0
.end method

.method public isValidSelection()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onSelected(Z)V
    .locals 2
    .parameter "isUserInitiatedSelection"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;->onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
