.class public Lcom/google/android/finsky/billing/UpdateAddressFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "UpdateAddressFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/UpdateAddressFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mHeaderText:Ljava/lang/String;

.field private mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mInstrumentDisplayName:Ljava/lang/String;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field private mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

.field private mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "checkoutAuthenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 69
    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 92
    iput-object p4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 93
    iput-object p5, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 94
    if-eqz p6, :cond_0

    .line 95
    const-string v1, "referrer_url"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    .line 96
    const-string v1, "referrer_list_cookie"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 97
    const-string v1, "update_address_header"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 99
    const-string v1, "extra_paramters"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, extraParams:Landroid/os/Bundle;
    const-string v1, "rejected_instrument"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 102
    const-string v1, "instrument_display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 105
    .end local v0           #extraParams:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 261
    return-void
.end method

.method private isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .locals 2
    .parameter "updateFopResponse"

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .locals 1
    .parameter "updateFopResponse"

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlMessage"

    .prologue
    const/4 v2, 0x0

    .line 289
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 290
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    const-string v0, "No fragment manager, swallowing error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0
.end method

.method private showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->displayErrors(Ljava/util/List;)V

    .line 265
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 254
    return-void
.end method


# virtual methods
.method public back()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    .line 236
    return-void
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 240
    const-string v0, "updateAddressCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 241
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 242
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 284
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 161
    return-void
.end method

.method public onInitializing()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const/high16 v1, 0x7f07

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 156
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 302
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 303
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onUpdateAddressResult(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 2
    .parameter "result"
    .parameter "instrument"

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_1

    .line 166
    iput-object p2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_3

    .line 169
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 170
    const-string v0, "Update address canceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    goto :goto_0

    .line 173
    :cond_3
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected performNext()V
    .locals 6

    .prologue
    const v3, 0x7f070073

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_1

    .line 189
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iget-object v3, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const v2, 0x7f07006f

    invoke-interface {v0, v1, v2, v5}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 194
    const-string v0, "updateAddress"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_2

    .line 196
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 197
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showProgress()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_3

    .line 202
    const-string v0, "Null response to an update address request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 204
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 207
    const-string v0, "updateAddressSuccess"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    .line 214
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 221
    :goto_1
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_7
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .locals 2
    .parameter "checkoutToken"

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 278
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 279
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 280
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 118
    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 119
    const-string v0, "update_address_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finish()V

    .line 126
    :cond_1
    const-string v0, "update_address_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "update_address_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/UpdateAddressFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 132
    :cond_2
    const-string v0, "instrument_display_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 134
    const-string v0, "rejected_instrument"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 136
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    const-string v0, "instrument_display_name"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "update_address_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "update_address_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 150
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 110
    return-void
.end method
