.class public Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "RedeemGiftCardBillingFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$2;,
        Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private mCheckedCheckboxIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCountry:Ljava/lang/String;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mPin:Ljava/lang/String;

.field private mPreviousChallengeState:Landroid/os/Bundle;

.field private mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

.field private mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "dfeApi"
    .parameter "asyncAuthenticator"
    .parameter "parameters"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 66
    iput-object p3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->getAuthTokenAndContinue(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->updateFragmentFromSetupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    return-object v0
.end method

.method private fetchInstrumentSetupInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "authToken"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCountry:Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$1;-><init>(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;)V

    move-object v3, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->instrumentSetupInfo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 176
    return-void
.end method

.method private redeemGiftCard(Ljava/lang/String;)V
    .locals 5
    .parameter "authToken"

    .prologue
    .line 219
    new-instance v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setGiftCardPin(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    move-result-object v2

    .line 221
    .local v2, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    invoke-virtual {v2, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    .line 222
    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCheckedCheckboxIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCheckedCheckboxIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, checkedCheckboxId:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->addAcceptedLegalDocumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    goto :goto_0

    .line 230
    .end local v0           #checkedCheckboxId:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v3, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->redeemGiftCard(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 231
    return-void
.end method

.method private transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 131
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$2;->$SwitchMap$com$google$android$finsky$billing$giftcard$RedeemGiftCardBillingFlow$State:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToLoading()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToProgress()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToRedeemForm()V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToContinueForm()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateFragmentFromSetupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)V
    .locals 4
    .parameter "setupInfo"

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasFormattedAmount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setBalance(Ljava/lang/String;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setFooters(Ljava/util/List;)V

    .line 186
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V

    .line 191
    iput-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    .line 196
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setBalance(Ljava/lang/String;)V

    .line 183
    const-string v0, "Didn\'t receive gift card balance."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)V

    goto :goto_1
.end method


# virtual methods
.method public back()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->cancel()V

    .line 86
    return-void
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->finish()V

    .line 216
    return-void
.end method

.method public onCountrySwitch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "countryCode"
    .parameter "currentChallengeState"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCountry:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    .line 210
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    .line 211
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "volleyError"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v3, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 276
    .local v1, finish:Z
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showError(Ljava/lang/String;Z)V

    .line 278
    sget-object v2, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    .line 279
    return-void

    .line 275
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #finish:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRedeem(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "pinCode"
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, checkedCheckboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPin:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 202
    iput-object p3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCheckedCheckboxIds:Ljava/util/ArrayList;

    .line 203
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    .line 204
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)V
    .locals 4
    .parameter "redeemGiftCardResponse"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->getAuthTokenAndContinue(Z)V

    .line 270
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    const-string v0, "Received error result code: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasUserMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showError(Ljava/lang/String;Z)V

    .line 268
    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->clearGiftCardCode()V

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getBalanceHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setBalance(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setUserMessage(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mParameters:Landroid/os/Bundle;

    const-string v1, "entry_point_menu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_CONTINUE_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0

    .line 250
    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V

    .line 260
    :goto_1
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0

    .line 258
    :cond_3
    const-string v0, "INPUT_VALIDATION_ERROR received without challenge."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)V

    return-void
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-ne v0, v1, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->fetchInstrumentSetupInfo(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->redeemGiftCard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setListener(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;)V

    .line 93
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 94
    const-string v0, "country"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCountry:Ljava/lang/String;

    .line 95
    const-string v0, "previous_challenge_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_CONTINUE_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-eq v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->clearGiftCardCode()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 124
    :cond_1
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mState:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "country"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "previous_challenge_state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mPreviousChallengeState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mParameters:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->newInstance(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setListener(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->mRedeemGiftCardFragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    const v2, 0x7f07007d

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 75
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;->transitionToState(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;)V

    .line 76
    return-void
.end method
