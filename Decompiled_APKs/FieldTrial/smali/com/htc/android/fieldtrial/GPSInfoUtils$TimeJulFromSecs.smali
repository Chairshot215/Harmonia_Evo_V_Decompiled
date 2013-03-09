.class public Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;
.super Ljava/lang/Object;
.source "GPSInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fieldtrial/GPSInfoUtils;
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

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x48t 0x4t 0x0t 0x0t
        0xb5t 0x5t 0x0t 0x0t
    .end array-data

    .line 53
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

    .line 69
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

    .line 85
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static div4x2(II)I
    .locals 2
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 107
    rem-int v0, p0, p1

    .line 108
    .local v0, reminder:I
    sput v0, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 109
    div-int v1, p0, p1

    return v1
.end method

.method public static time_jul_from_secs(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "val"

    .prologue
    .line 113
    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 114
    .local v6, secs:I
    const/4 v3, 0x0

    .line 115
    .local v3, i:I
    const/4 v1, 0x0

    .line 116
    .local v1, days:I
    const/4 v4, 0x0

    .line 117
    .local v4, quad_years:I
    const/4 v2, 0x0

    .line 118
    .local v2, dwYear:I
    const/4 v11, 0x0

    .local v11, wMonth:I
    const/4 v7, 0x0

    .local v7, wDay:I
    const/4 v8, 0x0

    .line 119
    .local v8, wDay_of_week:I
    const/4 v9, 0x0

    .local v9, wHour:I
    const/4 v10, 0x0

    .local v10, wMinute:I
    const/4 v12, 0x0

    .line 120
    .local v12, wSecond:I
    const/4 v5, 0x0

    .line 124
    .local v5, ret:Ljava/lang/String;
    const v13, 0xa8c0

    add-int/2addr v6, v13

    .line 128
    const/16 v13, 0x3c

    invoke-static {v6, v13}, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result v6

    .line 129
    sget v12, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 133
    const/16 v13, 0x3c

    invoke-static {v6, v13}, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result v6

    .line 134
    sget v10, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 138
    const/16 v13, 0x18

    invoke-static {v6, v13}, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result v6

    .line 139
    sget v9, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 145
    const/16 v13, 0x5b5

    invoke-static {v6, v13}, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->div4x2(II)I

    move-result v4

    .line 146
    sget v1, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->mTempVal:I

    .line 147
    mul-int/lit8 v13, v4, 0x4

    add-int/lit16 v2, v13, 0x7bc

    .line 152
    const/4 v3, 0x0

    :goto_0
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    if-lt v1, v13, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_0
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->year_tab:[I

    aget v13, v13, v3

    sub-int/2addr v1, v13

    .line 160
    add-int/2addr v2, v3

    .line 165
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    mul-int/2addr v13, v4

    sget-object v14, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->day_offset:[I

    aget v14, v14, v3

    add-int/2addr v13, v14

    add-int/2addr v13, v1

    rem-int/lit8 v8, v13, 0x7

    .line 170
    if-nez v3, :cond_2

    .line 175
    const/4 v3, 0x0

    :goto_1
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    if-lt v1, v13, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    :cond_1
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->leap_month_tab:[I

    aget v13, v13, v3

    sub-int v13, v1, v13

    add-int/lit8 v7, v13, 0x1

    .line 190
    :goto_2
    add-int/lit8 v11, v3, 0x1

    .line 192
    const-string v13, "%d, %d, %d,  %d:%d:%d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 194
    return-object v5

    .line 183
    :cond_2
    const/4 v3, 0x0

    :goto_3
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    if-lt v1, v13, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    :cond_3
    sget-object v13, Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;->norm_month_tab:[I

    aget v13, v13, v3

    sub-int v13, v1, v13

    add-int/lit8 v7, v13, 0x1

    goto :goto_2
.end method
