.class public Lcom/google/android/finsky/billing/BillingUtils;
.super Ljava/lang/Object;
.source "BillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/BillingUtils$AddressMode;,
        Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static addressDataFromInstrumentAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/android/i18n/addressinput/AddressData;
    .locals 2
    .parameter "address"

    .prologue
    .line 259
    new-instance v0, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    .line 261
    .local v0, builder:Lcom/android/i18n/addressinput/AddressData$Builder;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setDependentLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 279
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 282
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 283
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setSortingCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 285
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 289
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 291
    :cond_9
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    return-object v1
.end method

.method public static findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 3
    .parameter "isoCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 224
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 230
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-object v0, v2

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;
    .locals 3
    .parameter "mode"

    .prologue
    .line 242
    new-instance v1, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v0

    .line 245
    .local v0, builder:Lcom/android/i18n/addressinput/FormOptions$Builder;
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne p0, v1, :cond_0

    .line 246
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 247
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "country"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/google/android/finsky/billing/BillingUtils;->getSimCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string p1, "US"

    .line 85
    :cond_1
    return-object p1
.end method

.method public static getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I
    .locals 4
    .parameter "instrument"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    .line 360
    .local v0, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getApiVersion()I

    move-result v1

    .line 371
    .end local v0           #status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 366
    const-string v3, "No api version in CarrierBillingInstrumentStatus. Return DCB_VERSION_2"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 371
    goto :goto_0
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 190
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 192
    const/4 v2, 0x1

    .line 194
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 195
    const-string v3, "isVoiceCapable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 196
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getRiskHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, androidId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, iso:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;
    .locals 5
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Collection",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, views:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .line 170
    .local v1, topMost:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 171
    .local v2, view:Landroid/view/View;,"TT;"
    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v3

    .line 172
    .local v3, yOffset:I
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 173
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 176
    .end local v2           #view:Landroid/view/View;,"TT;"
    .end local v3           #yOffset:I
    :cond_2
    if-eqz v1, :cond_3

    .line 177
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 179
    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 157
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 158
    iget v1, v0, Landroid/graphics/Rect;->top:I

    return v1
.end method

.method public static instrumentAddressFromAddressData(Lcom/android/i18n/addressinput/AddressData;Ljava/util/List;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 2
    .parameter "addressData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, requiredFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 304
    .local v0, result:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 308
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 312
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 316
    :cond_2
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 320
    :cond_3
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 321
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 323
    :cond_4
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 325
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 327
    :cond_5
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 331
    :cond_6
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 332
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 335
    :cond_7
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 337
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 339
    :cond_8
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 340
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 342
    :cond_9
    return-object v0
.end method

.method public static isEmptyOrSpaces(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

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

.method public static replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 127
    const-string v1, "%lang%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 129
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 130
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 132
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    return-object p0
.end method

.method public static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 109
    const-string v2, "%locale%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 111
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "%locale%"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 114
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_0
    return-object p0
.end method
