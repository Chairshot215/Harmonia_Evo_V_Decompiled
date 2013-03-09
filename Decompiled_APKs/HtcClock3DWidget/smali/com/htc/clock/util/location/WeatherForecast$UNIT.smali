.class public final enum Lcom/htc/clock/util/location/WeatherForecast$UNIT;
.super Ljava/lang/Enum;
.source "WeatherForecast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/WeatherForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/clock/util/location/WeatherForecast$UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/clock/util/location/WeatherForecast$UNIT;

.field public static final enum _C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

.field public static final enum _F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    const-string v1, "_F"

    invoke-direct {v0, v1, v2}, Lcom/htc/clock/util/location/WeatherForecast$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    new-instance v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    const-string v1, "_C"

    invoke-direct {v0, v1, v3}, Lcom/htc/clock/util/location/WeatherForecast$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    sget-object v1, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->$VALUES:[Lcom/htc/clock/util/location/WeatherForecast$UNIT;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    return-object v0
.end method

.method public static values()[Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->$VALUES:[Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    invoke-virtual {v0}, [Lcom/htc/clock/util/location/WeatherForecast$UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    return-object v0
.end method
