.class Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Alarms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DaysOfWeek"
.end annotation


# instance fields
.field mDays:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>(I)V

    .line 94
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 95
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "days"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 99
    iput p1, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)Z
    .locals 2
    .parameter "dow"

    .prologue
    .line 175
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 176
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    iget v1, p1, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    new-array v1, v3, [Z

    .line 183
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 171
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x7

    .line 217
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 218
    iget v3, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 219
    const/4 v1, -0x1

    .line 230
    :cond_0
    return v1

    .line 221
    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 224
    .local v2, today:I
    const/4 v1, 0x0

    .local v1, dayCount:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 225
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 226
    .local v0, day:I
    iget v3, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEveryDaySet()Z
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 207
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 199
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 3
    .parameter "day"

    .prologue
    const/4 v0, 0x1

    .line 151
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 152
    iget v1, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .parameter "day"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 157
    if-eqz p2, :cond_0

    .line 158
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)V
    .locals 1
    .parameter "dow"

    .prologue
    .line 165
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 166
    iget v0, p1, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    .line 167
    return-void
.end method

.method public setCoded(I)V
    .locals 0
    .parameter "days"

    .prologue
    .line 190
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 191
    iput p1, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    .line 192
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "showNever"

    .prologue
    const/4 v7, 0x1

    .line 103
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v3, ret:Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    if-nez v5, :cond_1

    .line 108
    if-eqz p2, :cond_0

    const v5, 0x7f08005c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    :goto_0
    return-object v5

    .line 108
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 113
    :cond_1
    iget v5, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_2

    .line 114
    const v5, 0x7f08005b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    .local v0, dayCount:I
    iget v1, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    .line 119
    .local v1, days:I
    :goto_1
    if-lez v1, :cond_4

    .line 120
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v7, :cond_3

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_3
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-le v0, v7, :cond_6

    const v5, 0x7f090001

    :goto_2
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 133
    .local v4, strings:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/4 v5, 0x7

    if-ge v2, v5, :cond_7

    .line 134
    iget v5, p0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->mDays:I

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 135
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v0, v0, -0x1

    .line 137
    if-lez v0, :cond_5

    .line 138
    const v5, 0x7f08005d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    .end local v2           #i:I
    .end local v4           #strings:[Ljava/lang/CharSequence;
    :cond_6
    const/high16 v5, 0x7f09

    goto :goto_2

    .line 142
    .restart local v2       #i:I
    .restart local v4       #strings:[Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
