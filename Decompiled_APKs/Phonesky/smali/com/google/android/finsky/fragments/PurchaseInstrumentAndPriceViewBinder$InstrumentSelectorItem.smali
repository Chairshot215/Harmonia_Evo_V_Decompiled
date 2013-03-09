.class interface abstract Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "InstrumentSelectorItem"
.end annotation


# virtual methods
.method public abstract getInstrument()Lcom/google/android/finsky/billing/Instrument;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isValidSelection()Z
.end method

.method public abstract onSelected(Z)V
.end method
