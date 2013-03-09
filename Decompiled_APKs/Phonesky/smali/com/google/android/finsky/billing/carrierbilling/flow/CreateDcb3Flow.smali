.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

.field private mAddFragmentShown:Z

.field private mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private mAssociationAddress:Ljava/lang/String;

.field private mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

.field private mAssociationPrefix:Ljava/lang/String;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

.field private mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mRetriableErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

.field private mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .locals 8
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "authenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 139
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .locals 7
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "authenticator"
    .parameter "storage"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    const/4 v6, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 110
    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 111
    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 115
    iput-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 121
    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 148
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 149
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 150
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 151
    iput-object p6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 152
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 153
    invoke-interface {p5}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    .line 154
    sget-object v5, Lcom/google/android/finsky/config/G;->enableDcbReducedBillingAddress:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    if-eqz v2, :cond_0

    .line 159
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    .line 161
    .local v1, carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :goto_0
    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 167
    .end local v1           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v2           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_0
    if-eqz p7, :cond_1

    .line 168
    const-string v5, "referrer_url"

    invoke-virtual {p7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrer:Ljava/lang/String;

    .line 169
    const-string v5, "referrer_list_cookie"

    invoke-virtual {p7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    .line 170
    const-string v5, "ui_mode"

    invoke-virtual {p7, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    const-string v5, "ui_mode"

    invoke-virtual {p7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 177
    :cond_1
    :goto_1
    const-string v5, "extra_paramters"

    invoke-virtual {p7, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "dcb_instrument"

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 181
    .local v3, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v4

    .line 182
    .local v4, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasDeviceAssociation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    .line 184
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getDeviceAssociation()Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    .line 186
    :cond_2
    return-void

    .line 162
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v4           #status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .restart local v1       #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .restart local v2       #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_3
    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    goto :goto_0

    .line 174
    .end local v1           #carrierBillingCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v2           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_4
    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->continueResume(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideVerifyAssociationDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    return-object v0
.end method

.method private continueResume(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-eq v0, v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 268
    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finish()V

    .line 274
    :cond_1
    const-string v0, "add_fragment_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    .line 275
    const-string v0, "user_provided_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 276
    const-string v0, "error_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 281
    :cond_2
    const-string v0, "add_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 284
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    .line 286
    :cond_3
    const-string v0, "edit_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    .line 291
    :cond_4
    const-string v0, "verify_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 294
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, p1, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 300
    :cond_5
    return-void
.end method

.method private createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 7

    .prologue
    .line 439
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 440
    .local v1, dcbInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 442
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 443
    .local v0, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    .local v2, dcbTosVersion:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 446
    new-instance v5, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 448
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedPiiTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
    .local v4, piiTosVersion:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 451
    new-instance v5, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 453
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 454
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 455
    .local v3, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v5, :cond_2

    .line 456
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 465
    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 466
    return-object v3

    .line 459
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    if-nez v5, :cond_3

    .line 460
    const-string v5, "No Subscriber address available."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0
.end method

.method private hideEditFragment()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 549
    :cond_0
    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 596
    :cond_0
    return-void
.end method

.method private hideTosFragment()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 531
    :cond_0
    return-void
.end method

.method private hideVerifyAssociationDialog()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 562
    :cond_0
    return-void
.end method

.method private isAssociationRequired()Z
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isSubscriberAddressValid(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Z
    .locals 4
    .parameter "subscriberAddress"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 431
    :cond_1
    :goto_0
    return v0

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v2, v3, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private logError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 2
    .parameter "logError"

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDcbError?error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Z)V
    .locals 3
    .parameter "message"
    .parameter "fatal"

    .prologue
    .line 565
    invoke-static {p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->newInstance(Ljava/lang/String;Z)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    .line 566
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    .line 567
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 586
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    .line 589
    :cond_0
    return-void
.end method

.method private showVerifyAssociationDialog()V
    .locals 3

    .prologue
    .line 552
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance()Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    .line 554
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 555
    return-void
.end method


# virtual methods
.method public back()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    .line 234
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "addDcbCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 239
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 240
    return-void
.end method

.method initParams()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    const-string v1, "Cannot run this BillingFlow since params are null."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->fail(Ljava/lang/String;)V

    .line 223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->setListener(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    .line 608
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideTosFragment()V

    .line 609
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->setAcceptedTos()V

    .line 611
    const-string v0, "addDcbConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 623
    :goto_0
    return-void

    .line 613
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_0

    .line 615
    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0

    .line 617
    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->NETWORK_FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_3

    .line 618
    const-string v0, "Network Connection error while loading Tos."

    const-string v1, "NETWORK"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f0700fb

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 621
    :cond_3
    const-string v0, "Invalid error code."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 2
    .parameter "result"
    .parameter "returnAddress"

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideEditFragment()V

    .line 628
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_0

    .line 629
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 630
    const-string v0, "addDcbEditConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 638
    :goto_0
    return-void

    .line 632
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    if-ne p1, v0, :cond_1

    .line 633
    const-string v0, "addDcbEditCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0

    .line 636
    :cond_1
    const-string v0, "Invalid error code."

    const-string v1, "addDcbError"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onErrorDismiss(Z)V
    .locals 2
    .parameter "errorFatal"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 654
    :cond_0
    if-eqz p1, :cond_1

    .line 655
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->fail(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 704
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    .line 705
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Lcom/android/volley/VolleyError;)V

    .line 707
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 601
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    .line 602
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 603
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .locals 1

    .prologue
    .line 642
    const-string v0, "addDcbCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    .line 647
    return-void
.end method

.method performNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 332
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateDcb3Flow$State:[I

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 414
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :pswitch_0
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 335
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    .local v0, piiUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p0, v3, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v0           #piiUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 339
    .restart local v0       #piiUrl:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_0

    .line 343
    .end local v0           #piiUrl:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->isAssociationRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 345
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->startAssociation()V

    goto :goto_0

    .line 347
    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 348
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->isSubscriberAddressValid(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 353
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 354
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 358
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_3
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_3
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 374
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne v1, v2, :cond_4

    .line 379
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 380
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 382
    :cond_4
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 383
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showProgress()V

    .line 384
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_0

    .line 388
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v1, :cond_5

    .line 389
    const-string v1, "Update instrument response is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const-string v1, "Update instrument response is null."

    const-string v2, "UNKNOWN"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v1

    if-nez v1, :cond_6

    .line 393
    const-string v1, "addDcbSuccess"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 395
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto/16 :goto_0

    .line 396
    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->getAuthTokenAndContinue(Z)V

    goto/16 :goto_0

    .line 398
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->GetRetriableErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 400
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 401
    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mRetriableErrorList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 404
    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 405
    const-string v1, "Update carrier billing instrument had error"

    const-string v2, "UNKNOWN"

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 408
    :cond_9
    const-string v1, "Could not add carrier billing instrument."

    const-string v2, "UNKNOWN"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 471
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 472
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->createCarrierBillingInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 473
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 474
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 249
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 305
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "add_fragment_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_4

    .line 323
    const-string v0, "user_provided_address"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    :cond_4
    return-void
.end method

.method setAcceptedTos()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_1

    .line 488
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedPiiTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_0

    .line 492
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method showEditAddressFragment(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 536
    .local v1, uiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 538
    .local v0, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v2, v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    .line 540
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    .line 541
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 542
    return-void

    .line 536
    .end local v0           #prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_0
.end method

.method showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "finskyLogString"
    .parameter "logString"
    .parameter "message"
    .parameter "fatal"

    .prologue
    .line 572
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p3, p4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;Z)V

    .line 575
    return-void
.end method

.method showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "finskyLogString"
    .parameter "logString"

    .prologue
    const/4 v4, 0x0

    .line 579
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 582
    return-void
.end method

.method showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "editedAddress"
    .parameter "url"
    .parameter "snippet"

    .prologue
    const/4 v4, 0x0

    .line 501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    if-eqz p1, :cond_0

    .line 503
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 519
    .local v0, type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v0, p1, v1, p2, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    .line 521
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    .line 522
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    .line 523
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 524
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :goto_1
    return-void

    .line 504
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_0

    .line 507
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_1
    const-string v1, "showTosFragment has no address and tos. wrong fragment."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 511
    :cond_2
    if-eqz p1, :cond_3

    .line 512
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_0

    .line 513
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 514
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_0

    .line 516
    .end local v0           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_4
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .restart local v0       #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 202
    const-string v1, "addDcb"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->log(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 207
    .local v0, dcbAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method startAssociation()V
    .locals 4

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showVerifyAssociationDialog()V

    .line 479
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    .line 481
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    .line 482
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 483
    return-void
.end method
