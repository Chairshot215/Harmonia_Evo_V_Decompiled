.class public interface abstract Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInstrumentSelectedListener"
.end annotation


# virtual methods
.method public abstract onAddInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Z)V
.end method

.method public abstract onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V
.end method

.method public abstract onNothingSelected()V
.end method
