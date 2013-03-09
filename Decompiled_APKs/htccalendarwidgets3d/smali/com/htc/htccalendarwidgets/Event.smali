.class public Lcom/htc/htccalendarwidgets/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ACTION_EVENT_CHANGED:Ljava/lang/String; = "com.htc.calendar.event_changed"

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "begin ASC"

.field private static final MIDNIGHT_IN_MINUTES:I = 0x5a0

.field private static final PROFILE:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field public static final SORT_CALENDAR_VIEW:Ljava/lang/String; = "begin ASC, end DESC, title ASC"


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/htc/htccalendarwidgets/Event;

.field public nextLeft:Lcom/htc/htccalendarwidgets/Event;

.field public nextRight:Lcom/htc/htccalendarwidgets/Event;

.field public nextUp:Lcom/htc/htccalendarwidgets/Event;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, aStr:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, bStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 249
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_1
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_1
.end method

.method static computePositions(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    if-nez p0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/htccalendarwidgets/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    .line 435
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/htccalendarwidgets/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private static createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;
    .locals 4
    .parameter
    .parameter "id"
    .parameter "startMinute"
    .parameter "endMinute"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;III)",
            "Lcom/htc/htccalendarwidgets/Event;"
        }
    .end annotation

    .prologue
    .local p0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    const/4 v3, 0x1

    .line 562
    new-instance v0, Lcom/htc/htccalendarwidgets/Event;

    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/Event;-><init>()V

    .line 563
    .local v0, ev:Lcom/htc/htccalendarwidgets/Event;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 564
    iput v3, v0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    .line 565
    iput v3, v0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    .line 566
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->setStartMillis(J)V

    .line 567
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->setEndMillis(J)V

    .line 568
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-object v0
.end method

