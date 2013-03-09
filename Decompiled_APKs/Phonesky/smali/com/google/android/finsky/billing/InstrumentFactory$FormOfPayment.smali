.class public abstract Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;
.super Ljava/lang/Object;
.source "InstrumentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/InstrumentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FormOfPayment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canAdd()Z
.end method

.method public abstract create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public abstract get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
.end method

.method public abstract getAddIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAddText()Ljava/lang/String;
.end method

.method public getCreateIntent(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "eligibleInstrument"
    .parameter "accountName"
    .parameter "backendId"
    .parameter "uiMode"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"

    .prologue
    .line 117
    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPrepareParams()Ljava/util/Map;
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
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUpdateAddressText()Ljava/lang/String;
.end method

.method public abstract updateAddress(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter "instrument"

    .prologue
    .line 99
    return-void
.end method
