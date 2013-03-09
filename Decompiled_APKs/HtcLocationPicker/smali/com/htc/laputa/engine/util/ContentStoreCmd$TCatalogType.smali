.class public final enum Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;
.super Ljava/lang/Enum;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TCatalogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ECancelInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum EColorSchemesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum EInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum EMapsCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ENavigationCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ERootCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ESafetyCamerasCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ETrafficCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum ETravelGuidesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum EVoicesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

.field public static final enum EWeatherCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ERootCatalog"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ERootCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 44
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "EMapsCatalog"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EMapsCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 45
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ENavigationCatalog"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ENavigationCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 46
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "EVoicesCatalog"

    invoke-direct {v0, v1, v6}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EVoicesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 47
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ETrafficCatalog"

    invoke-direct {v0, v1, v7}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ETrafficCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 48
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ESafetyCamerasCatalog"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ESafetyCamerasCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 49
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "EWeatherCatalog"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EWeatherCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 50
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "EColorSchemesCatalog"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EColorSchemesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 51
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ETravelGuidesCatalog"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ETravelGuidesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 52
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "EInitContentStore"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 53
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    const-string v1, "ECancelInitContentStore"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ECancelInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ERootCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EMapsCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ENavigationCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EVoicesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ETrafficCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ESafetyCamerasCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EWeatherCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EColorSchemesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ETravelGuidesCatalog:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->EInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ECancelInitContentStore:Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;

    return-object v0
.end method
