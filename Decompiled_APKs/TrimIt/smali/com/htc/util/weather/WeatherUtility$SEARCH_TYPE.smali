.class public final enum Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;
.super Ljava/lang/Enum;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WeatherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

.field public static final enum CONTAIN:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

.field public static final enum END_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

.field public static final enum MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

.field public static final enum START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    const-string v1, "START_WITH"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    const-string v1, "END_WITH"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->END_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    const-string v1, "CONTAIN"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->CONTAIN:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    const-string v1, "MATCH_IGONE_CASE"

    invoke-direct {v0, v1, v5}, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->END_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->CONTAIN:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->$VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->$VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-virtual {v0}, [Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    return-object v0
.end method
