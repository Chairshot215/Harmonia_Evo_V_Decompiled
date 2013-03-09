.class public Lcom/google/android/finsky/activities/PurchaseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;
.implements Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;
.implements Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountNameView:Landroid/widget/TextView;

.field private mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

.field private mAccountPayWithView:Landroid/view/View;

.field private mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

.field private mAccountSeparator:Landroid/view/View;

.field private mAccountSeparatorWrapper:Landroid/view/View;

.field private mAcquireButton:Landroid/widget/Button;

.field private mAddInstrumentButton:Landroid/widget/Button;

.field private mAddInstrumentScreenShown:Z

.field private mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

.field private mChallenging:Z

.field private mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

.field private mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mContinueUrl:Ljava/lang/String;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mExternalReferrer:Ljava/lang/String;

.field private mExtraDetailsContainer:Landroid/view/ViewGroup;

.field private mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mFinishedWithSuccess:Z

.field private mFooterContainer:Landroid/view/ViewGroup;

.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentsRegistered:Z

.field private mIsDirectPurchase:Z

.field private mIsRetainedInstance:Z

.field private mLastSelectedInstrumentId:Ljava/lang/String;

.field private mLeadingStrip:Landroid/view/View;

.field private mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

.field private mOfferType:I

.field private mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

.field private mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

.field private mPurchaseRow:Landroid/view/View;

.field private mPurchaseRowFooter:Landroid/view/View;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerCookie:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectInstrumentFamilyButton:Landroid/widget/Button;

.field private mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mViewStates:Landroid/os/Bundle;

.field private mWalletByline:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 145
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$1;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    .line 298
    new-instance v0, Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/InstrumentFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 2000
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/BillingFlow;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->loadBillingCountries()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->registerInstrumentFactories()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcb2Provisioning()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->beginCheckout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onUpdateAddressResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    return-object v0
.end method

.method private answerChallenge(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1447
    if-eqz p1, :cond_0

    const-string v0, "challenge_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    const-string v0, "challenge_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1451
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->answerChallenge(Landroid/os/Bundle;)V

    .line 1453
    :cond_0
    return-void
.end method

.method private attemptDocLoadFromPurchaseDocId()V
    .locals 4

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, purchaseId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 959
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$7;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$7;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 970
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$8;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$8;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 976
    return-void
.end method

.method private beginCheckout()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1009
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1011
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1014
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    const-string v0, "Purchase Lock set, but no PIN code set.  Allowing purchase."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    .line 1038
    :goto_1
    return-void

    .line 1018
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinLock.purchase?doc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "pinLock.purchase"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1024
    const v2, 0x7f0701cf

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v7}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1026
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1030
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pinLock.none?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "pinLock.none"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "cidi"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private buildCompleteAnalyticsExtra()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1844
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v0, :cond_0

    .line 1845
    const-string v0, "mSelectedInstrument cannot be null here."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1846
    const-string v0, ""

    .line 1857
    :goto_0
    return-object v0

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v3

    .line 1849
    const/4 v0, 0x0

    .line 1850
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    .line 1851
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1853
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move-object v1, v0

    .line 1855
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1856
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1857
    :goto_3
    const-string v4, "instrumentFamily=%d&priceCurrency=%s&priceMicros=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1855
    :cond_1
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    .line 1856
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private buildCompleteFlowParameters()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1711
    const-string v1, "referrer_url"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v1, "referrer_list_cookie"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-object v0
.end method

.method private buildViewAnalyticsExtra()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1800
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_0

    .line 1801
    const-string v0, "mCheckoutPurchase cannot be null here."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    const-string v0, ""

    .line 1837
    :goto_0
    return-object v0

    .line 1805
    :cond_0
    const/4 v0, 0x0

    .line 1806
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    .line 1807
    if-eqz v2, :cond_2

    .line 1808
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v1

    .line 1809
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 1810
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1812
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    :cond_1
    move v2, v1

    move-object v1, v0

    .line 1822
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/Instrument;

    .line 1825
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    .line 1826
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1815
    :cond_2
    const/4 v1, -0x1

    .line 1816
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v2

    .line 1817
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1819
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 1825
    goto :goto_3

    .line 1828
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v6

    .line 1829
    :goto_4
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1831
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 1832
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move v3, v7

    .line 1828
    goto :goto_4

    .line 1834
    :cond_6
    const-string v0, ","

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1835
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1836
    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1837
    :goto_7
    const-string v10, "defaultInstrumentFamily=%d&hasTos=%s&priceCurrency=%s&priceMicros=%d&availableFamilies=%s&invalidFamilies=%s&eligibleFamilies=%s"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v6

    const/4 v2, 0x2

    aput-object v8, v11, v2

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v2

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v9, v11, v0

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1835
    :cond_7
    const-string v0, ""

    move-object v8, v0

    goto :goto_6

    .line 1836
    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_7

    :cond_9
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1
.end method

