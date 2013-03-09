.class public Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;
.super Ljava/lang/Object;
.source "GPSInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeJulFromSecs"
.end annotation


# static fields
.field private static final TIME_JUL_BASE_YEAR:I = 0x7bc

.field private static final TIME_JUL_OFFSET_S:I = 0xa8c0

.field private static final TIME_JUL_QUAD_YEAR:I = 0x5b5

.field private static final day_offset:[I

.field private static final leap_month_tab:[I

.field private static mTempVal:I

.field private static final norm_month_tab:[I

.field private static final year_tab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x48t 0x4t 0x0t 0x0t
        0xb5t 0x5t 0x0t 0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 61
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data

    .line 77
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static div4x2(II)I
    .locals 2
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 99
    rem-int v0, p0, p1

    .line 100
    .local v0, reminder:I
    sput v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 101
    div-int v1, p0, p1

    return v1
.end method

.method public static time_jul_from_secs(I)Ljava/lang/String;
    .locals 15
    .parameter "secs"

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, i:I
    const/4 v0, 0x0

    .line 107
    .local v0, days:I
    const/4 v3, 0x0

    .line 108
    .local v3, quad_years:I
    const/4 v1, 0x0

    .line 109
    .local v1, dwYear:I
    const/4 v9, 0x0

    .local v9, wMonth:I
    const/4 v5, 0x0

    .local v5, wDay:I
    const/4 v6, 0x0

    .line 110
    .local v6, wDay_of_week:I
    const/4 v7, 0x0

    .local v7, wHour:I
    const/4 v8, 0x0

    .local v8, wMinute:I
    const/4 v10, 0x0

    .line 111
    .local v10, wSecond:I
    const/4 v4, 0x0

    .line 115
    .local v4, ret:Ljava/lang/String;
    const v11, 0xa8c0

    add-int/2addr p0, v11

    .line 119
    const/16 v11, 0x3c

    invoke-static {p0, v11}, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result p0

    .line 120
    sget v10, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 124
    const/16 v11, 0x3c

    invoke-static {p0, v11}, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result p0

    .line 125
    sget v8, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 129
    const/16 v11, 0x18

    invoke-static {p0, v11}, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result p0

    .line 130
    sget v7, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 136
    const/16 v11, 0x5b5

    invoke-static {p0, v11}, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result v3

    .line 137
    sget v0, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 138
    mul-int/lit8 v11, v3, 0x4

    add-int/lit16 v1, v11, 0x7bc

    .line 143
    const/4 v2, 0x0

    :goto_0
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    add-int/lit8 v12, v2, 0x1

    aget v11, v11, v12

    if-lt v0, v11, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    aget v11, v11, v2

    sub-int/2addr v0, v11

    .line 151
    add-int/2addr v1, v2

    .line 156
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    mul-int/2addr v11, v3

    sget-object v12, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    aget v12, v12, v2

    add-int/2addr v11, v12

    add-int/2addr v11, v0

    rem-int/lit8 v6, v11, 0x7

    .line 161
    if-nez v2, :cond_2

    .line 166
    const/4 v2, 0x0

    :goto_1
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    add-int/lit8 v12, v2, 0x1

    aget v11, v11, v12

    if-lt v0, v11, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_1
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    aget v11, v11, v2

    sub-int v11, v0, v11

    add-int/lit8 v5, v11, 0x1

    .line 181
    :goto_2
    add-int/lit8 v9, v2, 0x1

    .line 183
    const-string v11, "%d, %d, %d,  %d:%d:%d"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 185
    return-object v4

    .line 174
    :cond_2
    const/4 v2, 0x0

    :goto_3
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    add-int/lit8 v12, v2, 0x1

    aget v11, v11, v12

    if-lt v0, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    :cond_3
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    aget v11, v11, v2

    sub-int v11, v0, v11

    add-int/lit8 v5, v11, 0x1

    goto :goto_2
.end method
