.class public abstract Lcom/google/android/finsky/billing/Instrument;
.super Ljava/lang/Object;
.source "Instrument.java"


# instance fields
.field private mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

.field protected final mDisplayIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 28
    iput-object p2, p0, Lcom/google/android/finsky/billing/Instrument;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    return-object v0
.end method

.method public getCompleteParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFopVersion()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentFamily()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v0

    return v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDisabledReasonList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMessages()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDisabledReasonCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/billing/Instrument;->mCheckoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/Instrument;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