.method private checkForInstallationState()V
    .locals 9

    .prologue
    .line 634
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v7

    .line 635
    .local v7, appStates:Lcom/google/android/finsky/appstate/AppStates;
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v6

    .line 636
    .local v6, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, v6, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v8, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 639
    .local v8, installedVersion:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 640
    const v1, 0x7f07014d

    const/4 v2, -0x1

    const v3, 0x7f07019f

    const/4 v4, 0x3

    const-string v5, "already_installed_app"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedOrInstalledDialog(IIIILjava/lang/String;)V

    .line 649
    .end local v8           #installedVersion:I
    :cond_0
    return-void
.end method

.method private checkForMultiUserCertificateConflict()V
    .locals 6

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isMultiUserCertificateConflict(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const v1, 0x7f07014e

    const/4 v2, -0x1

    const v3, 0x7f07019f

    const/4 v4, 0x5

    const-string v5, "already_installed_other_user"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedOrInstalledDialog(IIIILjava/lang/String;)V

    .line 666
    :cond_0
    return-void
.end method

.method private completeCheckoutPurchase()V
    .locals 4

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completePurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1721
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->logCompletePurchaseEvent()V

    .line 1725
    invoke-static {}, Lcom/google/android/finsky/billing/BillingUtils;->getRiskHeader()Ljava/lang/String;

    move-result-object v0

    .line 1726
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V

    .line 1728
    :cond_0
    return-void
.end method

.method private continueCheckout()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->runCompleteFlowAndCompleteCheckoutPurchase()V

    .line 1091
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueFreeCheckout()V

    goto :goto_0
.end method

.method private continueCheckoutSizeCheck()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1046
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1047
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v2

    .line 1048
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    .line 1049
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobile()J

    move-result-wide v5

    .line 1050
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 1052
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    invoke-static {v0}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-ltz v3, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1057
    const-string v0, "wifi_download_dialog"

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gez v0, :cond_1

    move v0, v1

    .line 1068
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v2

    .line 1069
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;ZZZ)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    move-result-object v0

    .line 1071
    const-string v1, "wifi_download_dialog"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1076
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 1079
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    goto :goto_0
.end method

.method private continueFreeCheckout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1094
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmFreeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "confirmFreeDownload"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cidi"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    .line 1109
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V

    goto :goto_0
.end method

.method private documentSuccessfullyFound()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 921
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToData()V

    .line 922
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    .line 923
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    .line 924
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    .line 925
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "continue_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 929
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDataChanged()V

    .line 930
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 932
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchase?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "purchase"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "cidi"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 938
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeBilling()V

    .line 948
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 949
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 941
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "freeDownload"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "cidi"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFreeUi()V

    goto :goto_0
.end method

.method private fillInTosses()V
    .locals 8

    .prologue
    .line 1185
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0046

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1187
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0801b7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1188
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1189
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1190
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 1191
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getShorthand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 1192
    const v2, 0x7f0400e3

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1193
    const v2, 0x7f0801ca

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1194
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getAcceptance()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1195
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1196
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1197
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1198
    const v1, 0x7f0801cb

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1199
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1201
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1203
    :cond_0
    return-void
.end method

.method private finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1887
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1889
    iput-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_1

    .line 1892
    const-string v0, "Ignoring second error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1906
    :goto_0
    return-void

    .line 1895
    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1896
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1897
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v0, :cond_2

    .line 1898
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1900
    :cond_2
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1901
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1903
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_0
.end method

