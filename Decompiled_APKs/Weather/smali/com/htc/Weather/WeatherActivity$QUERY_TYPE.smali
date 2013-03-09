.class public final enum Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;
.super Ljava/lang/Enum;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QUERY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

.field public static final enum GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

.field public static final enum QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    const-string v1, "QUERY_CODE_ACCU_WEATHER"

    invoke-direct {v0, v1, v2}, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    new-instance v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    const-string v1, "GOOGLE_GEOCODE"

    invoke-direct {v0, v1, v3}, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    sget-object v1, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->$VALUES:[Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

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
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 225
    const-class v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->$VALUES:[Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    invoke-virtual {v0}, [Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    return-object v0
.end method
