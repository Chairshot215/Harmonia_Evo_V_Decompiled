.class public Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;
.super Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;
.source "GiftCardFormOfPayment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment$GiftCardInstrument;
    }
.end annotation


# instance fields
.field private mAddLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;-><init>()V

    return-void
.end method

.method public static registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 42
    const/16 v0, 0x64

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(ILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 43
    return-void
.end method


# virtual methods
.method public canAdd()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 9
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 65
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v6

    .line 67
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_0

    .line 68
    const-string v0, "Invalid account passed in parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    .line 72
    .local v3, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v8, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v1, v6, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 74
    .local v8, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    new-instance v4, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v4, v8}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
    .locals 1
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment$GiftCardInstrument;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment$GiftCardInstrument;-><init>(Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getAddIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->mAddLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->mAddLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreateIntent(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "eligibleInstrument"
    .parameter "accountName"
    .parameter "backendId"
    .parameter "uiMode"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p2, p3, v0, p5, p6}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->createIntent(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAddressText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAddress(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 1
    .parameter "instrument"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->mAddLabel:Ljava/lang/String;

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->mAddLabel:Ljava/lang/String;

    goto :goto_0
.end method
