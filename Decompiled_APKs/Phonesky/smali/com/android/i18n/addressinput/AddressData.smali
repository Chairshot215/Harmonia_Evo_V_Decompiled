.class public Lcom/android/i18n/addressinput/AddressData;
.super Ljava/lang/Object;
.source "AddressData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressData$1;,
        Lcom/android/i18n/addressinput/AddressData$Builder;
    }
.end annotation


# instance fields
.field private final mAddressLine1:Ljava/lang/String;

.field private final mAddressLine2:Ljava/lang/String;

.field private final mAdministrativeArea:Ljava/lang/String;

.field private final mDependentLocality:Ljava/lang/String;

.field private final mLanguageCode:Ljava/lang/String;

.field private final mLocality:Ljava/lang/String;

.field private final mOrganization:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mPostalCountry:Ljava/lang/String;

.field private final mRecipient:Ljava/lang/String;

.field private final mSortingCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/i18n/addressinput/AddressData$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCountry:Ljava/lang/String;

    .line 115
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAdministrativeArea:Ljava/lang/String;

    .line 116
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mLocality:Ljava/lang/String;

    .line 117
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mDependentLocality:Ljava/lang/String;

    .line 118
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCode:Ljava/lang/String;

    .line 119
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mSortingCode:Ljava/lang/String;

    .line 120
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mOrganization:Ljava/lang/String;

    .line 121
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mRecipient:Ljava/lang/String;

    .line 122
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine1:Ljava/lang/String;

    .line 123
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine2:Ljava/lang/String;

    .line 124
    #getter for: Lcom/android/i18n/addressinput/AddressData$Builder;->mLanguage:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->access$100(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mLanguageCode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/AddressData$Builder;Lcom/android/i18n/addressinput/AddressData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressData;-><init>(Lcom/android/i18n/addressinput/AddressData$Builder;)V

    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAdministrativeArea:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mDependentLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;
    .locals 3
    .parameter "field"

    .prologue
    .line 209
    sget-object v0, Lcom/android/i18n/addressinput/AddressData$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCountry:Ljava/lang/String;

    .line 229
    :goto_0
    return-object v0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAdministrativeArea:Ljava/lang/String;

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mLocality:Ljava/lang/String;

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mDependentLocality:Ljava/lang/String;

    goto :goto_0

    .line 219
    :pswitch_4
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCode:Ljava/lang/String;

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mSortingCode:Ljava/lang/String;

    goto :goto_0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine1:Ljava/lang/String;

    goto :goto_0

    .line 225
    :pswitch_7
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mAddressLine2:Ljava/lang/String;

    goto :goto_0

    .line 227
    :pswitch_8
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mOrganization:Ljava/lang/String;

    goto :goto_0

    .line 229
    :pswitch_9
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mRecipient:Ljava/lang/String;

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mOrganization:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mPostalCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData;->mSortingCode:Ljava/lang/String;

    return-object v0
.end method