.method private finishWithSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1909
    const/4 v0, 0x0

    .line 1910
    .local v0, extraPurchaseData:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v3, :cond_0

    .line 1911
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getExtraPurchaseData()Landroid/os/Bundle;

    move-result-object v0

    .line 1912
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1913
    iput-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1915
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-eqz v3, :cond_1

    .line 1932
    :goto_0
    return-void

    .line 1918
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1919
    iput-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1920
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v3, :cond_2

    .line 1921
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v3, v0}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1923
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1924
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_0

    .line 1926
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 1927
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "docId_to_purchase"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1928
    .local v1, purchaseDocId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1929
    .local v2, purchaseDocUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getLibrary()Lcom/google/android/finsky/library/Library;
    .locals 2

    .prologue
    .line 1284
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    return-object v0
.end method

.method private initializeBilling()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 846
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$5;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initializeDcb2Provisioning()V
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$6;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingProvisioning(Ljava/lang/Runnable;)V

    .line 873
    return-void
.end method

.method private isEveryTosAccepted()Z
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreeUi()Z
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstrumentRequired()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBillingCountries()V
    .locals 3

    .prologue
    .line 886
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 887
    .local v0, billingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 888
    return-void
.end method

.method private logViewPurchaseEvent()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1751
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_0

    .line 1752
    const-string v0, "mCheckoutPurchase cannot be null here."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1797
    :goto_0
    return-void

    .line 1756
    :cond_0
    const/4 v0, 0x0

    .line 1757
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    .line 1758
    if-eqz v2, :cond_2

    .line 1759
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v1

    .line 1760
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 1761
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1763
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    :cond_1
    move v2, v1

    move-object v1, v0

    .line 1773
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1775
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/Instrument;

    .line 1776
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    .line 1777
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1766
    :cond_2
    const/4 v1, -0x1

    .line 1767
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v2

    .line 1768
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1770
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 1776
    goto :goto_3

    .line 1779
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v6

    .line 1780
    :goto_4
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1782
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 1783
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move v3, v7

    .line 1779
    goto :goto_4

    .line 1785
    :cond_6
    const-string v0, ","

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1786
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1787
    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1788
    :goto_7
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v10

    const-string v11, "viewPurchase"

    const/16 v12, 0x10

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "cidi"

    aput-object v13, v12, v7

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x2

    const-string v7, "defaultInstrumentFamily"

    aput-object v7, v12, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v6

    const/4 v2, 0x4

    const-string v6, "hasTos"

    aput-object v6, v12, v2

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x6

    const-string v3, "priceCurrency"

    aput-object v3, v12, v2

    const/4 v2, 0x7

    aput-object v8, v12, v2

    const/16 v2, 0x8

    const-string v3, "priceMicros"

    aput-object v3, v12, v2

    const/16 v2, 0x9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v2

    const/16 v0, 0xa

    const-string v1, "availableFamilies"

    aput-object v1, v12, v0

    const/16 v0, 0xb

    aput-object v4, v12, v0

    const/16 v0, 0xc

    const-string v1, "invalidFamilies"

    aput-object v1, v12, v0

    const/16 v0, 0xd

    aput-object v5, v12, v0

    const/16 v0, 0xe

    const-string v1, "eligibleFamilies"

    aput-object v1, v12, v0

    const/16 v0, 0xf

    aput-object v9, v12, v0

    invoke-virtual {v10, v11, v12}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1786
    :cond_7
    const-string v0, ""

    move-object v8, v0

    goto :goto_6

    .line 1787
    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_7

    :cond_9
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 10
    .parameter "account"
    .parameter "sku"
    .parameter "iabParameters"

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v9

    .line 403
    .local v9, fragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    const-string v0, "iab_parameters"

    invoke-virtual {v9, v0, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 404
    return-object v9
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 2
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "referrerCookie"
    .parameter "isDirectLinkPurchase"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"

    .prologue
    .line 374
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;-><init>()V

    .line 375
    .local v0, purchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    const v1, 0x7f0e0042

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setTheme(I)V

    .line 376
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 377
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    const-string v1, "offer_type"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;I)V

    .line 379
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Z)V

    .line 382
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "continue_url"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1, p8}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v0
.end method

.method private onAddInstrumentError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1689
    return-void
.end method

