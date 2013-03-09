.class Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;
.super Landroid/widget/BaseAdapter;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorldClockAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/ArrayList;

.field protected mLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/WorldClock;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "list"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    .line 673
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 674
    if-eqz p2, :cond_0

    .line 675
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    .line 677
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/worldclock/WorldClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 678
    return-void
.end method


# virtual methods
.method public changeList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 681
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 682
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    .line 685
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 689
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 690
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 698
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 699
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 704
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 705
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 710
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 711
    if-eqz p2, :cond_0

    .line 712
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    .line 717
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/worldclock/CityTime;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .local v4, ct:Lcom/htc/android/worldclock/CityTime;
    if-nez v4, :cond_1

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    .line 778
    .end local v4           #ct:Lcom/htc/android/worldclock/CityTime;
    :goto_0
    return-object v16

    .line 718
    :catch_0
    move-exception v9

    .line 719
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    goto :goto_0

    .line 727
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #ct:Lcom/htc/android/worldclock/CityTime;
    :cond_1
    invoke-virtual {v4}, Lcom/htc/android/worldclock/CityTime;->getCityId()Ljava/lang/String;

    move-result-object v11

    .line 728
    .local v11, id:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/android/worldclock/CityTime;->getCityName()Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, cityName:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/android/worldclock/CityTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    .line 731
    .local v15, tz:Ljava/util/TimeZone;
    invoke-static {v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 732
    .local v2, c:Ljava/util/Calendar;
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 734
    .local v5, dayOfWeek:I
    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 735
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030020

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    .line 741
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b0010

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 742
    .local v12, tv1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b007f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 743
    .local v13, tv2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b0080

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 745
    .local v14, tv3:Landroid/widget/TextView;
    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 747
    :cond_3
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :goto_2
    if-nez p1, :cond_8

    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 756
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    move-object/from16 v16, v0

    #calls: Lcom/htc/android/worldclock/WorldClock;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/worldclock/WorldClock;->access$900(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 757
    .local v10, format:Ljava/lang/CharSequence;
    if-eqz v10, :cond_5

    .line 758
    invoke-static {v10, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    .end local v10           #format:Ljava/lang/CharSequence;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0b000a

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/android/worldclock/DigitalClock;

    .line 775
    .local v8, digitalClock:Lcom/htc/android/worldclock/DigitalClock;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/android/worldclock/DigitalClock;->setLive(Z)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/worldclock/WorldClock;->m24HourMode:Z
    invoke-static/range {v16 .. v16}, Lcom/htc/android/worldclock/WorldClock;->access$1000(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/android/worldclock/DigitalClock;->set24HourMode(Z)V

    .line 777
    invoke-virtual {v8, v2}, Lcom/htc/android/worldclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 737
    .end local v8           #digitalClock:Lcom/htc/android/worldclock/DigitalClock;
    .end local v12           #tv1:Landroid/widget/TextView;
    .end local v13           #tv2:Landroid/widget/TextView;
    .end local v14           #tv3:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f03001f

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 751
    .restart local v12       #tv1:Landroid/widget/TextView;
    .restart local v13       #tv2:Landroid/widget/TextView;
    .restart local v14       #tv3:Landroid/widget/TextView;
    :cond_7
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 762
    :cond_8
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v17, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v6, v0

    .line 764
    .local v6, diff:J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-lez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v5, v0, :cond_9

    .line 765
    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->TOMORROW:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 766
    :cond_9
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-gez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->this$0:Lcom/htc/android/worldclock/WorldClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v5, v0, :cond_a

    .line 767
    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->YESTERDAY:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 769
    :cond_a
    sget-object v16, Lcom/htc/android/worldclock/WorldClock;->TODAY:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 782
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 783
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    .line 788
    :cond_0
    return-void
.end method
