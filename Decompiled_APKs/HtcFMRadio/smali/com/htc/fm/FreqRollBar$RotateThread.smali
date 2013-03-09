.class Lcom/htc/fm/FreqRollBar$RotateThread;
.super Ljava/lang/Thread;
.source "FreqRollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FreqRollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateThread"
.end annotation


# instance fields
.field private TimeStampOfUIStartingAdjust:J

.field private bincrease:Z

.field private currentstarttime:I

.field private end:I

.field private from:I

.field private switcher:I

.field final synthetic this$0:Lcom/htc/fm/FreqRollBar;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FreqRollBar;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/FreqRollBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FreqRollBar;Lcom/htc/fm/FreqRollBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/htc/fm/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/FreqRollBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x12c

    const/16 v12, 0x64

    const/16 v11, 0x1f4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 804
    const/4 v2, 0x0

    .line 808
    .local v2, count:I
    iget v3, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->from:I

    .line 809
    .local v3, moveindex:I
    const/16 v1, 0x32

    .line 810
    .local v1, FastRotationInterval:I
    const/16 v0, 0xa

    .line 812
    .local v0, DecreaseGapInterval:I
    iget-boolean v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->bincrease:Z

    if-eqz v6, :cond_10

    .line 816
    :cond_0
    new-instance v5, Lcom/htc/fm/RotateSeed;

    invoke-direct {v5}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 817
    .local v5, seed:Lcom/htc/fm/RotateSeed;
    iget-object v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 818
    .local v4, msg:Landroid/os/Message;
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->switcher:I

    iput v6, v5, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 820
    const/16 v6, 0x9

    if-ne v3, v6, :cond_1

    .line 822
    const/4 v3, 0x0

    .line 823
    add-int/lit8 v2, v2, 0x1

    .line 832
    :goto_0
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-lt v6, v3, :cond_9

    .line 834
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 836
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 837
    iput v11, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 838
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 910
    :goto_1
    iput v3, v5, Lcom/htc/fm/RotateSeed;->number:I

    .line 911
    iget-wide v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v6, v5, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 912
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 914
    iget-object v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 917
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-ne v3, v6, :cond_0

    .line 1018
    :goto_2
    return-void

    .line 827
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    :cond_2
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-ne v6, v3, :cond_4

    .line 844
    if-eq v2, v9, :cond_3

    .line 845
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x154

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 846
    :cond_3
    iput v11, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 847
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 849
    :cond_4
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    if-ne v6, v9, :cond_6

    .line 851
    if-eq v2, v9, :cond_5

    .line 852
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 853
    :cond_5
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 854
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 856
    :cond_6
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    if-ne v6, v10, :cond_8

    .line 858
    if-eq v2, v9, :cond_7

    .line 859
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 860
    :cond_7
    iput v13, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 861
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 865
    :cond_8
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 866
    iput v12, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 867
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 875
    :cond_9
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_a

    .line 877
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 878
    iput v11, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 879
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 884
    :cond_a
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    if-ne v6, v9, :cond_c

    .line 886
    if-eq v2, v9, :cond_b

    .line 887
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 888
    :cond_b
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 889
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 891
    :cond_c
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    if-ne v6, v10, :cond_e

    .line 893
    if-eq v2, v9, :cond_d

    .line 894
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 895
    :cond_d
    iput v13, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 896
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 900
    :cond_e
    if-eq v2, v9, :cond_f

    .line 901
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 902
    :cond_f
    iput v12, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 903
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 921
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #seed:Lcom/htc/fm/RotateSeed;
    :cond_10
    new-instance v5, Lcom/htc/fm/RotateSeed;

    invoke-direct {v5}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 922
    .restart local v5       #seed:Lcom/htc/fm/RotateSeed;
    iget-object v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 923
    .restart local v4       #msg:Landroid/os/Message;
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->switcher:I

    iput v6, v5, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 925
    if-nez v3, :cond_11

    .line 927
    const/16 v3, 0x9

    .line 928
    add-int/lit8 v2, v2, 0x1

    .line 936
    :goto_3
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-lt v3, v6, :cond_19

    .line 938
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_12

    .line 940
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 941
    iput v11, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 942
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 1011
    :goto_4
    iput v3, v5, Lcom/htc/fm/RotateSeed;->number:I

    .line 1012
    iget-wide v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v6, v5, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 1013
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1014
    iget-object v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1016
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-ne v3, v6, :cond_10

    goto/16 :goto_2

    .line 932
    :cond_11
    add-int/lit8 v3, v3, -0x1

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 947
    :cond_12
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    if-ne v6, v3, :cond_14

    .line 949
    if-eq v2, v9, :cond_13

    .line 950
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x154

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 951
    :cond_13
    iput v11, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 952
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 953
    :cond_14
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    if-ne v6, v9, :cond_16

    .line 955
    if-eq v2, v9, :cond_15

    .line 956
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 957
    :cond_15
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 958
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 960
    :cond_16
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    if-ne v6, v10, :cond_18

    .line 962
    if-eq v2, v9, :cond_17

    .line 963
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 964
    :cond_17
    iput v13, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 965
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 968
    :cond_18
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 969
    iput v12, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 970
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 978
    :cond_19
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-le v6, v10, :cond_1a

    .line 980
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 981
    const/16 v6, 0x46

    iput v6, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 982
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 987
    :cond_1a
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-ne v6, v9, :cond_1c

    .line 989
    if-eq v2, v9, :cond_1b

    .line 990
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 991
    :cond_1b
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 992
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 994
    :cond_1c
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-ne v6, v10, :cond_1e

    .line 996
    if-eq v2, v9, :cond_1d

    .line 997
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 998
    :cond_1d
    iput v13, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 999
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 1002
    :cond_1e
    iget v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 1003
    iput v12, v5, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 1004
    iput v9, v5, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4
.end method

.method public setNextRotateTime(I)V
    .locals 0
    .parameter "NextRotateTime"

    .prologue
    .line 799
    iput p1, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->currentstarttime:I

    .line 800
    return-void
.end method

.method public setSwitcher(IZII)V
    .locals 3
    .parameter "Switcher"
    .parameter "bIncrease"
    .parameter "From"
    .parameter "End"

    .prologue
    .line 783
    iput p1, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->switcher:I

    .line 784
    iput-boolean p2, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->bincrease:Z

    .line 785
    iput p3, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->from:I

    .line 786
    iput p4, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    .line 787
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RotateThread][setSwitcher] switcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->switcher:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bincrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->bincrease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->from:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public setTimeStampOfUIStartingAdjust(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 793
    iput-wide p1, p0, Lcom/htc/fm/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    .line 794
    return-void
.end method
