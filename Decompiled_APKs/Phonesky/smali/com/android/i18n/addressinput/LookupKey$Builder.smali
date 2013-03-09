.class Lcom/android/i18n/addressinput/LookupKey$Builder;
.super Ljava/lang/Object;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/LookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field private languageCode:Ljava/lang/String;

.field private nodes:Ljava/util/Map;
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

.field private script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 286
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 295
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 296
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey;)V
    .locals 6
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 286
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 302
    #getter for: Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$400(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 303
    #getter for: Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$500(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 304
    #getter for: Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$600(Lcom/android/i18n/addressinput/LookupKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 306
    #getter for: Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    :cond_0
    return-void

    .line 309
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    #getter for: Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 286
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 323
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 325
    aget-object v0, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong key type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    array-length v0, v2

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_1

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' deeper than supported hierarchy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    aget-object v0, v2, v5

    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 337
    array-length v0, v2

    if-le v0, v4, :cond_4

    .line 338
    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 341
    array-length v0, v3

    if-eq v0, v1, :cond_2

    .line 342
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong format: Substring should be country code--language code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    aget-object v0, v3, v5

    .line 347
    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_4
    array-length v0, v2

    if-le v0, v1, :cond_5

    move v0, v1

    .line 354
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_5

    .line 355
    aget-object v1, v2, v0

    invoke-static {v1}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    if-nez v1, :cond_6

    .line 388
    :cond_5
    :goto_1
    return-void

    .line 359
    :cond_6
    iget-object v3, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_7
    aget-object v0, v2, v5

    const-string v3, "examples"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 366
    array-length v0, v2

    if-le v0, v4, :cond_8

    .line 367
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aget-object v4, v2, v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_8
    array-length v0, v2

    if-le v0, v1, :cond_9

    .line 372
    aget-object v0, v2, v1

    .line 373
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 374
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 384
    :cond_9
    :goto_2
    array-length v0, v2

    if-le v0, v6, :cond_5

    aget-object v0, v2, v6

    const-string v1, "_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    aget-object v0, v2, v6

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    goto :goto_1

    .line 375
    :cond_a
    const-string v1, "latin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 376
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_2

    .line 378
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Script type has to be either latin or local."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$ScriptType;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/i18n/addressinput/LookupKey$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method build()Lcom/android/i18n/addressinput/LookupKey;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/addressinput/LookupKey;-><init>(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$1;)V

    return-object v0
.end method

.method setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;
    .locals 3
    .parameter "data"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 429
    :cond_1
    :goto_0
    return-object p0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
