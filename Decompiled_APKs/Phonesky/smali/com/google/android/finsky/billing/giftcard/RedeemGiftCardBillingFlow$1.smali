.class Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;
.super Ljava/lang/Object;
.source "RedeemGiftCardBillingFlow.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->fetchInstrumentSetupInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    #calls: Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->getAuthTokenAndContinue(Z)V
    invoke-static {v2, v5}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->access$000(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Z)V

    .line 173
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, setupInfo:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getSetupInfoCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 160
    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getSetupInfo(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    move-result-object v1

    .line 162
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getInstrumentFamily()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    #calls: Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->updateFragmentFromSetupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)V
    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->access$100(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)V

    .line 166
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    sget-object v3, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    #calls: Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->access$200(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v2, "Gift cards not supported."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
    invoke-static {v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->access$300(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showError(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)V

    return-void
.end method
