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
    .parameter "zulu"

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 421
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 13
    .parameter "generated"
    .parameter "r"

    .prologue
    const/4 v12, 0x1

    .line 496
    const/4 v4, 0x0

    .line 504
    .local v4, days:I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 507
    .local v8, lastDayThisMonth:I
    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 508
    .local v3, count:I
    if-lez v3, :cond_7

    .line 510
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 511
    .local v7, j:I
    :goto_0
    const/16 v10, 0x8

    if-lt v7, v10, :cond_0

    .line 512
    add-int/lit8 v7, v7, -0x7

    goto :goto_0

    .line 514
    :cond_0
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 515
    .local v5, first:I
    if-lt v5, v7, :cond_2

    .line 516
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    .line 525
    :goto_1
    iget-object v0, p1, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 526
    .local v0, byday:[I
    iget-object v1, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 527
    .local v1, bydayNum:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_7

    .line 528
    aget v9, v1, v6

    .line 529
    .local v9, v:I
    aget v10, v0, v6

    invoke-static {v10}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    .line 530
    if-gtz v7, :cond_1

    .line 531
    add-int/lit8 v7, v7, 0x7

    .line 533
    :cond_1
    if-nez v9, :cond_3

    .line 535
    :goto_3
    if-gt v7, v8, :cond_4

    .line 538
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 535
    add-int/lit8 v7, v7, 0x7

    goto :goto_3

    .line 518
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v6           #i:I
    .end local v9           #v:I
    :cond_2
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1

    .line 541
    .restart local v0       #byday:[I
    .restart local v1       #bydayNum:[I
    .restart local v6       #i:I
    .restart local v9       #v:I
    :cond_3
    if-lez v9, :cond_5

    .line 544
    add-int/lit8 v10, v9, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    .line 545
    if-gt v7, v8, :cond_4

    .line 549
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 527
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 555
    :cond_5
    :goto_5
    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, 0x7

    goto :goto_5

    .line 561
    :cond_6
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    .line 562
    if-lt v7, v12, :cond_4

    .line 565
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4

    .line 575
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v5           #first:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_7
    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_e

    .line 576
    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 577
    if-eqz v3, :cond_e

    .line 578
    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    .line 579
    .local v2, bymonthday:[I
    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v10, :cond_a

    .line 580
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    if-ge v6, v3, :cond_e

    .line 581
    aget v9, v2, v6

    .line 582
    .restart local v9       #v:I
    if-ltz v9, :cond_9

    .line 583
    shl-int v10, v12, v9

    or-int/2addr v4, v10

    .line 580
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 585
    :cond_9
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 586
    .restart local v7       #j:I
    if-lt v7, v12, :cond_8

    if-gt v7, v8, :cond_8

    .line 587
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_7

    .line 594
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_a
    const/4 v7, 0x1

    .restart local v7       #j:I
    :goto_8
    if-gt v7, v8, :cond_e

    .line 596
    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_b

    .line 597
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_9
    if-ge v6, v3, :cond_d

    .line 598
    aget v10, v2, v6

    if-ne v10, v7, :cond_c

    .line 594
    .end local v6           #i:I
    :cond_b
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 597
    .restart local v6       #i:I
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 602
    :cond_d
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    goto :goto_a

    .line 609
    .end local v2           #bymonthday:[I
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_e
    return v4
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .locals 6
    .parameter "iterator"
    .parameter "day"

    .prologue
    const/4 v3, 0x1

    .line 432
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 433
    .local v1, realYear:I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 435
    .local v0, realMonth:I
    const/4 v2, 0x0

    .line 443
    .local v2, t:Landroid/text/format/Time;
    if-lt p2, v3, :cond_0

    const/16 v4, 0x1c

    if-le p2, v4, :cond_1

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 446
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 447
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 448
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 449
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 450
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 463
    :cond_1
    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v4, :cond_2

    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v4, :cond_4

    .line 464
    :cond_2
    if-nez v2, :cond_3

    .line 465
    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 466
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 467
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 475
    :cond_3
    iput v1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    .line 476
    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    .line 477
    iget-object v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    invoke-static {v2, v4}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I

    move-result v4

    iput v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mDays:I

    .line 482
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
    .parameter "r"

    .prologue
    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    .line 427
    iput-object p1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    .line 428
    return-void
.end method
