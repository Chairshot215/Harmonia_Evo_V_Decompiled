.class public Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddressChallengeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    }
.end annotation


# instance fields
.field private mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

.field private mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

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

.field private mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

.field private mMainView:Landroid/view/ViewGroup;

.field private mPreviousState:Landroid/os/Bundle;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/layout/BillingAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->saveMyState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->onBillingCountriesLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method private clearErrorMessages()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/BillingAddress;->clearErrorMessage()V

    .line 238
    return-void
.end method

.method private displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 1
    .parameter "error"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private displayErrors(Ljava/util/List;)V
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
    .line 332
    .local p1, inputValidationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->clearErrorMessages()V

    .line 334
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 335
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

    .line 336
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v3

    .line 337
    .local v3, textView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 338
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v0           #error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 343
    .local v4, topMostErrorField:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 344
    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 346
    :cond_2
    return-void
.end method

.method private getAddressOrShowErrors()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddressValidationErrors()Ljava/util/List;

    move-result-object v0

    .line 365
    .local v0, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->displayErrors(Ljava/util/List;)V

    .line 366
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    .line 369
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckboxState()[Z
    .locals 6

    .prologue
    .line 316
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxCount()I

    move-result v1

    .line 317
    .local v1, checkboxCount:I
    new-array v3, v1, [Z

    .line 318
    .local v3, result:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 319
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 320
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    aput-boolean v4, v3, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    :cond_0
    return-object v3
.end method

.method private initializeCountriesFromChallenge()V
    .locals 5

    .prologue
    .line 186
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSupportedCountryCount()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    .line 187
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSupportedCountryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    .line 188
    .local v1, inCountry:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    new-instance v3, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getRegionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v2

    .line 191
    .local v2, outCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v1           #inCountry:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    .end local v2           #outCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    .line 194
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method private loadBillingCountries()V
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    invoke-interface {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitializing()V

    .line 201
    :cond_0
    new-instance v1, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 202
    .local v1, getBillingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, account:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
    .locals 4
    .parameter "account"
    .parameter "addressChallenge"
    .parameter "previousState"

    .prologue
    .line 71
    new-instance v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;-><init>()V

    .line 72
    .local v1, result:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "address_challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iput-object p2, v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    .line 79
    return-object v1
.end method

.method private onBillingCountriesLoaded()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    .line 216
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    invoke-interface {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitialized()V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    .line 221
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v1, "BillingCountries not loaded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const v1, 0x7f07006d

    const v2, 0x7f0700fa

    const v3, 0x7f070059

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 228
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveMyState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 249
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkbox_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/layout/BillingAddress;->saveInstanceState(Landroid/os/Bundle;)V

    .line 254
    :cond_1
    return-void
.end method

.method private setupWidgets(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/layout/BillingAddress;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 281
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    .line 264
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)V

    .line 271
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    .line 268
    .local v1, defaultCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    goto :goto_1
.end method

.method private syncContinueButton()V
    .locals 5

    .prologue
    .line 284
    const/4 v1, 0x1

    .line 285
    .local v1, enabled:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 286
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v2

    .line 287
    .local v2, formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 288
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 285
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 290
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "compoundButton"
    .parameter "b"

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getAddressOrShowErrors()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v0

    .line 302
    .local v0, address:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getCheckboxState()[Z

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;[Z)V

    goto :goto_0

    .line 309
    .end local v0           #address:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-interface {v1, v2, v3, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;[Z)V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x7f080031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    const/4 v12, 0x0

    .line 182
    :goto_0
    return-object v12

    .line 88
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 90
    const v12, 0x7f040013

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "address_challenge"

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 93
    new-instance v12, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v12}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getRequiredFieldList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 95
    .local v10, requiredField:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_1

    .line 99
    .end local v10           #requiredField:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml()Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez p3, :cond_2

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v14}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorHtml()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 104
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f080041

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 105
    .local v11, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasTitle()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f080042

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 113
    .local v5, description:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 121
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 122
    .local v9, layoutInflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f080013

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 123
    .local v4, contentView:Landroid/view/ViewGroup;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 124
    .local v2, baseIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxCount()I

    move-result v12

    if-ge v7, v12, :cond_7

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12, v7}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v6

    .line 126
    .local v6, formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    const v12, 0x7f040012

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 128
    .local v3, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 130
    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    if-nez v12, :cond_5

    .line 131
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getChecked()Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    add-int v12, v2, v7

    invoke-virtual {v4, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 108
    .end local v2           #baseIndex:I
    .end local v3           #checkBox:Landroid/widget/CheckBox;
    .end local v4           #contentView:Landroid/view/ViewGroup;
    .end local v5           #description:Landroid/widget/TextView;
    .end local v6           #formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .end local v7           #i:I
    .end local v9           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_3
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 117
    .restart local v5       #description:Landroid/widget/TextView;
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 132
    .restart local v2       #baseIndex:I
    .restart local v3       #checkBox:Landroid/widget/CheckBox;
    .restart local v4       #contentView:Landroid/view/ViewGroup;
    .restart local v6       #formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .restart local v7       #i:I
    .restart local v9       #layoutInflater:Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    if-eqz v12, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkbox_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 135
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkbox_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 141
    .end local v3           #checkBox:Landroid/widget/CheckBox;
    .end local v6           #formCheckbox:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f08002c

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/layout/BillingAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v13, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v13, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/layout/BillingAddress;->setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f080031

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    const v13, 0x7f070130

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v13, 0x7f080032

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    const v13, 0x7f070059

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSupportedCountryCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->initializeCountriesFromChallenge()V

    .line 182
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 180
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->loadBillingCountries()V

    goto :goto_6
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;[Z)V

    .line 399
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->loadBillingCountries()V

    .line 393
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->saveMyState(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    .line 295
    return-void
.end method
