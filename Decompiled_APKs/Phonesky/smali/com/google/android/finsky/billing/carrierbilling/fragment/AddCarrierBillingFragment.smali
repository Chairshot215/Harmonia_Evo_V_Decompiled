.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddCarrierBillingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    }
.end annotation


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mDeclineButton:Landroid/widget/Button;

.field private mEditAddressButton:Landroid/widget/ImageButton;

.field mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

.field private mTosUrl:Ljava/lang/String;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method private forceFinishLoadingTos(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 299
    const v0, 0x7f080070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    const v0, 0x7f080079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
    .locals 4
    .parameter "type"
    .parameter "editedAddress"
    .parameter "uiMode"
    .parameter "tosUrl"
    .parameter "snippet"

    .prologue
    .line 68
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;-><init>()V

    .line 69
    .local v1, fragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string v2, "prefill_snippet"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "ui_mode"

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "tos_url"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method private setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 10
    .parameter "view"
    .parameter "editedAddress"

    .prologue
    .line 213
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    .line 214
    .local v2, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    const v8, 0x7f070051

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, description:Ljava/lang/String;
    const v8, 0x7f080075

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 217
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    if-eqz p2, :cond_2

    .line 222
    move-object v6, p2

    .line 227
    .local v6, subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :goto_0
    new-instance v8, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 237
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    const v8, 0x7f080076

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, addressView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 245
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 248
    .local v4, formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "\n"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .end local v4           #formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    :cond_1
    const v8, 0x7f080078

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 259
    return-void

    .line 224
    .end local v0           #addressData:Lcom/android/i18n/addressinput/AddressData;
    .end local v1           #addressView:Landroid/widget/TextView;
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v6

    .restart local v6       #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    goto/16 :goto_0

    .line 250
    .restart local v0       #addressData:Lcom/android/i18n/addressinput/AddressData;
    .restart local v1       #addressView:Landroid/widget/TextView;
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 4
    .parameter "view"
    .parameter "subscriberInfo"

    .prologue
    .line 203
    const v3, 0x7f070051

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, description:Ljava/lang/String;
    const v3, 0x7f080075

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, phoneNumber:Ljava/lang/String;
    const v3, 0x7f080078

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private setAddressToSnippet(Landroid/view/View;Ljava/lang/String;)V
    .locals 11
    .parameter "view"
    .parameter "snippet"

    .prologue
    const v10, 0x7f080078

    .line 178
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 179
    .local v1, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, carrierName:Ljava/lang/String;
    const v7, 0x7f070050

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, description:Ljava/lang/String;
    const v7, 0x7f080075

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v7, 0x7f080076

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 193
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 200
    .end local v5           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 198
    .local v6, phoneNumberView:Landroid/widget/TextView;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpTos(Ljava/lang/String;)V
    .locals 2
    .parameter "tosUrl"

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, localeReplacement:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "%locale%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "type"
    .parameter "prefillAddress"
    .parameter "uiMode"
    .parameter "snippet"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    .line 172
    .local v0, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, carrierName:Ljava/lang/String;
    const v3, 0x7f080074

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    .local v2, header:Landroid/widget/TextView;
    const v3, 0x7f07002b

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 131
    .end local v0           #billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .end local v1           #carrierName:Ljava/lang/String;
    .end local v2           #header:Landroid/widget/TextView;
    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 133
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 134
    invoke-direct {p0, p1, p5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 138
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 139
    invoke-direct {p0, p1, p5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 144
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 149
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 150
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_0

    .line 153
    :pswitch_4
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 160
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 161
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_0

    .line 164
    :pswitch_6
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 165
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showAddressSection(Landroid/view/View;Z)V
    .locals 3
    .parameter "parent"
    .parameter "visible"

    .prologue
    .line 274
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 275
    .local v1, visibility:I
    :goto_0
    const v2, 0x7f080073

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, view:Landroid/view/View;
    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    const v2, 0x7f080077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const v2, 0x7f080076

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v2, 0x7f080078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    return-void

    .line 274
    .end local v0           #view:Landroid/view/View;
    .end local v1           #visibility:I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumberView"
    .parameter "phoneNumber"

    .prologue
    .line 265
    invoke-static {p2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTosSection(Landroid/view/View;Z)V
    .locals 7
    .parameter "view"
    .parameter "visible"

    .prologue
    const v6, 0x7f080071

    const/4 v3, 0x0

    .line 283
    if-eqz p2, :cond_1

    move v1, v3

    .line 284
    .local v1, visibility:I
    :goto_0
    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 286
    .local v2, webView:Landroid/webkit/WebView;
    const v4, 0x7f080079

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;

    move-result-object v0

    .line 289
    .local v0, tosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 290
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 293
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    .end local v0           #tosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    .end local v2           #webView:Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void

    .line 283
    .end local v1           #visibility:I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public enableUi(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    .locals 1
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    .line 360
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;-><init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method onClick(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 338
    sparse-switch p1, :sswitch_data_0

    .line 349
    const-string v0, "Unexpected button press. do nothing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    :goto_0
    return-void

    .line 340
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    .line 343
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    .line 346
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x7f080031 -> :sswitch_0
        0x7f080032 -> :sswitch_1
        0x7f080077 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->onClick(I)V

    .line 320
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 86
    .local v6, args:Landroid/os/Bundle;
    const-string v0, "ui_mode"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 88
    const-string v0, "tos_url"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setUpTos(Ljava/lang/String;)V

    .line 90
    const v0, 0x7f040026

    const/4 v4, 0x0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, v:Landroid/view/View;
    const v0, 0x7f080031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    const v4, 0x7f0700d7

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 95
    const v0, 0x7f080032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    const v4, 0x7f0700d9

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f080077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v0, "type"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    move-result-object v2

    .line 103
    .local v2, type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    const-string v0, "prefill_address"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 104
    .local v3, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    const-string v0, "prefill_snippet"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, prefillSnippet:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;)V

    .line 106
    return-object v1
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    .line 125
    return-void
.end method
