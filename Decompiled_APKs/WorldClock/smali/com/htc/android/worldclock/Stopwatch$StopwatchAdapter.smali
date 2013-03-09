.class Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;
.super Landroid/widget/BaseAdapter;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopwatchAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/ArrayList;

.field protected mLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/Stopwatch;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    .line 749
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 751
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/worldclock/Stopwatch;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "list"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    .line 754
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 755
    if-eqz p2, :cond_0

    .line 756
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    .line 758
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/worldclock/Stopwatch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 759
    return-void
.end method


# virtual methods
.method public changeList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 762
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 763
    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    .line 766
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 770
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 771
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 772
    const/4 v0, 0x0

    .line 774
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 779
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 780
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 785
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 786
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 791
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 792
    if-eqz p2, :cond_0

    .line 793
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    .line 801
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .local v2, ct:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    if-nez v2, :cond_1

    .line 808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    .line 831
    .end local v2           #ct:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    :goto_1
    return-object v14

    .line 795
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030019

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    new-instance v15, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;

    const-string v16, "notHeader"

    invoke-direct/range {v15 .. v16}, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 802
    :catch_0
    move-exception v3

    .line 803
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    goto :goto_1

    .line 811
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #ct:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    const v15, 0x7f0b006e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 812
    .local v11, tv1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    const v15, 0x7f0b006d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 813
    .local v13, tv3:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    const v15, 0x7f0b006c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 815
    .local v12, tv2:Landroid/widget/TextView;
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    const-wide/32 v16, 0xea60

    div-long v4, v14, v16

    .line 816
    .local v4, temp1:J
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    .line 817
    .local v6, temp2:J
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    rem-long v8, v14, v16

    .line 819
    .local v8, temp3:J
    const-string v14, "%1d%1d:%1d%1d.%1d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/16 v17, 0xa

    div-long v17, v4, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-wide/16 v17, 0xa

    rem-long v17, v4, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-wide/16 v17, 0xa

    div-long v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-wide/16 v17, 0xa

    rem-long v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-wide/16 v17, 0x64

    div-long v17, v8, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 821
    .local v10, time:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    const-wide/32 v16, 0xea60

    div-long v4, v14, v16

    .line 824
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    .line 825
    iget-wide v14, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    rem-long v8, v14, v16

    .line 827
    const-string v14, "%1d%1d:%1d%1d.%1d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/16 v17, 0xa

    div-long v17, v4, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-wide/16 v17, 0xa

    rem-long v17, v4, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-wide/16 v17, 0xa

    div-long v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-wide/16 v17, 0xa

    rem-long v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-wide/16 v17, 0x64

    div-long v17, v8, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 829
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v15}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080084

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->mLayout:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 836
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 838
    const/4 v0, 0x0

    return v0
.end method