.method private onAddInstrumentFinished(Z)V
    .locals 3
    .parameter "canceled"

    .prologue
    .line 1674
    if-nez p1, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1685
    :goto_0
    return-void

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(II)V

    goto :goto_0

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAddInstrumentResult(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1456
    if-nez p1, :cond_0

    .line 1459
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    .line 1471
    :goto_0
    return-void

    .line 1460
    :cond_0
    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    const-string v0, "billing_flow_error_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentError(Ljava/lang/String;)V

    goto :goto_0

    .line 1466
    :cond_1
    const-string v0, "billing_flow_canceled"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1469
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    goto :goto_0
.end method

.method private onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "document"

    .prologue
    .line 894
    if-nez p1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    .line 914
    :goto_0
    return-void

    .line 899
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 901
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, purchaseDocId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    .line 906
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    goto :goto_0

    .line 912
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->attemptDocLoadFromPurchaseDocId()V

    goto :goto_0
.end method

.method private onUpdateAddressResult(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1474
    if-eqz p1, :cond_0

    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    const-string v0, "Update Address error: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "billing_flow_error_message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1481
    return-void
.end method

.method private openDocument(Ljava/lang/String;)V
    .locals 2
    .parameter "docId"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 1937
    return-void
.end method

.method private registerInstrumentFactories()V
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentsRegistered:Z

    if-nez v0, :cond_0

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentsRegistered:Z

    .line 878
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 879
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 880
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;->registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 881
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->registerDcbInstrument(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 883
    :cond_0
    return-void
.end method

.method private restoreSelectedInstrumentAndBillingFlow()V
    .locals 3

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v0, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_2

    .line 1140
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(II)V

    .line 1146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    .line 1157
    :cond_1
    :goto_1
    return-void

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 1150
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_1

    .line 1151
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "selected_instrument_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "selected_instrument_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 1154
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private resumeBillingFlowFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_0

    const-string v0, "completing_billing_flow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1163
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 1168
    :cond_0
    return-void
.end method

.method private runCompleteFlowAndCompleteCheckoutPurchase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1692
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_3

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1694
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1695
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_2

    .line 1700
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    .line 1707
    :goto_0
    return-void

    .line 1702
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_0

    .line 1705
    :cond_3
    const-string v0, "No instrument selected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveViewStates(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1519
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1520
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 1523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1524
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 1525
    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1528
    :cond_0
    return-void
.end method

.method private setupFooters(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 6
    .parameter

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1328
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1329
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1330
    if-eqz p1, :cond_0

    .line 1331
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1335
    const v1, 0x7f0400de

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1337
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1339
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1341
    :cond_1
    return-void
.end method

.method private setupFreeUi()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToFreeUi()V

    .line 1172
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 1179
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 1180
    return-void

    :cond_0
    move v0, v1

    .line 1176
    goto :goto_0
.end method

.method private showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 8
    .parameter "eligibleInstrument"

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "Already showing add instrument screen, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 534
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/billing/InstrumentFactory;->getCreateIntent(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 537
    .local v7, intent:Landroid/content/Intent;
    const/16 v0, 0x1f

    invoke-virtual {p0, v7, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showAlreadyOwnedOrInstalledDialog(IIIILjava/lang/String;)V
    .locals 4
    .parameter "messageId"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"
    .parameter "requestCode"
    .parameter "tag"

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 695
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v2, "docId_to_purchase"

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p0, p4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 698
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCancelable(Z)V

    .line 699
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, p5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAvailabilityRestriction()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 669
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    .line 670
    .local v1, restriction:I
    if-ne v1, v4, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "availability_restriction"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v2

    const v3, 0x7f07019f

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 681
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v2, 0x4

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 682
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCancelable(Z)V

    .line 683
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "availability_restriction"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_0
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    .line 990
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    .line 991
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 7
    .parameter "selectedInstrument"
    .parameter "rejectedInstrument"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 544
    .local v6, intent:Landroid/content/Intent;
    const/16 v0, 0x21

    invoke-virtual {p0, v6, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method private startOrResumePurchase()V
    .locals 12

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1113
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_0

    .line 1114
    new-instance v1, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1116
    new-instance v8, Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v9, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    new-instance v10, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v10, v1}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    iget-object v11, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/billing/CheckoutPurchase;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;Lcom/google/android/finsky/api/model/Document;I)V

    iput-object v8, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1124
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checkout_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "checkout_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 1128
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 1133
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 1135
    :cond_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V

    .line 1131
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_0
.end method

.method private updateButtons()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 1223
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAvailabilityRestriction()V

    .line 1281
    :goto_0
    return-void

    .line 1234
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v4

    .line 1235
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1264
    :goto_1
    if-eqz v4, :cond_b

    .line 1265
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasConfirmButtonText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    :goto_2
    if-eqz v4, :cond_6

    .line 1251
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1243
    :cond_3
    if-eqz v4, :cond_4

    .line 1244
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    const v3, 0x7f0701ad

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1246
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_5

    const v0, 0x7f0701ae

    .line 1248
    :goto_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1246
    :cond_5
    const v0, 0x7f0701ac

    goto :goto_3

    .line 1253
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1255
    :goto_4
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    .line 1257
    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_a

    :cond_7
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v0, :cond_a

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 1253
    goto :goto_4

    :cond_9
    move v3, v2

    .line 1255
    goto :goto_5

    :cond_a
    move v1, v2

    .line 1257
    goto :goto_6

    .line 1267
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$9;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$9;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateSummaryAndFops()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1206
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 1210
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->fillInTosses()V

    .line 1211
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_0
.end method

.method private updateUiFromInstrument()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1288
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1289
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 1290
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_3

    move v0, v7

    .line 1293
    :goto_0
    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1295
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFooters(Lcom/google/android/finsky/billing/Instrument;)V

    .line 1296
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_4

    .line 1301
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1306
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->bind(Landroid/support/v4/app/FragmentManager;Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;ILjava/util/List;Z)V

    .line 1308
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1315
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1324
    :goto_3
    return-void

    :cond_3
    move v0, v8

    .line 1291
    goto/16 :goto_0

    .line 1303
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->showInstrumentAndPrice()V

    goto :goto_1

    :cond_5
    move v6, v8

    .line 1306
    goto :goto_2

    .line 1320
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070084

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 415
    const v0, 0x7f0400dc

    return v0
.end method

.method public handleBackPress()Z
    .locals 2

    .prologue
    .line 1435
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    .line 1437
    .local v0, state:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_0

    .line 1440
    const/4 v1, 0x1

    .line 1443
    .end local v0           #state:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 1670
    return-void
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logCompletePurchaseEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1731
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v0, :cond_0

    .line 1732
    const-string v0, "mSelectedInstrument cannot be null here."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    :goto_0
    return-void

    .line 1735
    :cond_0
    const/4 v0, 0x0

    .line 1736
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    .line 1737
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1739
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move-object v1, v0

    .line 1741
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1742
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1743
    :goto_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const-string v4, "completePurchase"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "cidi"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "instrumentFamily"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "priceCurrency"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const/4 v2, 0x6

    const-string v6, "priceMicros"

    aput-object v6, v5, v2

    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1741
    :cond_1
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    .line 1742
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 718
    if-eqz p1, :cond_0

    .line 719
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    .line 729
    if-eqz p1, :cond_4

    .line 730
    const-string v0, "last_selected_instrument_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 732
    const-string v0, "selected_eligible_instrument"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    const-string v0, "selected_eligible_instrument"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 736
    :cond_3
    const-string v0, "add_instrument_screen_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 738
    const-string v0, "suppress_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 739
    const-string v0, "finished_with_success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 740
    const-string v0, "finished_with_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 741
    const-string v0, "challenging"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_6

    .line 744
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindViews()V

    .line 775
    :cond_5
    :goto_1
    return-void

    .line 745
    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 746
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 748
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToLoadingImmediately()V

    .line 749
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_9

    .line 750
    :cond_8
    const-string v0, "PurchaseFragment finished. Not initializing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 753
    :cond_9
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 754
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$3;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$4;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 1345
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1346
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    .line 1351
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$10;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1358
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$11;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$11;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 1365
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setDevicePinAuthenticated()V

    .line 1366
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pinLock.purchase.complete?doc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "pinLock.purchase.complete"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "cidi"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$12;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$12;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1378
    :cond_2
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    .line 1379
    if-ne p2, v2, :cond_3

    .line 1380
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_0

    .line 1383
    :cond_3
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$13;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$13;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1390
    :cond_4
    const/16 v1, 0x21

    if-ne p1, v1, :cond_5

    .line 1392
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$14;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$14;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1398
    :cond_5
    const/16 v1, 0x22

    if-ne p1, v1, :cond_9

    .line 1399
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    .line 1400
    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v2, :cond_7

    .line 1401
    if-nez p2, :cond_6

    .line 1403
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$15;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$15;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1412
    :cond_6
    iput-boolean v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1413
    invoke-direct {p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->answerChallenge(Landroid/content/Intent;)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto/16 :goto_0

    .line 1415
    :cond_7
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v0, :cond_0

    .line 1416
    iput-boolean v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1417
    if-nez p2, :cond_8

    .line 1418
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto/16 :goto_0

    .line 1420
    :cond_8
    invoke-direct {p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->answerChallenge(Landroid/content/Intent;)V

    .line 1421
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    goto/16 :goto_0

    .line 1425
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAddInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Z)V
    .locals 1
    .parameter "eligibleInstrument"
    .parameter "isUserInitiatedEvent"

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 521
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 522
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 523
    if-eqz p2, :cond_0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 526
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "checkButton"
    .parameter "isChecked"

    .prologue
    .line 1881
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 1882
    .local v0, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->setAcceptance(Z)V

    .line 1883
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 1884
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setRetainInstance(Z)V

    .line 411
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1485
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 1486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 1487
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->saveViewStates(Landroid/os/Bundle;)V

    .line 1488
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 1490
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1498
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->onDestroyView()V

    .line 1499
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 1500
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 1501
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 1502
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 1503
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 1504
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 1505
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 1506
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 1507
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    .line 1508
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    .line 1509
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 1510
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    .line 1511
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 1512
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 1513
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 1514
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 1515
    return-void
.end method

.method public onDownloadOk(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1872
    const-string v1, "Will download %s using wifi only = %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1873
    if-nez p1, :cond_0

    .line 1874
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 1876
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    .line 1877
    return-void
.end method

.method public onDownloadWifi()V
    .locals 2

    .prologue
    .line 1865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1867
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 5

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 425
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    .line 432
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 433
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-direct {v2}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 434
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    .line 436
    const v2, 0x7f0801ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 438
    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 440
    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 441
    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 442
    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 444
    const v2, 0x7f0801bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    .line 445
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    const v3, 0x7f0801bd

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    .line 446
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 447
    const v2, 0x7f0801be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    .line 448
    const v2, 0x7f0801bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 450
    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 451
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801b2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 452
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    .line 453
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801b4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    .line 455
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08004d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    .line 457
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-nez v2, :cond_0

    .line 458
    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 459
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    new-instance v3, Lcom/google/android/finsky/activities/PurchaseFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$2;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 483
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 484
    .local v0, savedState:Landroid/os/Bundle;
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/billing/InstrumentFactory;Landroid/os/Bundle;)V

    .line 485
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->init(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)V

    .line 487
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 488
    return-void

    .line 427
    .end local v0           #savedState:Landroid/os/Bundle;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 428
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    goto/16 :goto_0

    .line 483
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public onInstrumentFamilySelected(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter "instrument"

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 705
    return-void
.end method

.method public onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 1
    .parameter "instrument"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 507
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 508
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1966
    packed-switch p1, :pswitch_data_0

    .line 1989
    const-string v0, "Unknown alert id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1992
    :goto_0
    return-void

    .line 1968
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1972
    :pswitch_1
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1976
    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1980
    :pswitch_3
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED_OTHER_USER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1985
    :pswitch_4
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_UNAVAILABLE:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 513
    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 514
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 515
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 1943
    const-string v0, "docId_to_purchase"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1944
    packed-switch p1, :pswitch_data_0

    .line 1959
    const-string v0, "Unknown alert id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1962
    :goto_0
    return-void

    .line 1946
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1947
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->openDocument(Ljava/lang/String;)V

    .line 1948
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1953
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->openDocument(Ljava/lang/String;)V

    .line 1954
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 784
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_1

    .line 789
    const-string v0, "doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 790
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_1

    .line 791
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 792
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->saveState(Landroid/os/Bundle;)V

    .line 793
    const-string v1, "checkout_purchase"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_2

    .line 797
    const-string v0, "selected_instrument_id"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_2
    const-string v0, "last_selected_instrument_id"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "suppress_error"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 801
    const-string v0, "add_instrument_screen_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    const-string v0, "finished_with_success"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    const-string v0, "finished_with_error"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 804
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_3

    .line 805
    const-string v0, "selected_eligible_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 808
    :cond_3
    const-string v0, "challenging"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 809
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 821
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStart()V

    .line 822
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 824
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 826
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    .line 827
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v1, 0x7f0701a2

    const/16 v5, 0x22

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1533
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_2

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1535
    const-string v0, "Ignoring state change to %s, already finished."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1623
    :cond_1
    :goto_0
    return-void

    .line 1539
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_8

    .line 1543
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    move-result-object v1

    .line 1544
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    .line 1545
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1547
    const-string v0, "Already handled %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1550
    :cond_3
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1551
    instance-of v2, v0, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_4

    .line 1552
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 1553
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_4

    .line 1555
    const-string v1, "Starting resolution intent."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1561
    :cond_4
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_7

    .line 1562
    iget-object v0, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v0, v2, :cond_6

    .line 1563
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    .line 1565
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 1620
    :cond_5
    :goto_1
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_1

    .line 1621
    iput-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    goto :goto_0

    .line 1569
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1570
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-static {v0, v6, v1, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1

    .line 1575
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_1

    .line 1577
    :cond_8
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_a

    .line 1578
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_9

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildViewAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->logViewPurchaseEvent()V

    .line 1584
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 1585
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateSummaryAndFops()V

    goto :goto_1

    .line 1586
    :cond_a
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_b

    .line 1587
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    goto :goto_1

    .line 1588
    :cond_b
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_c

    .line 1589
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    goto :goto_1

    .line 1590
    :cond_c
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_d

    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_10

    .line 1592
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    if-nez v0, :cond_1

    .line 1595
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1596
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1598
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1603
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1605
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1610
    :cond_f
    const-string v0, "Unsupported challenge"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, -0x1

    const-string v3, "Unsupported challenge"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto/16 :goto_1

    .line 1614
    :cond_10
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_11

    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_5

    .line 1615
    :cond_11
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_12

    const v0, 0x7f070063

    .line 1617
    :goto_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1618
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1615
    :cond_12
    const v0, 0x7f070064

    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 816
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStop()V

    .line 817
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1655
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 713
    :cond_0
    return-void
.end method

.method public rebindViews()V
    .locals 17

    .prologue
    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 551
    .local v14, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    .line 558
    .local v12, backend:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-eqz v1, :cond_6

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0800bd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 560
    .local v16, thumbnail:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 570
    .end local v16           #thumbnail:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 576
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v11

    .line 578
    .local v11, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 593
    const v2, 0x7f07014c

    const v3, 0x7f07014f

    const v4, 0x7f07019f

    const/4 v5, 0x1

    const-string v6, "already_owned_document"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedOrInstalledDialog(IIIILjava/lang/String;)V

    .line 604
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->checkForMultiUserCertificateConflict()V

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v1, :cond_4

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 613
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 615
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setBadgeOverride(I)V

    .line 617
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 620
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindActionBar()V

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v13

    .line 627
    .local v13, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 630
    .end local v11           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v12           #backend:I
    .end local v13           #backendHintColor:I
    :cond_5
    return-void

    .line 563
    .restart local v12       #backend:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 566
    invoke-static {v12}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v15

    .line 567
    .local v15, summaryLayoutId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v14, v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 581
    .end local v15           #summaryLayoutId:I
    .restart local v11       #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->checkForInstallationState()V

    goto/16 :goto_1

    .line 584
    :sswitch_1
    const v2, 0x7f07014b

    const v3, 0x7f07014f

    const v4, 0x7f07019f

    const/4 v5, 0x2

    const-string v6, "already_owned_subscription"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedOrInstalledDialog(IIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method protected requestData()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    .line 498
    return-void
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1634
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1635
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 1636
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1638
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1640
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1628
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showProgress(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 1665
    return-void
.end method
