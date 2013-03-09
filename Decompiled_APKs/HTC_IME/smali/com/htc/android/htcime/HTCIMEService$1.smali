.class Lcom/htc/android/htcime/HTCIMEService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 3061
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3064
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3066
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3068
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    if-nez v5, :cond_0

    .line 3069
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "recentapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3088
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput v7, v5, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    .line 3089
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #calls: Lcom/htc/android/htcime/HTCIMEService;->closeContextMenu()V
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$200(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 3090
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$300(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3091
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$300(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenu()V

    .line 3192
    :cond_1
    :goto_1
    return-void

    .line 3071
    :cond_2
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "globalactions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3074
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3075
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #calls: Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$100(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 3076
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 3077
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 3080
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    if-nez v5, :cond_0

    .line 3082
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->isFirstTimeTutoring()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3083
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->doneFirstTimeTutor()V

    goto :goto_0

    .line 3094
    :cond_4
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3095
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$400(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/AudioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3096
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$400(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/AudioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/AudioService;->updateRingerMode()V

    goto :goto_1

    .line 3116
    :cond_5
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3117
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3118
    .local v4, state:Ljava/lang/String;
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3124
    .local v2, reason:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 3125
    const-string v5, "DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "radioTurnedOff"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3127
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v6}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v5, v6, :cond_1

    .line 3128
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    const v6, 0x7300001

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_1

    .line 3133
    .end local v2           #reason:Ljava/lang/String;
    .end local v4           #state:Ljava/lang/String;
    :cond_6
    const-string v5, "com.htc.android.htcime.FORCE_SHOWSOFTINPUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3135
    const-string v5, "com.htc.android.htcime.SIP_RECORDER_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3136
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->finishSIPrecord()V

    goto/16 :goto_1

    .line 3139
    :cond_7
    const-string v5, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3140
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    goto/16 :goto_1

    .line 3142
    :cond_8
    const-string v5, "com.htc.android.htcime.hwlangswitch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3143
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$500(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$500(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->isShowingSwitchMenu()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$600(Lcom/htc/android/htcime/HTCIMEService;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v8, v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v5, :cond_1

    .line 3149
    :cond_a
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iget-boolean v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mIsLangSwitchlongPress:Z

    if-nez v5, :cond_b

    .line 3150
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->switchHWLang()V

    goto/16 :goto_1

    .line 3152
    :cond_b
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    iput-boolean v7, v5, Lcom/htc/android/htcime/HTCIMEService;->mIsLangSwitchlongPress:Z

    goto/16 :goto_1

    .line 3154
    :cond_c
    const-string v5, "com.htc.android.htcime.hwlangdialog"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3155
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$600(Lcom/htc/android/htcime/HTCIMEService;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v8, v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v5, :cond_1

    .line 3160
    :cond_e
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->showHWLangDialog()V

    .line 3162
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    goto/16 :goto_1

    .line 3165
    :cond_f
    const-string v5, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3166
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #calls: Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$100(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 3167
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    goto/16 :goto_1

    .line 3169
    :cond_10
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_11

    const-string v5, "START_1st_AUTO_COMP_TEST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3170
    const-string v5, "src"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3171
    .local v3, src:Ljava/lang/String;
    const-string v5, "pauseTime"

    const/16 v6, 0x1f4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3172
    .local v1, pauseTime:I
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    #getter for: Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-static {v5}, Lcom/htc/android/htcime/HTCIMEService;->access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v6, 0x6

    invoke-interface {v5, v6, v1, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 3174
    .end local v1           #pauseTime:I
    .end local v3           #src:Ljava/lang/String;
    :cond_11
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3188
    const-string v5, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3189
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService$1;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot2()V

    goto/16 :goto_1
.end method
