.class Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field protected final BOTTOM:I

.field protected final MEDIUM:I

.field protected final TOP:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mIsSet:[Z

.field protected mIsSet2:[Z

.field protected mItems:Ljava/util/ArrayList;

.field protected mLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/AlarmClock;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "list"

    .prologue
    const/4 v1, 0x7

    .line 470
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->TOP:I

    .line 465
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->MEDIUM:I

    .line 466
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->BOTTOM:I

    .line 471
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 473
    if-eqz p2, :cond_0

    .line 474
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    .line 476
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/worldclock/AlarmClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 477
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet:[Z

    .line 478
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet2:[Z

    .line 479
    return-void
.end method


# virtual methods
.method public changeList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 482
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 483
    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    .line 486
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 491
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 499
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 500
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 505
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 506
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 511
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030003

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    .line 516
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/worldclock/AlarmItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .local v10, ai:Lcom/htc/android/worldclock/AlarmItem;
    if-nez v10, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    .line 629
    .end local v10           #ai:Lcom/htc/android/worldclock/AlarmItem;
    :goto_0
    return-object v3

    .line 517
    :catch_0
    move-exception v18

    .line 518
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    goto :goto_0

    .line 526
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v10       #ai:Lcom/htc/android/worldclock/AlarmItem;
    :cond_0
    iget v6, v10, Lcom/htc/android/worldclock/AlarmItem;->aId:I

    .line 527
    .local v6, id:I
    iget v7, v10, Lcom/htc/android/worldclock/AlarmItem;->aHour:I

    .line 528
    .local v7, hour:I
    iget v8, v10, Lcom/htc/android/worldclock/AlarmItem;->aMinutes:I

    .line 529
    .local v8, minutes:I
    new-instance v9, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    iget v3, v10, Lcom/htc/android/worldclock/AlarmItem;->aDaysOfWeek:I

    invoke-direct {v9, v3}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>(I)V

    .line 530
    .local v9, daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    iget-boolean v0, v10, Lcom/htc/android/worldclock/AlarmItem;->aEnabled:Z

    move/from16 v19, v0

    .line 531
    .local v19, enabled:Z
    iget-object v15, v10, Lcom/htc/android/worldclock/AlarmItem;->aDescription:Ljava/lang/String;

    .line 532
    .local v15, description:Ljava/lang/String;
    move/from16 v5, p1

    .line 534
    .local v5, positionId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/android/worldclock/DigitalClock;

    .line 535
    .local v17, digitalClock:Lcom/htc/android/worldclock/DigitalClock;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/android/worldclock/DigitalClock;->setLive(Z)V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #getter for: Lcom/htc/android/worldclock/AlarmClock;->m24HourMode:Z
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmClock;->access$400(Lcom/htc/android/worldclock/AlarmClock;)Z

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/android/worldclock/DigitalClock;->set24HourMode(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v4, 0x7f0b001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 541
    .local v12, cb:Landroid/widget/CheckBox;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    new-instance v3, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;-><init>(Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;IIIILcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    invoke-virtual {v12, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 573
    .local v24, touchWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 575
    .local v23, touchHeight:I
    new-instance v22, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 576
    .local v22, td:Landroid/view/TouchDelegate;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 577
    .local v20, fl:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 581
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 582
    .local v11, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v11, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 583
    const/16 v3, 0xc

    invoke-virtual {v11, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 584
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/android/worldclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 586
    .local v16, descriptionView:Landroid/widget/TextView;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 587
    :cond_1
    const v3, 0x7f080045

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 595
    :goto_1
    const/4 v3, 0x7

    new-array v14, v3, [Landroid/widget/TextView;

    .line 596
    .local v14, days:[Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #getter for: Lcom/htc/android/worldclock/AlarmClock;->mStartWeekDay:I
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmClock;->access$500(Lcom/htc/android/worldclock/AlarmClock;)I

    move-result v13

    .line 597
    .local v13, day:I
    const/4 v3, 0x1

    if-lt v13, v3, :cond_2

    const/4 v3, 0x7

    if-le v13, v3, :cond_3

    .line 598
    :cond_2
    const/4 v13, 0x1

    .line 601
    :cond_3
    add-int/lit8 v3, v13, -0x1

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0012

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 602
    rem-int/lit8 v4, v13, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0013

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 603
    add-int/lit8 v3, v13, 0x1

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0014

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 604
    add-int/lit8 v3, v13, 0x2

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0015

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 605
    add-int/lit8 v3, v13, 0x3

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0016

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 606
    add-int/lit8 v3, v13, 0x4

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0017

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 607
    add-int/lit8 v3, v13, 0x5

    rem-int/lit8 v4, v3, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    const v25, 0x7f0b0018

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v14, v4

    .line 609
    invoke-virtual {v9}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet:[Z

    .line 610
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    const/4 v3, 0x5

    move/from16 v0, v21

    if-gt v0, v3, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet2:[Z

    add-int/lit8 v4, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet:[Z

    move-object/from16 v25, v0

    aget-boolean v25, v25, v21

    aput-boolean v25, v3, v4

    .line 610
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 590
    .end local v13           #day:I
    .end local v14           #days:[Landroid/widget/TextView;
    .end local v21           #i:I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 614
    .restart local v13       #day:I
    .restart local v14       #days:[Landroid/widget/TextView;
    .restart local v21       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet2:[Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet:[Z

    move-object/from16 v25, v0

    const/16 v26, 0x6

    aget-boolean v25, v25, v26

    aput-boolean v25, v3, v4

    .line 616
    const/16 v21, 0x0

    :goto_3
    const/4 v3, 0x6

    move/from16 v0, v21

    if-gt v0, v3, :cond_7

    .line 617
    aget-object v3, v14, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v4, v4, Lcom/htc/android/worldclock/AlarmClock;->mDaysAbbr:[Ljava/lang/CharSequence;

    aget-object v4, v4, v21

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet2:[Z

    aget-boolean v3, v3, v21

    if-eqz v3, :cond_6

    .line 619
    aget-object v3, v14, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v4}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v25, 0x7f07001c

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 620
    aget-object v3, v14, v21

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 616
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 622
    :cond_6
    aget-object v3, v14, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v4}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v25, 0x7f07001d

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 623
    aget-object v3, v14, v21

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 627
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    new-instance v4, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;

    const-string v25, "notHeader"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mLayout:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 634
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mItems:Ljava/util/ArrayList;

    .line 638
    :cond_0
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet:[Z

    .line 639
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->mIsSet2:[Z

    .line 641
    return-void
.end method
