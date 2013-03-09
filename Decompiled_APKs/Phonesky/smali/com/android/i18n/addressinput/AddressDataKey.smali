.class final enum Lcom/android/i18n/addressinput/AddressDataKey;
.super Ljava/lang/Enum;
.source "AddressDataKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/AddressDataKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/AddressDataKey;

.field private static final ADDRESS_KEY_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/AddressDataKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum FMT:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum ID:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum KEY:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum LANG:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum LFMT:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum SUB_MORES:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum XZIP:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

.field public static final enum ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "COUNTRIES"

    invoke-direct {v4, v5, v7}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 37
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "FMT"

    invoke-direct {v4, v5, v8}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 41
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "ID"

    invoke-direct {v4, v5, v9}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->ID:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 48
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "KEY"

    invoke-direct {v4, v5, v10}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->KEY:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 52
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "LANG"

    invoke-direct {v4, v5, v11}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->LANG:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 57
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "LFMT"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->LFMT:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 61
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "REQUIRE"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 65
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "STATE_NAME_TYPE"

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 69
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "SUB_KEYS"

    const/16 v6, 0x8

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 74
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "SUB_LNAMES"

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 78
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "SUB_MORES"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_MORES:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 82
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "SUB_NAMES"

    const/16 v6, 0xb

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 86
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "XZIP"

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->XZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 91
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "ZIP"

    const/16 v6, 0xd

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 95
    new-instance v4, Lcom/android/i18n/addressinput/AddressDataKey;

    const-string v5, "ZIP_NAME_TYPE"

    const/16 v6, 0xe

    invoke-direct {v4, v5, v6}, Lcom/android/i18n/addressinput/AddressDataKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    .line 26
    const/16 v4, 0xf

    new-array v4, v4, [Lcom/android/i18n/addressinput/AddressDataKey;

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->ID:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v5, v4, v9

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->KEY:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->LANG:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->LFMT:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_MORES:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->XZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->$VALUES:[Lcom/android/i18n/addressinput/AddressDataKey;

    .line 105
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->ADDRESS_KEY_NAME_MAP:Ljava/util/Map;

    .line 110
    invoke-static {}, Lcom/android/i18n/addressinput/AddressDataKey;->values()[Lcom/android/i18n/addressinput/AddressDataKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/i18n/addressinput/AddressDataKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 111
    .local v1, field:Lcom/android/i18n/addressinput/AddressDataKey;
    sget-object v4, Lcom/android/i18n/addressinput/AddressDataKey;->ADDRESS_KEY_NAME_MAP:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressDataKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressDataKey;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressDataKey;
    .locals 2
    .parameter "keyname"

    .prologue
    .line 102
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ADDRESS_KEY_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressDataKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressDataKey;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressDataKey;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/AddressDataKey;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->$VALUES:[Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/AddressDataKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressDataKey;

    return-object v0
.end method
