.class public Lcom/android/calendarcommon/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I = null

.field private static final DAYS_PER_MONTH:[I = null

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1233
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1235
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1233
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 1235
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 29
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 32
    new-instance v0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    .line 38
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 198
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 200
    .local v3, freq:I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_0

    .line 202
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 205
    .local v2, found:Z
    if-nez v2, :cond_0

    .line 206
    const/4 v6, 0x1

    .line 310
    .end local v2           #found:Z
    :goto_0
    return v6

    .line 210
    :cond_0
    const/4 v6, 0x5

    if-lt v6, v3, :cond_1

    .line 213
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 217
    .restart local v2       #found:Z
    if-nez v2, :cond_1

    .line 218
    const/4 v6, 0x2

    goto :goto_0

    .line 222
    .end local v2           #found:Z
    :cond_1
    const/4 v6, 0x4

    if-lt v6, v3, :cond_4

    .line 224
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    .line 225
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 227
    .restart local v2       #found:Z
    if-nez v2, :cond_2

    .line 228
    const/4 v6, 0x3

    goto :goto_0

    .line 232
    .end local v2           #found:Z
    :cond_2
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    .line 233
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 236
    .restart local v2       #found:Z
    if-nez v2, :cond_3

    .line 237
    const/4 v6, 0x4

    goto :goto_0

    .line 243
    .end local v2           #found:Z
    :cond_3
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_4

    .line 244
    iget-object v1, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 245
    .local v1, a:[I
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 246
    .local v0, N:I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 247
    .local v5, v:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_6

    .line 248
    aget v6, v1, v4

    if-ne v6, v5, :cond_5

    .line 255
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_4
    const/4 v6, 0x3

    if-lt v6, v3, :cond_7

    .line 257
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 260
    .restart local v2       #found:Z
    if-nez v2, :cond_7

    .line 261
    const/4 v6, 0x6

    goto :goto_0

    .line 247
    .end local v2           #found:Z
    .restart local v0       #N:I
    .restart local v1       #a:[I
    .restart local v4       #i:I
    .restart local v5       #v:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 252
    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    .line 264
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_7
    const/4 v6, 0x2

    if-lt v6, v3, :cond_8

    .line 266
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 269
    .restart local v2       #found:Z
    if-nez v2, :cond_8

    .line 270
    const/4 v6, 0x7

    goto/16 :goto_0

    .line 273
    .end local v2           #found:Z
    :cond_8
    const/4 v6, 0x1

    if-lt v6, v3, :cond_9

    .line 275
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 278
    .restart local v2       #found:Z
    if-nez v2, :cond_9

    .line 279
    const/16 v6, 0x8

    goto/16 :goto_0

    .line 283
    .end local v2           #found:Z
    :cond_9
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_a

    .line 286
    const/4 v6, 0x6

    if-ne v3, v6, :cond_d

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_d

    .line 288
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4       #i:I
    :goto_2
    if-ltz v4, :cond_c

    .line 289
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_b

    .line 290
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 291
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v4           #i:I
    :cond_a
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v4       #i:I
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 296
    :cond_c
    invoke-static {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 298
    const/16 v6, 0x9

    goto/16 :goto_0

    .line 301
    .end local v4           #i:I
    :cond_d
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 302
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static filterMonthlySetPos(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 13
    .parameter "r"
    .parameter "instance"

    .prologue
    const/4 v10, 0x1

    .line 329
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 335
    .local v5, dotw:I
    const/4 v0, 0x0

    .line 336
    .local v0, bydayMask:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_0

    .line 337
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 345
    .local v8, maxDay:I
    new-array v2, v8, [I

    .line 346
    .local v2, daySet:[I
    const/4 v3, 0x0

    .line 348
    .local v3, daySetLength:I
    const/4 v9, 0x1

    .local v9, md:I
    move v4, v3

    .end local v3           #daySetLength:I
    .local v4, daySetLength:I
    :goto_1
    if-gt v9, v8, :cond_2

    .line 351
    const/high16 v11, 0x1

    shl-int v1, v11, v5

    .line 352
    .local v1, dayBit:I
    and-int v11, v0, v1

    if-eqz v11, :cond_8

    .line 353
    add-int/lit8 v3, v4, 0x1

    .end local v4           #daySetLength:I
    .restart local v3       #daySetLength:I
    aput v9, v2, v4

    .line 356
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 357
    const/4 v11, 0x7

    if-ne v5, v11, :cond_1

    .line 358
    const/4 v5, 0x0

    .line 348
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3           #daySetLength:I
    .restart local v4       #daySetLength:I
    goto :goto_1

    .line 365
    .end local v1           #dayBit:I
    :cond_2
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-ltz v6, :cond_7

    .line 366
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    .line 367
    .local v7, index:I
    if-lez v7, :cond_5

    .line 368
    if-le v7, v4, :cond_4

    .line 365
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 371
    :cond_4
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    .line 387
    .end local v7           #index:I
    :goto_4
    return v10

    .line 374
    .restart local v7       #index:I
    :cond_5
    if-gez v7, :cond_6

    .line 375
    add-int v11, v4, v7

    if-ltz v11, :cond_3

    .line 378
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    goto :goto_4

    .line 383
    :cond_6
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 387
    .end local v7           #index:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .restart local v1       #dayBit:I
    :cond_8
    move v3, v4

    .end local v4           #daySetLength:I
    .restart local v3       #daySetLength:I
    goto :goto_2
.end method

.method static isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 1220
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2
    .parameter "a"
    .parameter "N"
    .parameter "v"

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 154
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 155
    const/4 v1, 0x1

    .line 158
    :goto_1
    return v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "N"
    .parameter "v"
    .parameter "max"

    .prologue
    const/4 v2, 0x1

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 172
    aget v1, p0, v0

    .line 173
    .local v1, w:I
    if-lez v1, :cond_1

    .line 174
    if-ne v1, p2, :cond_2

    .line 184
    .end local v1           #w:I
    :cond_0
    :goto_1
    return v2

    .line 178
    .restart local v1       #w:I
    :cond_1
    add-int/2addr p3, v1

    .line 179
    if-eq p3, p2, :cond_0

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1           #w:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v1, 0x1c

    .line 1246
    sget-object v2, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1247
    .local v0, n:I
    if-eq v0, v1, :cond_0

    .line 1250
    .end local v0           #n:I
    :goto_0
    return v0

    .restart local v0       #n:I
    :cond_0
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4
    .parameter "normalized"

    .prologue
    .line 1301
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 2
    .parameter "date"
    .parameter "val"

    .prologue
    .line 1307
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1308
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1309
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1310
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1311
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1312
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1313
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 15
    .parameter "date"

    .prologue
    const/16 v14, 0xc

    .line 1137
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1138
    .local v9, second:I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1139
    .local v5, minute:I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1140
    .local v4, hour:I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1141
    .local v7, monthDay:I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1142
    .local v6, month:I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1144
    .local v10, year:I
    if-gez v9, :cond_0

    add-int/lit8 v13, v9, -0x3b

    :goto_0
    div-int/lit8 v2, v13, 0x3c

    .line 1145
    .local v2, addMinutes:I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1146
    add-int/2addr v5, v2

    .line 1147
    if-gez v5, :cond_1

    add-int/lit8 v13, v5, -0x3b

    :goto_1
    div-int/lit8 v1, v13, 0x3c

    .line 1148
    .local v1, addHours:I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1149
    add-int/2addr v4, v1

    .line 1150
    if-gez v4, :cond_2

    add-int/lit8 v13, v4, -0x17

    :goto_2
    div-int/lit8 v0, v13, 0x18

    .line 1151
    .local v0, addDays:I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1152
    add-int/2addr v7, v0

    .line 1157
    :goto_3
    if-gtz v7, :cond_4

    .line 1165
    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1166
    .local v3, days:I
    :goto_4
    add-int/2addr v7, v3

    .line 1167
    add-int/lit8 v10, v10, -0x1

    .line 1168
    goto :goto_3

    .end local v0           #addDays:I
    .end local v1           #addHours:I
    .end local v2           #addMinutes:I
    .end local v3           #days:I
    :cond_0
    move v13, v9

    .line 1144
    goto :goto_0

    .restart local v2       #addMinutes:I
    :cond_1
    move v13, v5

    .line 1147
    goto :goto_1

    .restart local v1       #addHours:I
    :cond_2
    move v13, v4

    .line 1150
    goto :goto_2

    .line 1165
    .restart local v0       #addDays:I
    :cond_3
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_4

    .line 1170
    :cond_4
    if-gez v6, :cond_7

    .line 1171
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1172
    .local v12, years:I
    add-int/2addr v10, v12

    .line 1173
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1183
    .end local v12           #years:I
    :cond_5
    :goto_5
    if-nez v6, :cond_6

    .line 1184
    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1185
    .local v11, yearLength:I
    if-le v7, v11, :cond_6

    .line 1186
    add-int/lit8 v10, v10, 0x1

    .line 1187
    sub-int/2addr v7, v11

    .line 1190
    .end local v11           #yearLength:I
    :cond_6
    invoke-static {v10, v6}, Lcom/android/calendarcommon/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1191
    .local v8, monthLength:I
    if-le v7, v8, :cond_8

    .line 1192
    sub-int/2addr v7, v8

    .line 1193
    add-int/lit8 v6, v6, 0x1

    .line 1194
    if-lt v6, v14, :cond_5

    .line 1195
    add-int/lit8 v6, v6, -0xc

    .line 1196
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1174
    .end local v8           #monthLength:I
    :cond_7
    if-lt v6, v14, :cond_5

    .line 1175
    div-int/lit8 v12, v6, 0xc

    .line 1176
    .restart local v12       #years:I
    add-int/2addr v10, v12

    .line 1177
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_5

    .line 1203
    .end local v12           #years:I
    .restart local v8       #monthLength:I
    :cond_8
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1204
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1205
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1206
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1207
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1208
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1209
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1210
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1211
    return-void
.end method

.method private static useBYX(III)Z
    .locals 1
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 413
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1263
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1264
    add-int/lit8 p1, p1, 0xc

    .line 1265
    add-int/lit8 p0, p0, -0x1

    .line 1267
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1279
    sget-object v1, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1280
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    add-int/lit8 v0, v0, 0x1

    .line 1283
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1
    .parameter "year"

    .prologue
    .line 1230
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 58
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 739
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 740
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v17

    .line 741
    .local v17, dtstartDateValue:J
    const/4 v14, 0x0

    .line 752
    .local v14, count:I
    if-eqz p7, :cond_0

    cmp-long v55, v17, p3

    if-ltz v55, :cond_0

    cmp-long v55, v17, p5

    if-gez v55, :cond_0

    .line 754
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v14, v14, 0x1

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 759
    .local v30, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 760
    .local v44, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 761
    .local v41, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 762
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 766
    .local v16, days:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V

    .line 767
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 768
    new-instance v55, Lcom/android/calendarcommon/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1113
    :catch_0
    move-exception v19

    .line 1114
    .local v19, e:Lcom/android/calendarcommon/DateException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    throw v19

    .line 774
    .end local v19           #e:Lcom/android/calendarcommon/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v25, v0

    .line 775
    .local v25, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v24, v0

    .line 776
    .local v24, freq:I
    packed-switch v24, :pswitch_data_0

    .line 804
    new-instance v55, Lcom/android/calendarcommon/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/android/calendarcommon/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1118
    .end local v24           #freq:I
    .end local v25           #freqAmount:I
    :catch_1
    move-exception v43

    .line 1119
    .local v43, t:Ljava/lang/RuntimeException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    throw v43

    .line 779
    .end local v43           #t:Ljava/lang/RuntimeException;
    .restart local v24       #freq:I
    .restart local v25       #freqAmount:I
    :pswitch_0
    const/16 v26, 0x1

    .line 806
    .local v26, freqField:I
    :cond_2
    :goto_0
    if-gtz v25, :cond_3

    .line 807
    const/16 v25, 0x1

    .line 810
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 811
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 812
    .local v51, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_7

    :cond_4
    const/16 v48, 0x1

    .line 814
    .local v48, useDays:Z
    :goto_1
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    .line 815
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v49

    .line 816
    .local v49, usebyhour:Z
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    .line 817
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 818
    .local v50, usebyminute:Z
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    .line 819
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 822
    .local v52, usebysecond:Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 823
    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    .line 824
    if-eqz v48, :cond_5

    .line 830
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 835
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_8

    .line 837
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 841
    .local v47, untilStr:Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    .line 842
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 845
    :cond_6
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 850
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 851
    invoke-static/range {v44 .. v44}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .line 856
    .end local v47           #untilStr:Ljava/lang/String;
    .local v45, untilDateValue:J
    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 857
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 866
    const/16 v20, 0x0

    .line 867
    .local v20, eventEnded:Z
    const/16 v21, 0x0

    .local v21, failsafe:I
    move/from16 v22, v21

    .line 870
    .end local v21           #failsafe:I
    .local v22, failsafe:I
    :goto_3
    const/16 v38, 0x0

    .line 871
    .local v38, monthIndex:I
    add-int/lit8 v21, v22, 0x1

    .end local v22           #failsafe:I
    .restart local v21       #failsafe:I
    const/16 v55, 0x7d0

    move/from16 v0, v22

    move/from16 v1, v55

    if-le v0, v1, :cond_9

    .line 872
    new-instance v55, Lcom/android/calendarcommon/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Recurrence processing stuck: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 782
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v20           #eventEnded:Z
    .end local v21           #failsafe:I
    .end local v26           #freqField:I
    .end local v38           #monthIndex:I
    .end local v45           #untilDateValue:J
    .end local v48           #useDays:Z
    .end local v49           #usebyhour:Z
    .end local v50           #usebyminute:Z
    .end local v51           #usebymonth:Z
    .end local v52           #usebysecond:Z
    :pswitch_1
    const/16 v26, 0x2

    .line 783
    .restart local v26       #freqField:I
    goto/16 :goto_0

    .line 785
    .end local v26           #freqField:I
    :pswitch_2
    const/16 v26, 0x3

    .line 786
    .restart local v26       #freqField:I
    goto/16 :goto_0

    .line 788
    .end local v26           #freqField:I
    :pswitch_3
    const/16 v26, 0x4

    .line 789
    .restart local v26       #freqField:I
    goto/16 :goto_0

    .line 791
    .end local v26           #freqField:I
    :pswitch_4
    const/16 v26, 0x4

    .line 792
    .restart local v26       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    .line 793
    if-gtz v25, :cond_2

    .line 794
    const/16 v25, 0x7

    goto/16 :goto_0

    .line 798
    .end local v26           #freqField:I
    :pswitch_5
    const/16 v26, 0x5

    .line 799
    .restart local v26       #freqField:I
    goto/16 :goto_0

    .line 801
    .end local v26           #freqField:I
    :pswitch_6
    const/16 v26, 0x6

    .line 802
    .restart local v26       #freqField:I
    goto/16 :goto_0

    .line 812
    .restart local v12       #bymonthCount:I
    .restart local v51       #usebymonth:Z
    :cond_7
    const/16 v48, 0x0

    goto/16 :goto_1

    .line 853
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v48       #useDays:Z
    .restart local v49       #usebyhour:Z
    .restart local v50       #usebyminute:Z
    .restart local v52       #usebysecond:Z
    :cond_8
    const-wide v45, 0x7fffffffffffffffL

    .restart local v45       #untilDateValue:J
    goto :goto_2

    .line 875
    .restart local v20       #eventEnded:Z
    .restart local v21       #failsafe:I
    .restart local v38       #monthIndex:I
    :cond_9
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 877
    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    .line 878
    .local v9, iteratorYear:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    .line 879
    .local v34, iteratorMonth:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 880
    .local v31, iteratorDay:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 881
    .local v32, iteratorHour:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 882
    .local v33, iteratorMinute:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 885
    .local v35, iteratorSecond:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 890
    :cond_a
    if-eqz v51, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v8, v55, v38

    .line 893
    .local v8, month:I
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 896
    const/4 v15, 0x1

    .line 897
    .local v15, dayIndex:I
    const/16 v36, 0x0

    .line 902
    .local v36, lastDayToExamine:I
    if-eqz v48, :cond_b

    .line 906
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_f

    .line 924
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v55, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v56

    sub-int v55, v55, v56

    add-int/lit8 v55, v55, 0x7

    rem-int/lit8 v54, v55, 0x7

    .line 926
    .local v54, weekStartAdj:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v54

    .line 927
    add-int/lit8 v36, v15, 0x6

    .line 939
    .end local v54           #weekStartAdj:I
    :cond_b
    :goto_5
    if-eqz v48, :cond_17

    .line 940
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_10

    .line 941
    add-int/lit8 v15, v15, 0x1

    .line 1058
    :goto_6
    if-eqz v48, :cond_c

    move/from16 v0, v36

    if-le v15, v0, :cond_b

    .line 1059
    :cond_c
    add-int/lit8 v38, v38, 0x1

    .line 1060
    if-eqz v51, :cond_d

    move/from16 v0, v38

    if-lt v0, v12, :cond_a

    .line 1066
    :cond_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 1067
    .local v40, oldDay:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1068
    const/16 v39, 0x1

    .line 1070
    .local v39, n:I
    :goto_7
    mul-int v53, v25, v39

    .line 1071
    .local v53, value:I
    packed-switch v26, :pswitch_data_1

    .line 1097
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v36           #lastDayToExamine:I
    .end local v39           #n:I
    .end local v40           #oldDay:I
    .end local v53           #value:I
    :cond_e
    move/from16 v8, v34

    .line 890
    goto :goto_4

    .line 929
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v36       #lastDayToExamine:I
    :cond_f
    const/16 v55, 0x4

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto :goto_5

    .line 944
    :cond_10
    move v7, v15

    .line 952
    .local v7, day:I
    :goto_8
    const/16 v29, 0x0

    .line 954
    .local v29, hourIndex:I
    :cond_11
    if-eqz v49, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v6, v55, v29

    .line 960
    .local v6, hour:I
    :goto_9
    const/16 v37, 0x0

    .line 962
    .local v37, minuteIndex:I
    :cond_12
    if-eqz v50, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v5, v55, v37

    .line 968
    .local v5, minute:I
    :goto_a
    const/16 v42, 0x0

    .line 970
    .local v42, secondIndex:I
    :cond_13
    if-eqz v52, :cond_1a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v4, v55, v42

    .line 978
    .local v4, second:I
    :goto_b
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 979
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 981
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    .line 985
    .local v27, genDateValue:J
    cmp-long v55, v27, v17

    if-ltz v55, :cond_1d

    .line 990
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 991
    .local v23, filtered:I
    if-nez v23, :cond_1d

    .line 1007
    cmp-long v55, v17, v27

    if-nez v55, :cond_14

    if-eqz p7, :cond_14

    cmp-long v55, v17, p3

    if-ltz v55, :cond_14

    cmp-long v55, v17, p5

    if-ltz v55, :cond_15

    .line 1011
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 1015
    :cond_15
    cmp-long v55, v27, v45

    if-lez v55, :cond_1b

    .line 1123
    :cond_16
    return-void

    .line 947
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v23           #filtered:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    :cond_17
    move/from16 v7, v31

    .restart local v7       #day:I
    goto :goto_8

    .restart local v29       #hourIndex:I
    :cond_18
    move/from16 v6, v32

    .line 954
    goto :goto_9

    .restart local v6       #hour:I
    .restart local v37       #minuteIndex:I
    :cond_19
    move/from16 v5, v33

    .line 962
    goto :goto_a

    .restart local v5       #minute:I
    .restart local v42       #secondIndex:I
    :cond_1a
    move/from16 v4, v35

    .line 970
    goto :goto_b

    .line 1025
    .restart local v4       #second:I
    .restart local v23       #filtered:I
    .restart local v27       #genDateValue:J
    :cond_1b
    cmp-long v55, v27, p5

    if-gez v55, :cond_16

    .line 1034
    cmp-long v55, v27, p3

    if-ltz v55, :cond_1c

    .line 1038
    if-eqz p7, :cond_21

    .line 1039
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_1c
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_1d

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v14, :cond_16

    .line 1051
    .end local v23           #filtered:I
    :cond_1d
    add-int/lit8 v42, v42, 0x1

    .line 1052
    if-eqz v52, :cond_1e

    move/from16 v0, v42

    if-lt v0, v13, :cond_13

    .line 1053
    :cond_1e
    add-int/lit8 v37, v37, 0x1

    .line 1054
    if-eqz v50, :cond_1f

    move/from16 v0, v37

    if-lt v0, v11, :cond_12

    .line 1055
    :cond_1f
    add-int/lit8 v29, v29, 0x1

    .line 1056
    if-eqz v49, :cond_20

    move/from16 v0, v29

    if-lt v0, v10, :cond_11

    .line 1057
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1041
    .restart local v23       #filtered:I
    :cond_21
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1073
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v23           #filtered:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    .restart local v39       #n:I
    .restart local v40       #oldDay:I
    .restart local v53       #value:I
    :pswitch_7
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1100
    :goto_d
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1101
    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    :cond_22
    move/from16 v22, v21

    .line 1110
    .end local v21           #failsafe:I
    .restart local v22       #failsafe:I
    goto/16 :goto_3

    .line 1076
    .end local v22           #failsafe:I
    .restart local v21       #failsafe:I
    :pswitch_8
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    .line 1079
    :pswitch_9
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    .line 1082
    :pswitch_a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1085
    :pswitch_b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    .line 1088
    :pswitch_c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    .line 1091
    :pswitch_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1094
    :pswitch_e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1104
    :cond_23
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_22

    .line 1107
    add-int/lit8 v39, v39, 0x1

    .line 1108
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1071
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    .locals 33
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 641
    .local v31, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    .line 652
    .local v5, rangeStartDateValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    .line 659
    .local v7, rangeEndDateValue:J
    :goto_0
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 661
    .local v10, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_1

    .line 662
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v4, v20, v28

    .line 663
    .local v4, rrule:Lcom/android/calendarcommon/EventRecurrence;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 662
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 656
    .end local v4           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v7           #rangeEndDateValue:J
    .end local v10           #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_0
    const-wide v7, 0x7fffffffffffffffL

    .restart local v7       #rangeEndDateValue:J
    goto :goto_0

    .line 667
    .restart local v10       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_2

    .line 668
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    move-object/from16 v20, v0

    .local v20, arr$:[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    aget-wide v22, v20, v28

    .line 671
    .local v22, dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 673
    .local v24, dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 676
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_3

    .line 677
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v13, v20, v28

    .line 678
    .local v13, exrule:Lcom/android/calendarcommon/EventRecurrence;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 677
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 682
    .end local v13           #exrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_4

    .line 683
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    .local v20, arr$:[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    aget-wide v22, v20, v28

    .line 686
    .restart local v22       #dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 688
    .restart local v24       #dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 691
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_4
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 694
    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    .line 708
    :cond_5
    return-object v21

    .line 701
    :cond_6
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    .line 702
    .local v29, len:I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 703
    .local v21, dates:[J
    const/16 v26, 0x0

    .line 704
    .local v26, i:I
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    .line 705
    .local v32, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 706
    add-int/lit8 v27, v26, 0x1

    .end local v26           #i:I
    .local v27, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    aput-wide v2, v21, v26

    move/from16 v26, v27

    .end local v27           #i:I
    .restart local v26       #i:I
    goto :goto_5
.end method

.method generateByList(III)I
    .locals 1
    .parameter "count"
    .parameter "freq"
    .parameter "byFreq"

    .prologue
    const/4 v0, 0x0

    .line 400
    if-lt p3, p2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    if-eqz p1, :cond_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .locals 20
    .parameter "dtstart"
    .parameter "maxtime"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 84
    const-wide/16 v14, -0x1

    .line 85
    .local v14, lastTime:J
    const/4 v12, 0x0

    .line 89
    .local v12, hasCount:Z
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v1, :cond_5

    .line 90
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    .local v8, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    aget-object v17, v8, v13

    .line 91
    .local v17, rrule:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v1, :cond_1

    .line 92
    const/4 v12, 0x1

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 97
    .local v18, untilTime:J
    cmp-long v1, v18, v14

    if-lez v1, :cond_0

    .line 98
    move-wide/from16 v14, v18

    goto :goto_1

    .line 102
    .end local v17           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v18           #untilTime:J
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_4

    .line 103
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .local v8, arr$:[J
    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-wide v10, v8, v13

    .line 104
    .local v10, dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_3

    .line 105
    move-wide v14, v10

    .line 103
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 112
    .end local v8           #arr$:[J
    .end local v10           #dt:J
    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_8

    move-wide v1, v14

    .line 143
    .end local v13           #i$:I
    .end local v16           #len$:I
    :goto_3
    return-wide v1

    .line 115
    :cond_5
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v1, :cond_8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-nez v1, :cond_8

    .line 118
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .restart local v8       #arr$:[J
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    aget-wide v10, v8, v13

    .line 119
    .restart local v10       #dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_6

    .line 120
    move-wide v14, v10

    .line 118
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v10           #dt:J
    :cond_7
    move-wide v1, v14

    .line 123
    goto :goto_3

    .line 128
    .end local v8           #arr$:[J
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_8
    if-nez v12, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-nez v1, :cond_9

    if-eqz p2, :cond_c

    .line 131
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J

    move-result-object v9

    .line 138
    .local v9, dates:[J
    array-length v1, v9

    if-nez v1, :cond_b

    .line 139
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 131
    .end local v9           #dates:[J
    :cond_a
    const-wide/16 v6, -0x1

    goto :goto_5

    .line 141
    .restart local v9       #dates:[J
    :cond_b
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v9, v1

    goto :goto_3

    .line 143
    .end local v9           #dates:[J
    :cond_c
    const-wide/16 v1, -0x1

    goto :goto_3
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .locals 2
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calendarcommon/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method
