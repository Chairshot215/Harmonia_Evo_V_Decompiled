.class public abstract Lcom/google/android/finsky/billing/InstrumentFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "InstrumentFlow.java"

# interfaces
.implements Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# instance fields
.field private final mAsyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

.field private mCheckoutToken:Ljava/lang/String;

.field private mHasRetried:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "asyncAuthenticator"
    .parameter "parameters"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 45
    iput-object p3, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mAsyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    .line 46
    return-void
.end method


# virtual methods
.method protected finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, result:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasRedeemedOffer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .restart local v0       #result:Landroid/os/Bundle;
    const-string v1, "redeemed_offer_message_html"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/InstrumentFlow;->finish(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method protected getAuthTokenAndContinue(Z)V
    .locals 2
    .parameter "isRetry"

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mHasRetried:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 72
    const-string v0, "Invalid token after retry, giving up."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070103

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/InstrumentFlow;->fail(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    const-string v0, "Invalid token, fetching fresh one."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mHasRetried:Z

    .line 80
    iget-object v1, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mAsyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mCheckoutToken:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p0, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mCheckoutToken:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->performRequestWithToken(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onError(Lcom/android/volley/AuthFailureError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 91
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/InstrumentFlow;->fail(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public abstract performRequestWithToken(Ljava/lang/String;)V
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 56
    const-string v0, "InstrumentFlow.is_retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mHasRetried:Z

    .line 57
    const-string v0, "InstrumentFlow.token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mCheckoutToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 50
    const-string v0, "InstrumentFlow.is_retry"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mHasRetried:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string v0, "InstrumentFlow.token"

    iget-object v1, p0, Lcom/google/android/finsky/billing/InstrumentFlow;->mCheckoutToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
