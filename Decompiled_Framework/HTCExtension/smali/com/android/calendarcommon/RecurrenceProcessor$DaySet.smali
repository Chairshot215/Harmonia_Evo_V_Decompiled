.class public Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Lcom/android/calendarcommon/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v3, :cond_7

    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/16 v10, 0x8

    if-lt v7, v10, :cond_0

    add-int/lit8 v7, v7, -0x7

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    if-lt v5, v7, :cond_2

    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    :goto_1
    iget-object v0, p1, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget-object v1, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_7

    aget v9, v1, v6

    aget v10, v0, v6

    invoke-static {v10}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    if-gtz v7, :cond_1

    add-int/lit8 v7, v7, 0x7

    :cond_1
    if-nez v9, :cond_3

    :goto_3
    if-gt v7, v8, :cond_4

    shl-int v10, v12, v7

    or-int/2addr v4, v10

    add-int/lit8 v7, v7, 0x7

    goto :goto_3

    :cond_2
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1

    :cond_3
    if-lez v9, :cond_5

    add-int/lit8 v10, v9, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    if-gt v7, v8, :cond_4

    shl-int v10, v12, v7

    or-int/2addr v4, v10

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, 0x7

    goto :goto_5

    :cond_6
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    if-lt v7, v12, :cond_4

    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4

    :cond_7
    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_e

    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-eqz v3, :cond_e

    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v10, :cond_a

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_e

    aget v9, v2, v6

    if-ltz v9, :cond_9

    shl-int v10, v12, v9

    or-int/2addr v4, v10

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    if-lt v7, v12, :cond_8

    if-gt v7, v8, :cond_8

    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_7

    :cond_a
    const/4 v7, 0x1

    :goto_8
    if-gt v7, v8, :cond_e

    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_b

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v3, :cond_d

    aget v10, v2, v6

    if-ne v10, v7, :cond_c

    :cond_b
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    goto :goto_a

    :cond_e
    return v4
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .locals 6

    const/4 v3, 0x1

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v0, p1, Landroid/text/format/Time;->month:I

    const/4 v2, 0x0

    if-lt p2, v3, :cond_0

    const/16 v4, 0x1c

    if-le p2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    iget v1, v2, Landroid/text/format/Time;->year:I

    iget v0, v2, Landroid/text/format/Time;->month:I

    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    :cond_1
    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v4, :cond_2

    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v4, :cond_4

    :cond_2
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    :cond_3
    iput v1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    iget-object v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    invoke-static {v2, v4}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I

    move-result v4

    iput v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mDays:I

    :cond_4
    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v5, v3, p2

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    :goto_0
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    iput-object p1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    return-void
.end method
