.class public final enum Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;
.super Ljava/lang/Enum;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WeatherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_COLUMN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

.field public static final enum CITY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

.field public static final enum CITY_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

.field public static final enum CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

.field public static final enum COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

.field public static final enum STATE:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    const-string v1, "CITY_AND_COUNTRY"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    const-string v1, "CITY"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    const-string v1, "COUNTRY"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    const-string v1, "STATE"

    invoke-direct {v0, v1, v5}, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->STATE:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    new-instance v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    const-string v1, "CITY_STATE_AND_COUNTRY"

    invoke-direct {v0, v1, v6}, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->STATE:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->$VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->$VALUES:[Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    invoke-virtual {v0}, [Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    return-object v0
.end method
