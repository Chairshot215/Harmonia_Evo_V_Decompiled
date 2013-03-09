.class public final enum Lcom/android/i18n/addressinput/AddressField;
.super Ljava/lang/Enum;
.source "AddressField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/AddressField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/AddressField;

.field public static final enum ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum COUNTRY:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

.field private static final FIELD_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LOCALITY:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

.field public static final enum STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;


# instance fields
.field private final mAttributeName:Ljava/lang/String;

.field private final mField:C


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 27
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "ADMIN_AREA"

    const/16 v6, 0x53

    const-string v7, "state"

    invoke-direct {v4, v5, v9, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    .line 28
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "LOCALITY"

    const/16 v6, 0x43

    const-string v7, "city"

    invoke-direct {v4, v5, v10, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 29
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "RECIPIENT"

    const/16 v6, 0x4e

    const-string v7, "name"

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    .line 30
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "ORGANIZATION"

    const/16 v6, 0x4f

    const-string v7, "organization"

    invoke-direct {v4, v5, v12, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    .line 31
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "ADDRESS_LINE_1"

    const/16 v6, 0x31

    const-string v7, "street1"

    invoke-direct {v4, v5, v13, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    .line 32
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "ADDRESS_LINE_2"

    const/4 v6, 0x5

    const/16 v7, 0x32

    const-string v8, "street2"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    .line 33
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "DEPENDENT_LOCALITY"

    const/4 v6, 0x6

    const/16 v7, 0x44

    invoke-direct {v4, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 34
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "POSTAL_CODE"

    const/4 v6, 0x7

    const/16 v7, 0x5a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    .line 35
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "SORTING_CODE"

    const/16 v6, 0x8

    const/16 v7, 0x58

    invoke-direct {v4, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    .line 41
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "STREET_ADDRESS"

    const/16 v6, 0x9

    const/16 v7, 0x41

    invoke-direct {v4, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    .line 43
    new-instance v4, Lcom/android/i18n/addressinput/AddressField;

    const-string v5, "COUNTRY"

    const/16 v6, 0xa

    const/16 v7, 0x52

    invoke-direct {v4, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    .line 26
    const/16 v4, 0xb

    new-array v4, v4, [Lcom/android/i18n/addressinput/AddressField;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    aput-object v5, v4, v9

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    aput-object v5, v4, v11

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    aput-object v5, v4, v12

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    aput-object v5, v4, v13

    const/4 v5, 0x5

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->$VALUES:[Lcom/android/i18n/addressinput/AddressField;

    .line 45
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/i18n/addressinput/AddressField;->FIELD_MAPPING:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .local v0, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 50
    .local v3, value:Lcom/android/i18n/addressinput/AddressField;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->FIELD_MAPPING:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressField;->getChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v3           #value:Lcom/android/i18n/addressinput/AddressField;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 1
    .parameter
    .parameter
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/addressinput/AddressField;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "field"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-char p3, p0, Lcom/android/i18n/addressinput/AddressField;->mField:C

    .line 60
    iput-object p4, p0, Lcom/android/i18n/addressinput/AddressField;->mAttributeName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static of(C)Lcom/android/i18n/addressinput/AddressField;
    .locals 2
    .parameter "field"

    .prologue
    .line 72
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->FIELD_MAPPING:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressField;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->$VALUES:[Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/AddressField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method


# virtual methods
.method getChar()C
    .locals 1

    .prologue
    .line 92
    iget-char v0, p0, Lcom/android/i18n/addressinput/AddressField;->mField:C

    return v0
.end method
