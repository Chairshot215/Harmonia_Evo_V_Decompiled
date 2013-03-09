.class Lcom/htc/android/htcime/HTCIMEService$4;
.super Landroid/os/Handler;
.source "HTCIMEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/HTCIMEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter

    .prologue
    .line 3944
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 3947
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 4021
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4023
    :cond_0
    :goto_0
    return-void

    .line 3949
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getStatusIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->showStatusIcon(I)V

    .line 3950
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #setter for: Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z
    invoke-static {v2, v4}, Lcom/htc/android/htcime/HTCIMEService;->access$702(Lcom/htc/android/htcime/HTCIMEService;Z)Z

    .line 3953
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v2, :cond_0

    .line 3954
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v4}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMMData;->getSIPNameBySIPId(II)Ljava/lang/String;

    move-result-object v1

    .line 3956
    .local v1, newSIPName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3958
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->writeSIPUsageDurationLog()V

    .line 3959
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMMData;->isCIMESIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->writeCIMESIPUsageDurationLog()V

    .line 3960
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mIMEUsage_start:J

    .line 3961
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iput-object v1, v2, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    goto/16 :goto_0

    .line 3966
    .end local v1           #newSIPName:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$700(Lcom/htc/android/htcime/HTCIMEService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3967
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->hideStatusIcon()V

    .line 3968
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z
    invoke-static {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->access$702(Lcom/htc/android/htcime/HTCIMEService;Z)Z

    .line 3971
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v2, :cond_0

    .line 3972
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->writeSIPUsageDurationLog()V

    .line 3973
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v3}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMMData;->isCIMESIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->writeCIMESIPUsageDurationLog()V

    .line 3974
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    goto/16 :goto_0

    .line 3981
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot()V

    .line 3982
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/HTCIMMView;

    iput-object v2, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    .line 3983
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    sget-object v3, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    goto/16 :goto_0

    .line 3989
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #calls: Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEStateInner()V
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$800(Lcom/htc/android/htcime/HTCIMEService;)V

    goto/16 :goto_0

    .line 3998
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$600(Lcom/htc/android/htcime/HTCIMEService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3999
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iput-boolean v4, v2, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    .line 4000
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->hideWindow()V

    .line 4002
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z
    invoke-static {v2}, Lcom/htc/android/htcime/HTCIMEService;->access$700(Lcom/htc/android/htcime/HTCIMEService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4003
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    goto/16 :goto_0

    .line 4007
    :pswitch_5
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-eqz v2, :cond_0

    .line 4008
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->updateCandidatesViewShown()Z

    goto/16 :goto_0

    .line 4011
    :pswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->dismissFixedWCLSymbol()V

    .line 4012
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->showFixedWCLSymbol()V

    goto/16 :goto_0

    .line 4016
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4017
    .local v0, event:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService$4;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 3947
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
