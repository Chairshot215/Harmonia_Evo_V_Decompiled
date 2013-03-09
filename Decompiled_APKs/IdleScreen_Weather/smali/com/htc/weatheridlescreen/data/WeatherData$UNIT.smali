.class public final enum Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;
.super Ljava/lang/Enum;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/data/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

.field public static final enum _C:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

.field public static final enum _F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    const-string v1, "_F"

    invoke-direct {v0, v1, v2}, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 59
    new-instance v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    const-string v1, "_C"

    invoke-direct {v0, v1, v3}, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_C:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_C:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->$VALUES:[Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    return-object v0
.end method

.method public static values()[Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->$VALUES:[Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    invoke-virtual {v0}, [Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    return-object v0
.end method
