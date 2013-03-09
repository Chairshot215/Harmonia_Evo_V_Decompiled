.class public Lcom/google/android/finsky/billing/CheckoutPurchase;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/CheckoutPurchase$2;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Error;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;"
    }
.end annotation


# static fields
.field private static sValidTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAddInstrumentHintText:Ljava/lang/String;

.field private final mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

.field private mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private mCheckoutToken:Ljava/lang/String;

.field private mCompleteChallengeResponses:Landroid/os/Bundle;

.field private mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private mCompletingHasAcceptedTos:Z

.field private mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mCompletingRiskHeader:Ljava/lang/String;

.field private mConfirmButtonText:Ljava/lang/String;

.field private mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mEligibleInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mExtraPurchaseData:Landroid/os/Bundle;

.field private final mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentRequired:Z

.field private mInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckoutTokenRetry:Z

.field private mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

.field private mNumAuthRetries:I

.field private final mOfferType:I

.field private mPinAuthenticated:Z

.field private mPrepareChallengeResponses:Landroid/os/Bundle;

.field private mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPreparingRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

.field private mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field private mTosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    .line 113
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v8

    const/4 v3, 0x4

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v8, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-static {}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->values()[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .parameter "dfeApi"
    .parameter "checkoutTokenAuthenticator"
    .parameter "instrumentFactory"
    .parameter "purchaseStatusListener"
    .parameter "doc"
    .parameter "offerType"

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 329
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    .line 330
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstruments:Ljava/util/List;

    .line 332
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 334
    iput-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    .line 335
    iput-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 394
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    .line 395
    iput-object p3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 396
    iput-object p4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    .line 397
    iput-object p5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 398
    iput p6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    .line 399
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method

.method private cancelCurrentAction()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 760
    :cond_0
    return-void
.end method

.method private checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, p1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This operation is only valid in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_0
    return-void
.end method

.method private checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 819
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition from state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    return-void
.end method

.method private checkTosAcceptance()V
    .locals 2

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const-string v0, "TOSes to accept present, not all were accepted!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :cond_0
    return-void
.end method

.method private extractExtraPurchaseData(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Landroid/os/Bundle;
    .locals 6
    .parameter "response"

    .prologue
    .line 679
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 680
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 681
    .local v3, mutation:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasInAppDetails()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getInAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    move-result-object v2

    .line 688
    .local v2, inAppDetails:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignature()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 690
    .local v0, extraParams:Landroid/os/Bundle;
    const-string v4, "inapp_signed_purchase_data"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignedPurchaseData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v4, "inapp_purchase_data_signature"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .end local v0           #extraParams:Landroid/os/Bundle;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inAppDetails:Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    .end local v3           #mutation:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAuthTokenAsyncAndPerformRequest()V
    .locals 2

    .prologue
    .line 915
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p0, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V

    .line 916
    return-void

    .line 915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFopVersionFromOption(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;)I
    .locals 1
    .parameter "option"

    .prologue
    .line 1072
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v0

    .line 1075
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 5
    .parameter "purchaseStatusResponse"

    .prologue
    const/4 v4, 0x0

    .line 656
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->extractExtraPurchaseData(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mExtraPurchaseData:Landroid/os/Bundle;

    .line 657
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;Ljava/lang/String;)V

    .line 661
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 664
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, -0x1

    const v3, 0x7f07006e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 667
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->PURCHASE_FAILED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 670
    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0
.end method

.method private pollStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "purchaseStatusUrl"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase$1;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    invoke-interface {v0, p1, v1, p0}, Lcom/google/android/finsky/api/DfeApi;->getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 653
    return-void
.end method

.method private populateFieldsFromPrepareResponse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1003
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1004
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1006
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 1007
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getFopVersionFromOption(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;)I

    move-result v2

    .line 1008
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1009
    const-string v3, "Ignoring instrument [%s,id=%s]. Instrument %d family version %d not supported."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1017
    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v5

    invoke-virtual {v4, v5, v2, v0, v3}, Lcom/google/android/finsky/billing/InstrumentFactory;->get(IILcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    .line 1019
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSelectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iput-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstruments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1026
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 1027
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    .line 1028
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1030
    const-string v2, "Ignoring eligible instrument family %d. Not supported."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1034
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->updateStatus(IILcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 1036
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddText(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1038
    const-string v2, "Ignoring eligible instrument family %d. Valid add text not found."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1042
    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstruments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1045
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstruments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1049
    iput-boolean v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 1054
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1055
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    .line 1058
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 1059
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1065
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1067
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1050
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getAddInstrumentPromptHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    goto :goto_2

    .line 1069
    :cond_9
    return-void
.end method

.method private queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 18
    .parameter "instrument"

    .prologue
    .line 882
    if-eqz p1, :cond_3

    .line 883
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 884
    .local v5, additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->mapFromBundleStrings(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 885
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    if-eqz v1, :cond_2

    .line 887
    const-string v1, "pcauth"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v16

    .line 897
    .local v16, checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/Instrument;->getCompleteParams()Ljava/util/Map;

    move-result-object v17

    .line 898
    .local v17, completeParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_1

    .line 899
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 901
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getEncodedAdjustedCart()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-interface/range {v1 .. v10}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 911
    .end local v5           #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .end local v17           #completeParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 889
    .restart local v5       #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/google/android/finsky/config/G;->gaiaAuthValidityMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v1, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 893
    const-string v1, "pcauth"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 905
    .end local v5           #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 906
    const-string v1, "Instrument is required, but completing request does not have any"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object/from16 v14, p0

    move-object/from16 v15, p0

    invoke-interface/range {v6 .. v15}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method private queuePreparingRequest()V
    .locals 13

    .prologue
    .line 854
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 855
    .local v9, additionalParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAllPrepareParameters()Ljava/util/Map;

    move-result-object v12

    .line 856
    .local v12, instrumentParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 857
    invoke-interface {v9, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->mapFromBundleStrings(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 860
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget v4, v4, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v5, v5, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v6, v6, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget v7, v7, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v8, v8, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    move-object v10, p0

    move-object v11, p0

    invoke-interface/range {v0 .. v11}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 874
    :goto_0
    return-void

    .line 871
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    move-object v10, p0

    move-object v11, p0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private retryLastRequest()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in state PREPARING or COMPLETING for retry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 924
    return-void
.end method

.method private setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"
    .parameter "volleyError"

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 748
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 749
    const-string v0, "type=%s, code=%d, message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 751
    return-void
.end method

.method private transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 770
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 771
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->cancelCurrentAction()V

    .line 772
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 773
    .local v0, from:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 774
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 777
    :cond_0
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$2;->$SwitchMap$com$google$android$finsky$billing$CheckoutPurchase$State:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 802
    :goto_0
    :pswitch_0
    return-void

    .line 779
    :pswitch_1
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 780
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    .line 781
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    goto :goto_0

    .line 789
    :pswitch_2
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 790
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    goto :goto_0

    .line 796
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->pollStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public answerChallenge(Landroid/os/Bundle;)V
    .locals 3
    .parameter "challengeResponse"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v1, v2, :cond_0

    .line 613
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 617
    .local v0, challenges:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 618
    return-void

    .line 615
    .end local v0           #challenges:Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public areAllTossesAccepted()Z
    .locals 3

    .prologue
    .line 835
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 836
    .local v1, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    iget-boolean v2, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    if-nez v2, :cond_0

    .line 837
    const/4 v2, 0x0

    .line 840
    .end local v1           #tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 483
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 484
    return-void
.end method

.method public complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V
    .locals 3
    .parameter "instrument"
    .parameter "riskHeader"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot complete in current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkTosAcceptance()V

    .line 635
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    .line 640
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 641
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 642
    return-void

    .line 639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 488
    return-void
.end method

.method public getAddInstrumentHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    return-object v0
.end method

.method public getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 1

    .prologue
    .line 508
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 509
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getConfirmButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    return-object v0
.end method

.method public getEligibleInstruments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstruments:Ljava/util/List;

    return-object v0
.end method

.method public getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    .locals 1

    .prologue
    .line 719
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 720
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    return-object v0
.end method

.method public getExtraPurchaseData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 707
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mExtraPurchaseData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;
    .locals 3
    .parameter "instrumentId"

    .prologue
    .line 547
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/Instrument;

    .line 548
    .local v1, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    .end local v1           #instrument:Lcom/google/android/finsky/billing/Instrument;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstruments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    return-object v0
.end method

.method public getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1

    .prologue
    .line 714
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method

.method public getToses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public hasAddInstrumentHintText()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfirmButtonText()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstrumentRequired()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    return v0
.end method

.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    .line 1082
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$2;->$SwitchMap$com$google$android$finsky$billing$CheckoutPurchase$State:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1090
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know which request to send for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queuePreparingRequest()V

    .line 1093
    :goto_0
    return-void

    .line 1087
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V

    goto :goto_0

    .line 1082
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/android/volley/AuthFailureError;)V
    .locals 5
    .parameter

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not retrieve Checkout auth token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v4, :cond_0

    const v0, 0x7f07005e

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 1102
    return-void

    .line 1098
    :cond_0
    const v0, 0x7f07005f

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 10
    .parameter "error"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 929
    instance-of v3, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v3, :cond_2

    .line 930
    const-string v3, "Auth failure. Retry [n=%d,max=%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 931
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 932
    .local v0, authFailureError:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 933
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 949
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_0
    :goto_0
    return-void

    .line 934
    .restart local v0       #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_1
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    if-ge v3, v9, :cond_0

    .line 936
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 937
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_0

    .line 940
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_2
    const-string v3, "%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 942
    .local v1, errorType:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    instance-of v3, p1, Lcom/android/volley/ServerError;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/volley/NetworkError;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_4

    .line 944
    :cond_3
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 946
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, message:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-direct {v3, v1, v6, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const v5, 0x7f07005e

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 954
    iput v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 955
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "Checkout token still invalid after having sent a fresh one."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 1000
    :goto_0
    return-void

    .line 962
    :cond_0
    const-string v0, "Checkout token invalid, invalidating and retrying request."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 964
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_0

    .line 967
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 968
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_5

    .line 969
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 970
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 971
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 973
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromPrepareResponse()V

    .line 977
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0

    .line 979
    :cond_4
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_9

    .line 983
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 984
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 985
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 995
    :goto_1
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    goto :goto_0

    .line 986
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 987
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    goto :goto_1

    .line 988
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 989
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_1

    .line 991
    :cond_8
    const-string v0, "BuyResponse without purchaseStatusUrl."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_1

    .line 997
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received network response while in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 499
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 438
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    .line 439
    .local v2, restoredState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 440
    const-string v3, "iab_parameters"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 442
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v2, v3, :cond_0

    .line 443
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 444
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 479
    :goto_0
    return-void

    .line 446
    :cond_0
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v2, v3, :cond_1

    .line 448
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v5, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    const v7, 0x7f070060

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 452
    :cond_1
    const-string v3, "prepare_response"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    const-string v3, "prepare_response"

    invoke-static {p1, v3}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 454
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromPrepareResponse()V

    .line 456
    :cond_2
    const-string v3, "instrument_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    const-string v3, "instrument_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, instrumentId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 459
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v3, :cond_3

    .line 460
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find instrument with persisted ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    .end local v0           #instrumentId:Ljava/lang/String;
    :cond_3
    const-string v3, "risk_header"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    const-string v3, "risk_header"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 467
    :cond_4
    const-string v3, "rejected_instrument"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 468
    const-string v3, "rejected_instrument"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 470
    .local v1, rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 472
    .end local v1           #rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    :cond_5
    const-string v3, "extra_purchase_data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 473
    const-string v3, "extra_purchase_data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mExtraPurchaseData:Landroid/os/Bundle;

    .line 475
    :cond_6
    const-string v3, "pin_authenticated"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 476
    const-string v3, "prepare_challenge_responses"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 477
    const-string v3, "complete_challenge_responses"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    .line 478
    iput-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    goto/16 :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 403
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "error"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 405
    const-string v0, "num_auth_retries"

    iget v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    const-string v0, "checkout_token"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "pin_authenticated"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "iab_parameters"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "prepare_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_2

    .line 416
    const-string v0, "complete_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_3

    .line 420
    const-string v0, "instrument_id"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 423
    const-string v0, "risk_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_5

    .line 426
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mExtraPurchaseData:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 430
    const-string v0, "extra_purchase_data"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mExtraPurchaseData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 432
    :cond_6
    const-string v0, "prepare_challenge_responses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 433
    const-string v0, "complete_challenge_responses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method public setDevicePinAuthenticated()V
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 740
    return-void
.end method

.method public setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V
    .locals 0
    .parameter "iabParameters"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 583
    return-void
.end method
