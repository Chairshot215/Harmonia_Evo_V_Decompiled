.class Lcom/htc/fm/FMRadio$14;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2079
    iput-object p1, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 2084
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1900(Lcom/htc/fm/FMRadio;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2085
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2089
    :cond_1
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2091
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v3

    .line 2093
    .local v3, status:I
    sget-boolean v4, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 2095
    :cond_2
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    sget-boolean v4, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-eqz v4, :cond_3

    .line 2097
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v5, 0x2

    #calls: Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z
    invoke-static {v4, v5}, Lcom/htc/fm/FMRadio;->access$2000(Lcom/htc/fm/FMRadio;I)Z

    .line 2100
    :cond_3
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mTurnOnTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2102(Lcom/htc/fm/FMRadio;J)J

    .line 2101
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2202(Lcom/htc/fm/FMRadio;J)J

    goto :goto_0

    .line 2105
    :cond_4
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 2106
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mTurnOnTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2102(Lcom/htc/fm/FMRadio;J)J

    .line 2109
    :cond_5
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mTurnOnTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2100(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 2111
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2112
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v5, 0x2

    #calls: Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z
    invoke-static {v4, v5}, Lcom/htc/fm/FMRadio;->access$2000(Lcom/htc/fm/FMRadio;I)Z

    .line 2113
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mTurnOnTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2102(Lcom/htc/fm/FMRadio;J)J

    .line 2114
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2202(Lcom/htc/fm/FMRadio;J)J

    .line 2118
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] cannot turn on FMRadio in 10000ms"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v5, 0x0

    #calls: Lcom/htc/fm/FMRadio;->turnOffFM(Z)V
    invoke-static {v4, v5}, Lcom/htc/fm/FMRadio;->access$2300(Lcom/htc/fm/FMRadio;Z)V

    .line 2120
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v5, 0x1

    #setter for: Lcom/htc/fm/FMRadio;->mReTurnOn:Z
    invoke-static {v4, v5}, Lcom/htc/fm/FMRadio;->access$2402(Lcom/htc/fm/FMRadio;Z)Z

    goto/16 :goto_0

    .line 2125
    :cond_6
    const-wide/16 v0, 0xd8

    .line 2126
    .local v0, interval:J
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0xb40

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    .line 2127
    const-wide/16 v0, 0xd8

    .line 2135
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x1ef0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_9

    .line 2136
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    invoke-static {v4, v0, v1}, Lcom/htc/fm/FMRadio;->access$2214(Lcom/htc/fm/FMRadio;J)J

    .line 2137
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x48

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2138
    .local v2, progress:I
    const/16 v4, 0x5f

    if-lt v2, v4, :cond_8

    .line 2139
    const/16 v2, 0x5f

    .line 2140
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x1ab8

    #setter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2202(Lcom/htc/fm/FMRadio;J)J

    .line 2142
    :cond_8
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1900(Lcom/htc/fm/FMRadio;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 2145
    .end local v2           #progress:I
    :cond_9
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2146
    const-wide/16 v0, 0x32

    .line 2147
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x120

    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2214(Lcom/htc/fm/FMRadio;J)J

    .line 2148
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x48

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2149
    .restart local v2       #progress:I
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1900(Lcom/htc/fm/FMRadio;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 2150
    const/16 v4, 0x87

    if-le v2, v4, :cond_c

    .line 2151
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2152
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v5, 0x2

    #calls: Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z
    invoke-static {v4, v5}, Lcom/htc/fm/FMRadio;->access$2000(Lcom/htc/fm/FMRadio;I)Z

    .line 2153
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mTurnOnTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2102(Lcom/htc/fm/FMRadio;J)J

    .line 2154
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v5, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$2202(Lcom/htc/fm/FMRadio;J)J

    .line 2155
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getAudioPath()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2500(Lcom/htc/fm/FMRadio;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2156
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->setUnMute()V
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2600(Lcom/htc/fm/FMRadio;)V

    goto/16 :goto_0

    .line 2128
    .end local v2           #progress:I
    :cond_a
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x10e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 2129
    const-wide/16 v0, 0x90

    goto/16 :goto_1

    .line 2130
    :cond_b
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mProgressTime:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$2200(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x1ef0

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 2131
    const-wide/16 v0, 0x48

    goto/16 :goto_1

    .line 2162
    :cond_c
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    invoke-static {v4, v0, v1}, Lcom/htc/fm/FMRadio;->access$2114(Lcom/htc/fm/FMRadio;J)J

    .line 2163
    iget-object v4, p0, Lcom/htc/fm/FMRadio$14;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
