.class public Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateCreditCardFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;,
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;,
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;,
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

.field private mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mCreditCardNumber:Ljava/lang/String;

.field private mCvc:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "checkoutAuthenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 109
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 117
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 131
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 132
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 133
    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 134
    if-eqz p6, :cond_1

    .line 135
    const-string v0, "ui_mode"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "ui_mode"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 139
    :cond_0
    const-string v0, "referrer_url"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerUrl:Ljava/lang/String;

    .line 140
    const-string v0, "referrer_list_cookie"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 142
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private static allCorporaEnabled()Z
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    .line 230
    .local v0, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->enableUi(Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 272
    return-void
.end method

.method private isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .locals 2
    .parameter "updateFopResponse"

    .prologue
    .line 279
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
    .line 283
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
    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCreditCardError?error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private queueEscrowCredentialsRequest()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 294
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    xor-long v2, v3, v7

    invoke-direct {v6, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 295
    .local v6, rnd:Ljava/util/Random;
    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 296
    .local v1, userId:I
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;

    invoke-direct {v4, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;

    invoke-direct {v5, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 298
    .local v0, escrowRequest:Lcom/google/android/finsky/billing/creditcard/EscrowRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 300
    iput-object v9, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    .line 301
    iput-object v9, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    .line 302
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlMessage"

    .prologue
    const/4 v2, 0x0

    .line 356
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 357
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 358
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    const-string v0, "No fragment manager, swallowing error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0
.end method

.method private showErrorWithChoice(Ljava/lang/String;)V
    .locals 4
    .parameter "htmlMessage"

    .prologue
    .line 342
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 343
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 344
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 345
    const-string v1, "No fragment manager, swallowing error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    const v1, 0x7f0700dd

    const v2, 0x7f0700dc

    invoke-static {p1, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 350
    .local v0, sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 352
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_with_choice"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->displayErrors(Ljava/util/List;)V

    .line 276
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->enableUi(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 265
    return-void
.end method


# virtual methods
.method public back()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->cancel()V

    .line 247
    return-void
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

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
    .line 251
    const-string v0, "addCreditCardCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 252
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 253
    return-void
.end method

.method public onAddCreditCardResult(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 2
    .parameter "result"
    .parameter "creditCardNumber"
    .parameter "cvc"
    .parameter "instrument"

    .prologue
    .line 307
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_1

    .line 308
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    .line 309
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    .line 310
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 311
    const-string v0, "addCreditCardConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_3

    .line 314
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 315
    const-string v0, "Add credit card canceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->cancel()V

    goto :goto_0

    .line 318
    :cond_3
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_0

    .line 319
    const-string v0, "UNKNOWN"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 336
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 332
    return-void
.end method

.method public onInitializing()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const/high16 v1, 0x7f07

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 327
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 369
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 370
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method protected performNext()V
    .locals 6

    .prologue
    const v5, 0x7f070061

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_1

    .line 188
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mParameters:Landroid/os/Bundle;

    const-string v2, "cardholder_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, cardholderName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->allCorporaEnabled()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->newInstance(Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    .line 192
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setOnResultListener(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const v3, 0x7f07003f

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 226
    .end local v0           #cardholderName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_2

    .line 195
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 196
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showProgress()V

    .line 197
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->queueEscrowCredentialsRequest()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_3

    .line 199
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 200
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 203
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v1, :cond_4

    .line 204
    const-string v1, "AddCreditCard Response is null."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const-string v1, "UNKNOWN"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    const-string v1, "addCreditCardSuccess"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->DONE:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 210
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_0

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 216
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_0

    .line 218
    :cond_7
    const-string v1, "UNKNOWN"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 220
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showErrorWithChoice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_8
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 288
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 289
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 290
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 291
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 156
    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->finish()V

    .line 163
    :cond_1
    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setOnResultListener(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;)V

    .line 168
    :cond_2
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 177
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "addCreditCard"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 148
    return-void
.end method
