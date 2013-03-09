.class public Lcom/htc/clock/util/location/WeatherForecast;
.super Ljava/lang/Object;
.source "WeatherForecast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    }
.end annotation


# static fields
.field public static final NO_TEMPERATUR:I = -0x1f4


# instance fields
.field private mCondition:Ljava/lang/String;

.field private mCurC:I

.field private mCurF:I

.field private mDate:Ljava/lang/String;

.field private mHighC:I

.field private mHighF:I

.field private mLowC:I

.field private mLowF:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x1f4

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    .line 12
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    .line 13
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    .line 14
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    .line 15
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurF:I

    .line 16
    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurC:I

    .line 21
    return-void
.end method

.method private calculateTemperature(I)I
    .locals 2
    .parameter "val"

    .prologue
    .line 124
    int-to-float v0, p1

    const/high16 v1, 0x4200

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4110

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getTempFromString(Ljava/lang/String;)I
    .locals 4
    .parameter "tempStr"

    .prologue
    .line 24
    const/16 v1, -0x1f4

    .line 25
    .local v1, temp:I
    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempFromString~ exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 30
    const/16 v1, -0x1f4

    goto :goto_0
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCur(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 100
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 101
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurC:I

    .line 104
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurF:I

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 48
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    .line 53
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    goto :goto_0
.end method

.method public getLow(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 68
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 69
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    .line 72
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    goto :goto_0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCondition:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCur(II)V
    .locals 1
    .parameter "f"
    .parameter "c"

    .prologue
    .line 81
    iput p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurF:I

    .line 82
    iput p2, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurC:I

    .line 84
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    if-le v0, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    .line 87
    :cond_0
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    if-ge v0, p1, :cond_1

    .line 88
    iput p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    .line 91
    :cond_1
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    if-le v0, p2, :cond_2

    .line 92
    iput p2, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    .line 94
    :cond_2
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    if-ge v0, p2, :cond_3

    .line 95
    iput p2, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    .line 97
    :cond_3
    return-void
.end method

.method public setCurByForecast()V
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    iget v1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurF:I

    .line 77
    iget v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    iget v1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/clock/util/location/WeatherForecast;->mCurC:I

    .line 78
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mDate:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setHigh(II)V
    .locals 0
    .parameter "f"
    .parameter "c"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighF:I

    .line 44
    iput p2, p0, Lcom/htc/clock/util/location/WeatherForecast;->mHighC:I

    .line 45
    return-void
.end method

.method public setHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "f"
    .parameter "c"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/clock/util/location/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v1

    .line 38
    .local v1, intF:I
    invoke-direct {p0, p2}, Lcom/htc/clock/util/location/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, intC:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/clock/util/location/WeatherForecast;->setHigh(II)V

    .line 40
    return-void
.end method

.method public setLow(II)V
    .locals 0
    .parameter "f"
    .parameter "c"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowF:I

    .line 64
    iput p2, p0, Lcom/htc/clock/util/location/WeatherForecast;->mLowC:I

    .line 65
    return-void
.end method

.method public setLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "f"
    .parameter "c"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/clock/util/location/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, intF:I
    invoke-direct {p0, p2}, Lcom/htc/clock/util/location/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, intC:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/clock/util/location/WeatherForecast;->setLow(II)V

    .line 60
    return-void
.end method
