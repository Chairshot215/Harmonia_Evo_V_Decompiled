.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CompleteDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private mAssociationAddress:Ljava/lang/String;

.field private mAssociationPrefix:Ljava/lang/String;

.field private mAssociationRequired:Z

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mDcbTosAcceptanceRequired:Z

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

.field private mInstrumentUpdateRequired:Z

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mPassword:Ljava/lang/String;

.field private mPasswordForgotUrl:Ljava/lang/String;

.field private mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

.field private mPasswordPrompt:Ljava/lang/String;

.field private mPasswordRequired:Z

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

.field private mTosNumber:I

.field private mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V
    .locals 10
    .parameter "billingFlowContext"
    .parameter "dfeApi"
    .parameter "listener"
    .parameter "analytics"
    .parameter "eventLog"
    .parameter "parameters"
    .parameter "instrument"
    .parameter "authenticator"

    .prologue
    .line 102
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V
    .locals 3
    .parameter "billingFlowContext"
    .parameter "dfeApi"
    .parameter "listener"
    .parameter "dcbStorage"
    .parameter "analytics"
    .parameter "eventLog"
    .parameter "parameters"
    .parameter "instrument"
    .parameter "authenticator"

    .prologue
    .line 111
    invoke-direct {p0, p1, p3, p9, p7}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 113
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 114
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 115
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 116
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 117
    iput-object p6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    .line 118
    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 119
    iput-object p8, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    .line 120
    if-eqz p7, :cond_2

    .line 121
    const-string v2, "referrer_url"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerUrl:Ljava/lang/String;

    .line 122
    const-string v2, "referrer_list_cookie"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const-string v2, "dcb_instrument"

    invoke-static {p7, v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .end local v0           #dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 128
    .restart local v0       #dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v1

    .line 130
    .local v1, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getPasswordRequired()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    .line 131
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    .line 136
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    .line 137
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    .line 140
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    .line 143
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    .line 149
    .end local v0           #dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v1           #status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object p1
.end method

.method private dissmissPasswordFragment()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 218
    :cond_0
    return-void
.end method

.method private hideVerifyAssociationDialog()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 346
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private setAcceptedTos()V
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    .line 409
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private showVerifyAssociationDialog()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance()Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private startAssociation()V
    .locals 4

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->showVerifyAssociationDialog()V

    .line 330
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 332
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 333
    return-void
.end method


# virtual methods
.method createAndShowPasswordFragment()V
    .locals 3

    .prologue
    .line 310
    const-string v0, "dcbPinEntry"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    const-string v2, "PasswordDialog"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method createAndShowTosFragment(Ljava/lang/String;)V
    .locals 4
    .parameter "tosUrl"

    .prologue
    .line 320
    const-string v0, "dcbTosChanged"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TosDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    .line 326
    return-void
.end method

.method protected getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 351
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 354
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 356
    :pswitch_0
    const-string v0, "dcbPinEntryConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntryConfirm"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPassword:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    .line 362
    :pswitch_1
    const-string v0, "dcbPinEntryCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntryCancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_0

    .line 367
    :pswitch_2
    const-string v0, "Getting password info failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->dismiss()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 379
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierTosDialogFragment$CarrierTosResultListener$TosResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 381
    :pswitch_0
    const-string v0, "dcbTosChangedConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChangedConfirm"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->setAcceptedTos()V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    .line 387
    :pswitch_1
    const-string v0, "Showing TOS to user failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_2
    const-string v0, "dcbTosChangedCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->log(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChangedCancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    .line 419
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 424
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    .line 425
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 426
    iput-boolean v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    .line 427
    iput-boolean v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    .line 429
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    iput-boolean v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    .line 431
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v0

    .line 432
    .local v0, dcbTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 433
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 436
    .end local v0           #dcbTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    .line 457
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 440
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, error:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v1           #error:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 442
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1

    .line 445
    .end local v1           #error:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1

    .line 448
    .end local v1           #error:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f070077

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1

    .line 453
    .end local v1           #error:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f07005f

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    .line 404
    return-void
.end method

.method protected performNext()V
    .locals 4

    .prologue
    const v3, 0x7f07005f

    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->startAssociation()V

    .line 211
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_5

    .line 174
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowTosFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    if-eqz v0, :cond_3

    .line 177
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->updateCarrierBillingInstrument()V

    goto :goto_0

    .line 179
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_4

    .line 180
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_0

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_a

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_6

    .line 188
    const-string v0, "Failed to get update instrument response."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    if-nez v0, :cond_8

    .line 191
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_7

    .line 192
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_0

    .line 195
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_0

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_0

    .line 200
    :cond_9
    const-string v0, "Updating DCB instrument failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_b

    .line 205
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->setPassphrase(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto/16 :goto_0

    .line 209
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .locals 6
    .parameter "authToken"

    .prologue
    .line 229
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 230
    .local v0, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getDcbTosPreference()Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    .local v2, dcbTosVersion:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v4, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 235
    :cond_0
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 236
    .local v1, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 237
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 239
    new-instance v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 240
    .local v3, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    new-instance v4, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 241
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;)V

    invoke-interface {v4, v3, p1, v5, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 251
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-eq v0, v1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 258
    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_5

    .line 263
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    .line 269
    :cond_1
    :goto_0
    const-string v0, "tos_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 274
    :cond_2
    const-string v0, "password_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 279
    :cond_3
    const-string v0, "verify_association_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 283
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 287
    :cond_4
    return-void

    .line 266
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 291
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 306
    :cond_2
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    .line 158
    return-void
.end method

.method updateCarrierBillingInstrument()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->getAuthTokenAndContinue(Z)V

    .line 225
    return-void
.end method
