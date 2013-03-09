.class public Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;
.super Ljava/lang/Object;
.source "PhoneCarrierBillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$1;,
        Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    }
.end annotation


# static fields
.field private static final addressMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    .line 50
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertAddressFieldToInputField(Lcom/android/i18n/addressinput/AddressField;)Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    .locals 1
    .parameter "address"

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    return-object v0
.end method

.method public static getErrors(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Ljava/util/Collection;
    .locals 6
    .parameter "name"
    .parameter "phoneNumber"
    .parameter "addressProblems"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/AddressProblems;",
            "Lcom/google/android/finsky/billing/BillingUtils$AddressMode;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    invoke-static {p0}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    invoke-static {p3}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, addressError:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-virtual {v4, p3}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 100
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->convertAddressFieldToInputField(Lcom/android/i18n/addressinput/AddressField;)Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    move-result-object v1

    .line 101
    .local v1, errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    if-eqz v1, :cond_2

    .line 102
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0           #addressError:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    .end local v1           #errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    :cond_4
    return-object v2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSubscriberInfo(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 2
    .parameter "address"

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    .line 211
    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    .line 212
    .local v0, builder:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 216
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 218
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne p0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 2
    .parameter "info"
    .parameter "mode"

    .prologue
    .line 169
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 170
    .local v0, address:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 177
    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v1, p1, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 188
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 190
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDeprecatedIsReduced(Z)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 197
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 198
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 201
    :cond_7
    return-object v0

    .line 192
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDeprecatedIsReduced(Z)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0
.end method

.method public static subscriberInfoToAddressData(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/android/i18n/addressinput/AddressData;
    .locals 2
    .parameter "info"

    .prologue
    .line 155
    new-instance v0, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    return-object v0
.end method
