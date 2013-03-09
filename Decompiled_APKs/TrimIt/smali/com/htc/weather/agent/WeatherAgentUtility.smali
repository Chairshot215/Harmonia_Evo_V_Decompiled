.class public Lcom/htc/weather/agent/WeatherAgentUtility;
.super Ljava/lang/Object;
.source "WeatherAgentUtility.java"


# static fields
.field public static final CODE_TYPE_CURRENT_LOCATION:Ljava/lang/String; = "cur"

.field public static final CODE_TYPE_LOCATION:Ljava/lang/String; = "loc"

.field public static final CODE_TYPE_LOC_CODE:Ljava/lang/String; = "cod"

.field public static final DATA_SEP:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genCodeByCurrentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "cur"

    return-object v0
.end method

.method public static genCodeByLocCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "locCode"

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cod;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genCodeByLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loc;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseCode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "code"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ";"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
