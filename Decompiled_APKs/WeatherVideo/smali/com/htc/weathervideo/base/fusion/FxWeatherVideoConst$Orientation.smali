.class public final enum Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;
.super Ljava/lang/Enum;
.source "FxWeatherVideoConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

.field public static final enum L:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

.field public static final enum NA:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

.field public static final enum P:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    const-string v1, "P"

    invoke-direct {v0, v1, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->P:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    const-string v1, "L"

    invoke-direct {v0, v1, v3}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->L:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    const-string v1, "NA"

    invoke-direct {v0, v1, v4}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->NA:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->P:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->L:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->NA:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->$VALUES:[Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->$VALUES:[Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    invoke-virtual {v0}, [Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    return-object v0
.end method
