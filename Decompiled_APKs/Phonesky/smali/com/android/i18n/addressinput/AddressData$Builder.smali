.class public Lcom/android/i18n/addressinput/AddressData$Builder;
.super Ljava/lang/Object;
.source "AddressData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mLanguage:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mLanguage:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/AddressData$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method private normalizeAddresses()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 378
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, address1:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    .local v1, address2:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 381
    :cond_0
    move-object v0, v1

    .line 382
    const/4 v1, 0x0

    .line 384
    :cond_1
    if-eqz v0, :cond_2

    .line 385
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, addressLines:[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v5, :cond_2

    .line 387
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 388
    aget-object v1, v2, v5

    .line 391
    .end local v2           #addressLines:[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method


# virtual methods
.method public build()Lcom/android/i18n/addressinput/AddressData;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lcom/android/i18n/addressinput/AddressData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/addressinput/AddressData;-><init>(Lcom/android/i18n/addressinput/AddressData$Builder;Lcom/android/i18n/addressinput/AddressData$1;)V

    return-object v0
.end method

.method public set(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 5
    .parameter "data"

    .prologue
    .line 323
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 324
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v1

    .local v1, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 325
    .local v0, addressField:Lcom/android/i18n/addressinput/AddressField;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v4, :cond_0

    .line 324
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    goto :goto_1

    .line 331
    .end local v0           #addressField:Lcom/android/i18n/addressinput/AddressField;
    :cond_1
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressData$Builder;->normalizeAddresses()V

    .line 332
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 333
    return-object p0
.end method

.method public set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 358
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressData$Builder;->normalizeAddresses()V

    .line 364
    return-object p0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mValues:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 337
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 274
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 270
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDependentLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 282
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 0
    .parameter "languageCode"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressData$Builder;->mLanguage:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 278
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 286
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 349
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSortingCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 290
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    return-object v0
.end method
