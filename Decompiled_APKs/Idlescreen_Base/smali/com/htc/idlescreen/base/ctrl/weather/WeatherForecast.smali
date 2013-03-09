.class public Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;
.super Ljava/lang/Object;
.source "WeatherForecast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
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

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    .line 13
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    .line 14
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    .line 15
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    .line 16
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurF:I

    .line 17
    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurC:I

    .line 22
    return-void
.end method

.method private calculateTemperature(I)I
    .locals 2
    .parameter "val"

    .prologue
    .line 125
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
    .line 25
    const/16 v1, -0x1f4

    .line 26
    .local v1, temp:I
    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
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

    invoke-static {v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;)V

    .line 31
    const/16 v1, -0x1f4

    goto :goto_0
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCur(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 101
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 102
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurC:I

    .line 105
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurF:I

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 49
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 50
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    .line 54
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    goto :goto_0
.end method

.method public getLow(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 69
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    if-ne p1, v0, :cond_0

    .line 70
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    .line 73
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    goto :goto_0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCondition:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCur(II)V
    .locals 1
    .parameter "f"
    .parameter "c"

    .prologue
    .line 82
    iput p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurF:I

    .line 83
    iput p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurC:I

    .line 85
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    if-le v0, p1, :cond_0

    .line 86
    iput p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    .line 88
    :cond_0
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    if-ge v0, p1, :cond_1

    .line 89
    iput p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    .line 92
    :cond_1
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    if-le v0, p2, :cond_2

    .line 93
    iput p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    .line 95
    :cond_2
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    if-ge v0, p2, :cond_3

    .line 96
    iput p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    .line 98
    :cond_3
    return-void
.end method

.method public setCurByForecast()V
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    iget v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurF:I

    .line 78
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    iget v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mCurC:I

    .line 79
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mDate:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setHigh(II)V
    .locals 0
    .parameter "f"
    .parameter "c"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighF:I

    .line 45
    iput p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mHighC:I

    .line 46
    return-void
.end method

.method public setHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "f"
    .parameter "c"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, intF:I
    invoke-direct {p0, p2}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, intC:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->setHigh(II)V

    .line 41
    return-void
.end method

.method public setLow(II)V
    .locals 0
    .parameter "f"
    .parameter "c"

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowF:I

    .line 65
    iput p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->mLowC:I

    .line 66
    return-void
.end method

.method public setLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "f"
    .parameter "c"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, intF:I
    invoke-direct {p0, p2}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getTempFromString(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, intC:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->setLow(II)V

    .line 61
    return-void
.end method
