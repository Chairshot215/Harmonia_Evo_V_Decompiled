.class Lcom/htc/Weather/WeatherActivity$2;
.super Landroid/os/Handler;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 922
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 925
    :pswitch_1
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_ON_FETCH_DATA_FINISHED"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    sput-boolean v9, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    .line 927
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_1

    .line 928
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 929
    :cond_1
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$100(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 930
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget v8, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    .line 932
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 933
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static {v7, v9, v12, v11}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto :goto_0

    .line 937
    :pswitch_2
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_REFRESH_UI_DATA"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sput-boolean v9, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    .line 939
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_2

    .line 940
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 941
    :cond_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 943
    .local v3, index:I
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-nez v7, :cond_0

    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    if-ne v7, v3, :cond_0

    .line 944
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    goto/16 :goto_0

    .line 948
    .end local v3           #index:I
    :pswitch_3
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_SET_WINDOW_BACKGROUND"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 953
    :pswitch_4
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_ON_MODEL_INITIALIZED"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$400(Lcom/htc/Weather/WeatherActivity;)Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_3

    .line 956
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$500(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/data/DataProcesser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/Weather/data/DataProcesser;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    #setter for: Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$402(Lcom/htc/Weather/WeatherActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 957
    :cond_3
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherActivity;->reDataReceiver()V

    .line 960
    const-string v0, ""

    .line 961
    .local v0, city_name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "name_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->findIndexFromCityName(Ljava/lang/String;)I
    invoke-static {v7, v0}, Lcom/htc/Weather/WeatherActivity;->access$600(Lcom/htc/Weather/WeatherActivity;Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 963
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static {v7, v9, v10, v11}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 968
    .end local v0           #city_name:Ljava/lang/String;
    :pswitch_5
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_ON_MODEL_UPDATED"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    sput v10, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 970
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget v8, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    goto/16 :goto_0

    .line 974
    :pswitch_6
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_SYNC_DATA"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/BottomUpdateInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 976
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/BottomUpdateInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/Weather/widget/BottomUpdateInfo;->showUpdating()V

    .line 977
    :cond_4
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v7, v9}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherDetail;->showUpdating()V

    .line 978
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static {v7, v9, v12, v11}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 983
    :pswitch_7
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_SYNC_DATA_TIMEOUT"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 986
    :cond_5
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_6

    .line 987
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 988
    :cond_6
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$900(Lcom/htc/Weather/WeatherActivity;)V

    .line 989
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->showNetworkErrorDlg()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1000(Lcom/htc/Weather/WeatherActivity;)V

    goto/16 :goto_0

    .line 993
    :pswitch_8
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_PLAY_SOUND"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget v8, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/Weather/WeatherActivity;->playSound(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$1100(Lcom/htc/Weather/WeatherActivity;I)V

    goto/16 :goto_0

    .line 998
    :pswitch_9
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_ON_FINISH_ORIENTATION_CHANGE"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1000
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v7, v8, v9}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    goto/16 :goto_0

    .line 1004
    :pswitch_a
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_SET_GLVIEW_COVER"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    :pswitch_b
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_CHANGE_CITY_DATA"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    if-eqz v7, :cond_0

    .line 1011
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    .line 1012
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1300(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/TodayCondition;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1013
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1300(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/TodayCondition;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v8, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    goto/16 :goto_0

    .line 1018
    :pswitch_c
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_INIT_GLSURFACEVIEW"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->initGLVideoPlayback()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1400(Lcom/htc/Weather/WeatherActivity;)V

    goto/16 :goto_0

    .line 1023
    :pswitch_d
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_GOTO_TWO_PANEL_READY"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1500(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1025
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeHeaderBarFromWindow()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1600(Lcom/htc/Weather/WeatherActivity;)V

    .line 1026
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeBottomUpdateInfoFromWindow()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1700(Lcom/htc/Weather/WeatherActivity;)V

    goto/16 :goto_0

    .line 1030
    :pswitch_e
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_GOTO_FULLSCREEN_READY"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1500(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1032
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addHeaderBarToWindow()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1800(Lcom/htc/Weather/WeatherActivity;)V

    .line 1033
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addBottomUpdateInfoToWindow()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1900(Lcom/htc/Weather/WeatherActivity;)V

    goto/16 :goto_0

    .line 1037
    :pswitch_f
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_DEMO_NEXT_VIDEO"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1039
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->getNextDemoVideoPath()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$2000(Lcom/htc/Weather/WeatherActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeCondition(ILjava/lang/String;)Z

    .line 1040
    :cond_7
    sget-object v7, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    array-length v5, v7

    .line 1041
    .local v5, total:I
    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    add-int/lit8 v7, v7, 0x1

    rem-int v1, v7, v5

    .line 1042
    .local v1, idx:I
    sput v1, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    .line 1043
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$2100(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/DemoTitleBar;

    move-result-object v7

    sget v8, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/Weather/widget/DemoTitleBar;->setConditionDescrip(I)V

    .line 1044
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget-object v8, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    sget v9, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    aget v8, v8, v9

    invoke-static {v8}, Lcom/htc/weather/WeatherVideo;->getIconIdByVideoOrder(I)I

    move-result v8

    #calls: Lcom/htc/Weather/WeatherActivity;->playSoundEffect(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$2200(Lcom/htc/Weather/WeatherActivity;I)V

    goto/16 :goto_0

    .line 1048
    .end local v1           #idx:I
    .end local v5           #total:I
    :pswitch_10
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_DEMO_PREV_VIDEO"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1050
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->getPrevDemoVideoPath()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$2300(Lcom/htc/Weather/WeatherActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeCondition(ILjava/lang/String;)Z

    .line 1051
    :cond_8
    sget-object v7, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    array-length v6, v7

    .line 1052
    .local v6, total2:I
    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v7, v6

    rem-int v2, v7, v6

    .line 1053
    .local v2, idx2:I
    sput v2, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    .line 1054
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$2100(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/DemoTitleBar;

    move-result-object v7

    sget v8, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/Weather/widget/DemoTitleBar;->setConditionDescrip(I)V

    .line 1055
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget-object v8, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    sget v9, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    aget v8, v8, v9

    invoke-static {v8}, Lcom/htc/weather/WeatherVideo;->getIconIdByVideoOrder(I)I

    move-result v8

    #calls: Lcom/htc/Weather/WeatherActivity;->playSoundEffect(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$2200(Lcom/htc/Weather/WeatherActivity;I)V

    goto/16 :goto_0

    .line 1060
    .end local v2           #idx2:I
    .end local v6           #total2:I
    :pswitch_11
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_NETWORK_ERROR"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1063
    :cond_9
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_a

    .line 1064
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 1065
    :cond_a
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1066
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->showConnectionFailedDlg(Z)V
    invoke-static {v7, v10}, Lcom/htc/Weather/WeatherActivity;->access$2400(Lcom/htc/Weather/WeatherActivity;Z)V

    goto/16 :goto_0

    .line 1070
    :pswitch_12
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_NETWORK_ROAMING"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1073
    :cond_b
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_c

    .line 1074
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 1075
    :cond_c
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1076
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->showConnectionFailedDlg(Z)V
    invoke-static {v7, v9}, Lcom/htc/Weather/WeatherActivity;->access$2400(Lcom/htc/Weather/WeatherActivity;Z)V

    goto/16 :goto_0

    .line 1080
    :pswitch_13
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_NETWORK_INACTIVE"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1083
    :cond_d
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v7, :cond_e

    .line 1084
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7, v10}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 1085
    :cond_e
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1086
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->showNetworkInActiveDialog()V
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$2500(Lcom/htc/Weather/WeatherActivity;)V

    goto/16 :goto_0

    .line 1090
    :pswitch_14
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_SWITCH_TWO_PANEL"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherActivity;->toTwoPanel()V

    goto/16 :goto_0

    .line 1095
    :pswitch_15
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_CHANGE_VIDEO_TO_DEMO_MODE"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    invoke-static {v7}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 1098
    .local v4, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1099
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v7, v8, v9}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 1100
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    invoke-virtual {v7, v9, v4}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeCondition(ILjava/lang/String;)Z

    .line 1104
    :cond_f
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget-object v8, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    sget v9, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    aget v8, v8, v9

    invoke-static {v8}, Lcom/htc/weather/WeatherVideo;->getIconIdByVideoOrder(I)I

    move-result v8

    #calls: Lcom/htc/Weather/WeatherActivity;->playSoundEffect(I)V
    invoke-static {v7, v8}, Lcom/htc/Weather/WeatherActivity;->access$2200(Lcom/htc/Weather/WeatherActivity;I)V

    .line 1106
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherDetail;->getSlectedTabType()I

    move-result v8

    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v9, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v9}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    const/4 v7, 0x2

    if-ne v8, v7, :cond_10

    .line 1108
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherDetail;->HourlyTabToDemoMode()V

    .line 1112
    :cond_10
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1500(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1120
    .end local v4           #path:Ljava/lang/String;
    :pswitch_16
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_ON_CITY_ITEM_SELECTED"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->onCityListSelected(I)V

    goto/16 :goto_0

    .line 1125
    :pswitch_17
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_CHECK_TO_PAUSE_GLTHREAD"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1127
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->pause()I

    goto/16 :goto_0

    .line 1131
    :pswitch_18
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_CHANGE_VIDEO_SIZE_TO_DEMO_MODE"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->setAnimationFlag(I)V
    invoke-static {v7, v10}, Lcom/htc/Weather/WeatherActivity;->access$2600(Lcom/htc/Weather/WeatherActivity;I)V

    .line 1133
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1134
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v7, v8, v9}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 1135
    :cond_11
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v7, v7, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1140
    :pswitch_19
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_UPDATE_CITY_TIME_PER_MINUTE"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    if-eqz v7, :cond_0

    .line 1144
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$2700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/HeaderBar;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 1145
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$2700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/HeaderBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/Weather/widget/HeaderBar;->updateCityTime()V

    .line 1146
    :cond_12
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v8}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    check-cast v7, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v7}, Lcom/htc/Weather/WeatherDetail;->updateCityTime()V

    .line 1147
    const/16 v7, 0x1b

    iget-object v8, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-wide v8, v8, Lcom/htc/Weather/WeatherActivity;->mCityTimeUpdateInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-wide v12, v12, Lcom/htc/Weather/WeatherActivity;->mCityTimeUpdateInterval:J

    rem-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/Weather/WeatherActivity$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1151
    :pswitch_1a
    const-string v7, "WeatherMaGroup"

    const-string v8, "MainHandler - WHAT_RESUME_GLTHREAD"

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1153
    iget-object v7, p0, Lcom/htc/Weather/WeatherActivity$2;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;
    invoke-static {v7}, Lcom/htc/Weather/WeatherActivity;->access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->resume()I

    goto/16 :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