.method private static createTestEventList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x22

    const/16 v5, 0x20

    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 530
    const/4 v1, 0x2

    invoke-static {v0, v1, v3, v4}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 531
    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, v7}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 532
    const/4 v1, 0x4

    const/16 v2, 0x19

    invoke-static {v0, v1, v7, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 533
    const/16 v1, 0x1e

    const/16 v2, 0x46

    invoke-static {v0, v3, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 534
    const/4 v1, 0x6

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 535
    const/4 v1, 0x7

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 536
    const/16 v1, 0x8

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 537
    const/16 v1, 0x9

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 538
    const/16 v1, 0x2a

    const/16 v2, 0x32

    invoke-static {v0, v4, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 539
    const/16 v1, 0xb

    const/16 v2, 0x2d

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 540
    const/16 v1, 0xc

    const/16 v2, 0x37

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 541
    const/16 v1, 0xd

    const/16 v2, 0x41

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 543
    const/16 v1, 0x15

    const/16 v2, 0x69

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 544
    const/16 v1, 0x16

    const/16 v2, 0x6e

    const/16 v3, 0x78

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 545
    const/16 v1, 0x17

    const/16 v2, 0x73

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 546
    const/16 v1, 0x18

    const/16 v2, 0x7d

    const/16 v3, 0x8c

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 547
    const/16 v1, 0x19

    const/16 v2, 0x7f

    const/16 v3, 0x87

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 549
    const/16 v1, 0x1f

    const/16 v2, 0x96

    const/16 v3, 0xa0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 550
    const/16 v1, 0x98

    const/16 v2, 0xa2

    invoke-static {v0, v5, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 551
    const/16 v1, 0x21

    const/16 v2, 0x99

    const/16 v3, 0xa3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 552
    const/16 v1, 0x9b

    const/16 v2, 0xaa

    invoke-static {v0, v6, v1, v2}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 553
    const/16 v1, 0x23

    const/16 v2, 0x9e

    const/16 v3, 0xaf

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 554
    const/16 v1, 0x24

    const/16 v2, 0xa5

    const/16 v3, 0xb4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/htccalendarwidgets/Event;

    .line 556
    return-object v0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .locals 21
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v9, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    const-wide/16 v5, 0x0

    .line 444
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 445
    .local v14, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/htccalendarwidgets/Event;

    .line 447
    .local v8, event:Lcom/htc/htccalendarwidgets/Event;
    iget-boolean v0, v8, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {v8}, Lcom/htc/htccalendarwidgets/Event;->getStartMillis()J

    move-result-wide v15

    .line 462
    .local v15, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 463
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccalendarwidgets/Event;>;"
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 464
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/Event;

    .line 465
    .local v2, active:Lcom/htc/htccalendarwidgets/Event;
    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/Event;->getEndMillis()J

    move-result-wide v17

    cmp-long v17, v17, v15

    if-gtz v17, :cond_1

    .line 473
    const-wide/16 v17, 0x1

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/Event;->getColumn()I

    move-result v19

    shl-long v17, v17, v19

    const-wide/16 v19, -0x1

    xor-long v17, v17, v19

    and-long v5, v5, v17

    .line 474
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 480
    .end local v2           #active:Lcom/htc/htccalendarwidgets/Event;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 481
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htccalendarwidgets/Event;

    .line 482
    .local v7, ev:Lcom/htc/htccalendarwidgets/Event;
    invoke-virtual {v7, v14}, Lcom/htc/htccalendarwidgets/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 484
    .end local v7           #ev:Lcom/htc/htccalendarwidgets/Event;
    :cond_3
    const/4 v14, 0x0

    .line 485
    const-wide/16 v5, 0x0

    .line 486
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 491
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {v5, v6}, Lcom/htc/htccalendarwidgets/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 492
    .local v4, col:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 493
    const/16 v4, 0x3f

    .line 494
    :cond_5
    const-wide/16 v17, 0x1

    shl-long v17, v17, v4

    or-long v5, v5, v17

    .line 495
    invoke-virtual {v8, v4}, Lcom/htc/htccalendarwidgets/Event;->setColumn(I)V

    .line 496
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 499
    .local v13, len:I
    if-ge v14, v13, :cond_0

    .line 500
    move v14, v13

    goto/16 :goto_0

    .line 502
    .end local v4           #col:I
    .end local v8           #event:Lcom/htc/htccalendarwidgets/Event;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccalendarwidgets/Event;>;"
    .end local v13           #len:I
    .end local v15           #start:J
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htccalendarwidgets/Event;

    .line 503
    .restart local v7       #ev:Lcom/htc/htccalendarwidgets/Event;
    invoke-virtual {v7, v14}, Lcom/htc/htccalendarwidgets/Event;->setMaxColumns(I)V

    goto :goto_3

    .line 505
    .end local v7           #ev:Lcom/htc/htccalendarwidgets/Event;
    :cond_7
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 508
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 509
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 512
    .end local v0           #ii:I
    :goto_1
    return v0

    .line 508
    .restart local v0       #ii:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 512
    goto :goto_1
.end method

.method private static final getDarkerColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    .line 521
    shr-int/lit8 v2, p0, 0x1

    const v3, 0x7f7f7f

    and-int v1, v2, v3

    .line 522
    .local v1, darker:I
    const/high16 v2, -0x100

    and-int v0, p0, v2

    .line 523
    .local v0, alpha:I
    or-int v2, v0, v1

    return v2
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 29
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    const/4 v11, 0x0

    .line 271
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 273
    :try_start_0
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 276
    .local v22, local:Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 277
    move-object/from16 v0, v22

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v27

    .line 278
    .local v27, startDay:I
    add-int v20, v27, p4

    .line 280
    .local v20, endDay:I
    move-object/from16 v0, v22

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v22

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 281
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    .line 299
    .local v18, end:J
    const-string v10, "begin ASC, end DESC, title ASC"

    .line 302
    .local v10, orderBy:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 303
    .local v23, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 306
    .local v21, hideDeclined:Z
    const/4 v9, 0x0

    .line 307
    .local v9, where:Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 308
    const-string v9, "selfAttendeeStatus!=2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/htccalendarwidgets/Event;->PROJECTION:[Ljava/lang/String;

    const-wide/32 v5, 0x5265c00

    sub-long v5, p2, v5

    const-wide/32 v7, 0x5265c00

    add-long v7, v7, v18

    invoke-static/range {v3 .. v10}, Lcom/htc/htccalendarwidgets/Event;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 319
    :goto_0
    if-nez v11, :cond_2

    .line 320
    :try_start_2
    const-string v3, "Cal"

    const-string v4, "loadEvents() returned null cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eqz v11, :cond_1

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v11, 0x0

    .line 400
    :cond_1
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v13

    .line 316
    .local v13, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 326
    .end local v13           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 390
    if-eqz v11, :cond_1

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v11, 0x0

    goto :goto_1

    .line 330
    :cond_3
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    .line 332
    .local v12, count:I
    if-nez v12, :cond_4

    .line 390
    if-eqz v11, :cond_1

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v11, 0x0

    goto :goto_1

    .line 336
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 337
    .local v25, res:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 338
    new-instance v13, Lcom/htc/htccalendarwidgets/Event;

    invoke-direct {v13}, Lcom/htc/htccalendarwidgets/Event;-><init>()V

    .line 340
    .local v13, e:Lcom/htc/htccalendarwidgets/Event;
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/htc/htccalendarwidgets/Event;->id:J

    .line 341
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 342
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    .line 343
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v13, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    .line 344
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 346
    .local v28, timezone:Ljava/lang/String;
    iget-object v3, v13, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v3, v13, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 347
    :cond_6
    const v3, 0x7f0a0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 350
    :cond_7
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 352
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->color:I

    .line 357
    :goto_4
    const/4 v3, 0x6

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 358
    .local v16, eStart:J
    const/4 v3, 0x7

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 360
    .local v14, eEnd:J
    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    .line 361
    const/16 v3, 0xb

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    .line 362
    const/16 v3, 0x9

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    .line 364
    iput-wide v14, v13, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    .line 365
    const/16 v3, 0xc

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    .line 366
    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    .line 368
    iget v3, v13, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    move/from16 v0, v20

    if-gt v3, v0, :cond_5

    iget v3, v13, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    move/from16 v0, v27

    if-lt v3, v0, :cond_5

    .line 372
    const/16 v3, 0xd

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v13, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    .line 375
    const/16 v3, 0xe

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 376
    .local v26, rrule:Ljava/lang/String;
    const/16 v3, 0xf

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 377
    .local v24, rdate:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 378
    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    .line 383
    :goto_6
    const/16 v3, 0x10

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    .line 385
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 390
    .end local v9           #where:Ljava/lang/String;
    .end local v10           #orderBy:Ljava/lang/String;
    .end local v12           #count:I
    .end local v13           #e:Lcom/htc/htccalendarwidgets/Event;
    .end local v14           #eEnd:J
    .end local v16           #eStart:J
    .end local v18           #end:J
    .end local v20           #endDay:I
    .end local v21           #hideDeclined:Z
    .end local v22           #local:Landroid/text/format/Time;
    .end local v23           #prefs:Landroid/content/SharedPreferences;
    .end local v24           #rdate:Ljava/lang/String;
    .end local v25           #res:Landroid/content/res/Resources;
    .end local v26           #rrule:Ljava/lang/String;
    .end local v27           #startDay:I
    .end local v28           #timezone:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_9

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v11, 0x0

    :cond_9
    throw v3

    .line 343
    .restart local v9       #where:Ljava/lang/String;
    .restart local v10       #orderBy:Ljava/lang/String;
    .restart local v12       #count:I
    .restart local v13       #e:Lcom/htc/htccalendarwidgets/Event;
    .restart local v18       #end:J
    .restart local v20       #endDay:I
    .restart local v21       #hideDeclined:Z
    .restart local v22       #local:Landroid/text/format/Time;
    .restart local v23       #prefs:Landroid/content/SharedPreferences;
    .restart local v25       #res:Landroid/content/res/Resources;
    .restart local v27       #startDay:I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 354
    .restart local v28       #timezone:Ljava/lang/String;
    :cond_b
    const v3, 0x7f060010

    :try_start_6
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v13, Lcom/htc/htccalendarwidgets/Event;->color:I

    goto/16 :goto_4

    .line 372
    .restart local v14       #eEnd:J
    .restart local v16       #eStart:J
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 380
    .restart local v24       #rdate:Ljava/lang/String;
    .restart local v26       #rrule:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    goto :goto_6

    .line 388
    .end local v13           #e:Lcom/htc/htccalendarwidgets/Event;
    .end local v14           #eEnd:J
    .end local v16           #eStart:J
    .end local v24           #rdate:Ljava/lang/String;
    .end local v26           #rrule:Ljava/lang/String;
    .end local v28           #timezone:Ljava/lang/String;
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/htc/htccalendarwidgets/Event;->computePositions(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 390
    if-eqz v11, :cond_1

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public static final newInstance()Lcom/htc/htccalendarwidgets/Event;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 174
    new-instance v0, Lcom/htc/htccalendarwidgets/Event;

    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/Event;-><init>()V

    .line 176
    .local v0, e:Lcom/htc/htccalendarwidgets/Event;
    iput-wide v2, v0, Lcom/htc/htccalendarwidgets/Event;->id:J

    .line 177
    iput-object v4, v0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 178
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->color:I

    .line 179
    iput-object v4, v0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    .line 180
    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    .line 181
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    .line 182
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    .line 183
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    .line 184
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    .line 185
    iput-wide v2, v0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    .line 186
    iput-wide v2, v0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    .line 187
    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    .line 188
    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    .line 189
    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    .line 191
    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "cr"
    .parameter "projection"
    .parameter "begin"
    .parameter "end"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 404
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 405
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 406
    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 407
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string p6, "visible=1"

    .line 412
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    if-nez p7, :cond_1

    const-string v5, "begin ASC"

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_1
    move-object v5, p7

    .line 412
    goto :goto_1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/htc/htccalendarwidgets/Event;

    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/Event;-><init>()V

    .line 139
    .local v0, e:Lcom/htc/htccalendarwidgets/Event;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 140
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->color:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->color:I

    .line 141
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    .line 142
    iget-boolean v1, p0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    .line 143
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    .line 144
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    .line 145
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    .line 146
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    .line 147
    iget-wide v1, p0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    iput-wide v1, v0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    .line 148
    iget-wide v1, p0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    iput-wide v1, v0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    .line 149
    iget-boolean v1, p0, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    .line 150
    iget-boolean v1, p0, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    .line 151
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    .line 153
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 199
    move-object v1, p1

    check-cast v1, Lcom/htc/htccalendarwidgets/Event;

    .line 202
    .local v1, e:Lcom/htc/htccalendarwidgets/Event;
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    if-ge v3, v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    if-le v3, v4, :cond_2

    move v0, v2

    goto :goto_0

    .line 204
    :cond_2
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    if-lt v3, v4, :cond_0

    .line 205
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    if-le v3, v4, :cond_3

    move v0, v2

    goto :goto_0

    .line 209
    :cond_3
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    if-ge v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    .line 210
    :cond_4
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    if-gt v3, v4, :cond_0

    .line 211
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    if-ge v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 212
    :cond_5
    iget v3, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    iget v4, v1, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    if-gt v3, v4, :cond_0

    .line 215
    iget-boolean v3, p0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    if-eqz v3, :cond_0

    .line 216
    :cond_6
    iget-boolean v3, p0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    if-eqz v3, :cond_7

    move v0, v2

    goto :goto_0

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 221
    .local v0, cmp:I
    if-nez v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/htc/htccalendarwidgets/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final copyTo(Lcom/htc/htccalendarwidgets/Event;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/Event;->id:J

    iput-wide v0, p1, Lcom/htc/htccalendarwidgets/Event;->id:J

    .line 158
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    .line 159
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->color:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->color:I

    .line 160
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    .line 161
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    .line 162
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    .line 163
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    .line 164
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    .line 165
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    .line 166
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    iput-wide v0, p1, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    .line 167
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    iput-wide v0, p1, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    .line 168
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/htc/htccalendarwidgets/Event;->hasAlarm:Z

    .line 169
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/htc/htccalendarwidgets/Event;->isRepeating:Z

    .line 170
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/htc/htccalendarwidgets/Event;->selfAttendeeStatus:I

    .line 171
    return-void
.end method

.method public final dump()V
    .locals 4

    .prologue
    .line 573
    const-string v0, "Cal"

    const-string v1, "+-----------------------------------------+"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+        id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/htccalendarwidgets/Event;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+     color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+     title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+  location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    allDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htccalendarwidgets/Event;->allDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+  startDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    endDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+   endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 666
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/htc/htccalendarwidgets/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 658
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 623
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .end local v0           #locationString:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public final intersects(III)Z
    .locals 3
    .parameter "julianDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v0, 0x0

    .line 587
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    if-ge v1, p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    if-gt v1, p1, :cond_0

    .line 595
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    if-ne v1, p1, :cond_2

    .line 596
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    if-lt v1, p2, :cond_0

    .line 602
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->endTime:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iget v2, p0, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    if-ne v1, v2, :cond_0

    .line 608
    :cond_2
    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcom/htc/htccalendarwidgets/Event;->startTime:I

    if-gt v1, p3, :cond_0

    .line 612
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 638
    iput p1, p0, Lcom/htc/htccalendarwidgets/Event;->mColumn:I

    .line 639
    return-void
.end method

.method public setEndMillis(J)V
    .locals 0
    .parameter "endMillis"

    .prologue
    .line 662
    iput-wide p1, p0, Lcom/htc/htccalendarwidgets/Event;->endMillis:J

    .line 663
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 646
    iput p1, p0, Lcom/htc/htccalendarwidgets/Event;->mMaxColumns:I

    .line 647
    return-void
.end method

.method public setStartMillis(J)V
    .locals 0
    .parameter "startMillis"

    .prologue
    .line 654
    iput-wide p1, p0, Lcom/htc/htccalendarwidgets/Event;->startMillis:J

    .line 655
    return-void
.end method
