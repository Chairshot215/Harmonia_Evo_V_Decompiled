.class public Lcom/google/android/finsky/billing/UpdateAddressFragment;
.super Landroid/support/v4/app/Fragment;
.source "UpdateAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    }
.end annotation


# instance fields
.field private mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field private mCancelButton:Landroid/widget/Button;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderText:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mInstrumentDisplayName:Ljava/lang/String;

.field private mInstrumentName:Landroid/widget/TextView;

.field private mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

.field private mMainView:Landroid/view/ViewGroup;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/UpdateAddressFragment;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/layout/BillingAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/UpdateAddressFragment;)Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->onBillingCountriesLoaded()V

    return-void
.end method

.method private clearErrorMessages()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/BillingAddress;->clearErrorMessage()V

    .line 190
    return-void
.end method

.method private displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 1
    .parameter "error"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private getAddressOrShowErrors()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddressValidationErrors()Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->displayErrors(Ljava/util/List;)V

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 2
    .parameter "country"

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method private loadBillingCountries()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    invoke-interface {v2}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onInitializing()V

    .line 153
    :cond_0
    new-instance v1, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 154
    .local v1, getBillingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, account:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/billing/UpdateAddressFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment$3;-><init>(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFragment;
    .locals 4
    .parameter "account"
    .parameter "instrumentOwner"
    .parameter "instrument"
    .parameter "instrumentDisplayName"
    .parameter "headerText"

    .prologue
    .line 78
    new-instance v1, Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;-><init>()V

    .line 79
    .local v1, result:Lcom/google/android/finsky/billing/UpdateAddressFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "instrument_owner"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "instrument"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string v2, "instrument_display_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "update_address_header"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method private onBillingCountriesLoaded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCountries:Ljava/util/List;

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCountries:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    invoke-interface {v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onInitialized()V

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setupWidgets(Landroid/os/Bundle;)V

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "BillingCountries not loaded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const v1, 0x7f07006d

    const v2, 0x7f0700fa

    const v3, 0x7f070059

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 180
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, p0, v4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupWidgets(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCountries:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 211
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrumentName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrumentDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setDefaultName(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setPhoneNumber(Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    :cond_1
    return-void

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCountries:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0
.end method


# virtual methods
.method public displayErrors(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, inputValidationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->clearErrorMessages()V

    .line 254
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 255
    .local v1, errorFields:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/widget/TextView;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 256
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v3

    .line 257
    .local v3, textView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 258
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0           #error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 263
    .local v4, topMostErrorField:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 266
    :cond_2
    return-void
.end method

.method public enableUi(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getAddressOrShowErrors()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v0

    .line 234
    .local v0, fullAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 236
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    iget-object v3, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onUpdateAddressResult(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    goto :goto_0

    .line 240
    .end local v0           #fullAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onUpdateAddressResult(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f080031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p2, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iput-object p3, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 96
    const v0, 0x7f04001c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "instrument_display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrumentDisplayName:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "update_address_header"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mHeaderText:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "instrument"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mInstrumentName:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BillingAddress;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setNameInputHint(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v1, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment$1;-><init>(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v1, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment$2;-><init>(Lcom/google/android/finsky/billing/UpdateAddressFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCancelButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->loadBillingCountries()V

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mMainView:Landroid/view/ViewGroup;

    goto/16 :goto_0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;->onUpdateAddressResult(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 71
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->loadBillingCountries()V

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->saveInstanceState(Landroid/os/Bundle;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFragment;->mListener:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;

    .line 227
    return-void
.end method
