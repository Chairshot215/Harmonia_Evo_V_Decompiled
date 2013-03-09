.class public Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
.super Ljava/lang/Object;
.source "ScreenOnOffTime.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFromDay:I

.field private mFromHour:I

.field private mFromMinute:I

.field private mFromMonth:I

.field private mStayTime:J

.field private mToDay:I

.field private mToHour:I

.field private mToMinute:I

.field private mToMonth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SCREEN_ON_OFF_TIME"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->TAG:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMonth:I

    .line 25
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromDay:I

    .line 26
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromHour:I

    .line 27
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMinute:I

    .line 28
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMonth:I

    .line 29
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToDay:I

    .line 30
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToHour:I

    .line 31
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMinute:I

    .line 32
    return-void
.end method


# virtual methods
.method public getFromDay()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromDay:I

    return v0
.end method

.method public getFromHour()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromHour:I

    return v0
.end method

.method public getFromMinute()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMinute:I

    return v0
.end method

.method public getFromMonth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMonth:I

    return v0
.end method

.method public getStayTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mStayTime:J

    return-wide v0
.end method

.method public getToDay()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToDay:I

    return v0
.end method

.method public getToHour()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToHour:I

    return v0
.end method

.method public getToMinute()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMinute:I

    return v0
.end method

.method public getToMonth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMonth:I

    return v0
.end method

.method public setFromDay(I)V
    .locals 0
    .parameter "FromDay"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromDay:I

    .line 43
    return-void
.end method

.method public setFromHour(I)V
    .locals 0
    .parameter "FromHour"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromHour:I

    .line 50
    return-void
.end method

.method public setFromMinute(I)V
    .locals 0
    .parameter "FromMinute"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMinute:I

    .line 57
    return-void
.end method

.method public setFromMonth(I)V
    .locals 0
    .parameter "FromMonth"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mFromMonth:I

    .line 36
    return-void
.end method

.method public setStayTime(J)V
    .locals 0
    .parameter "StayTime"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mStayTime:J

    .line 61
    return-void
.end method

.method public setToDay(I)V
    .locals 0
    .parameter "ToDay"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToDay:I

    .line 80
    return-void
.end method

.method public setToHour(I)V
    .locals 0
    .parameter "ToHour"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToHour:I

    .line 87
    return-void
.end method

.method public setToMinute(I)V
    .locals 0
    .parameter "ToMinute"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMinute:I

    .line 94
    return-void
.end method

.method public setToMonth(I)V
    .locals 0
    .parameter "ToMonth"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->mToMonth:I

    .line 73
    return-void
.end method
