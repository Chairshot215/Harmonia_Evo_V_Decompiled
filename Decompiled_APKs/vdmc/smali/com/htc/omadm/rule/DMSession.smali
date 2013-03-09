.class public Lcom/htc/omadm/rule/DMSession;
.super Lcom/htc/omadm/rule/Rule;
.source "DMSession.java"


# static fields
.field public static WAP_DATA:[B

.field public static hasHangOffPhone:Z

.field private static mInstance:Lcom/htc/omadm/rule/DMSession;


# instance fields
.field private final Connecting:I

.field private final Fail:I

.field private final Ready:I

.field mCallBackToService:Landroid/os/Message;

.field mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

.field mTarget:Landroid/os/Handler;

.field mTrans:Lcom/htc/omadm/rule/Transaction;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/rule/DMSession;->hasHangOffPhone:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "callBack"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/omadm/rule/Rule;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 833
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/omadm/rule/DMSession;->Ready:I

    .line 834
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/omadm/rule/DMSession;->Connecting:I

    .line 835
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/omadm/rule/DMSession;->Fail:I

    .line 837
    new-instance v0, Lcom/htc/omadm/rule/DMSession$2;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/DMSession$2;-><init>(Lcom/htc/omadm/rule/DMSession;)V

    iput-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mUIHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/htc/omadm/rule/DMSession$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/DMSession$1;-><init>(Lcom/htc/omadm/rule/DMSession;)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    .line 209
    invoke-direct {p0, p3}, Lcom/htc/omadm/rule/DMSession;->init(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public static Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "callBack"

    .prologue
    .line 213
    new-instance v0, Lcom/htc/omadm/rule/DMSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/omadm/rule/DMSession;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)V

    sput-object v0, Lcom/htc/omadm/rule/DMSession;->mInstance:Lcom/htc/omadm/rule/DMSession;

    .line 214
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v0

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mInstance:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->CreateNewDMSession(Lcom/htc/omadm/rule/DMSession;)V

    .line 215
    sget-object v0, Lcom/htc/omadm/rule/DMSession;->mInstance:Lcom/htc/omadm/rule/DMSession;

    return-object v0
.end method

.method static synthetic access$000(Lcom/htc/omadm/rule/DMSession;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSingleton()Lcom/htc/omadm/rule/DMSession;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/htc/omadm/rule/DMSession;->mInstance:Lcom/htc/omadm/rule/DMSession;

    return-object v0
.end method

.method private init(Landroid/os/Message;)V
    .locals 4
    .parameter "callBack"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    .line 224
    iput-object p1, p0, Lcom/htc/omadm/rule/DMSession;->mCallBackToService:Landroid/os/Message;

    .line 225
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/htc/omadm/rule/DMSession;->SetSessionType(I)V

    .line 226
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/htc/omadm/rule/DMSession;->SetSessionID(I)V

    .line 229
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->CheckUpdateResult()I

    move-result v0

    .line 235
    .local v0, updateResult:I
    invoke-static {v0}, Lcom/htc/omadm/rule/DMSession;->SetSessionResult(I)V

    .line 242
    .end local v0           #updateResult:I
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    .line 243
    sget-object v1, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAP_DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    invoke-static {v3}, Lcom/htc/omadm/util/Utility;->byteToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/rule/DMSession;->InitGUI()V

    .line 247
    new-instance v1, Lcom/htc/omadm/rule/Transaction;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-direct {v1, p0, v2}, Lcom/htc/omadm/rule/Transaction;-><init>(Lcom/htc/omadm/rule/DMSession;Lcom/htc/omadm/gui/SprintGuiPrototype;)V

    iput-object v1, p0, Lcom/htc/omadm/rule/DMSession;->mTrans:Lcom/htc/omadm/rule/Transaction;

    .line 248
    return-void

    .line 239
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/htc/omadm/rule/DMSession;->SetSessionResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public EndSession(I)V
    .locals 8
    .parameter "updateState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    sget-object v0, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+EndSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0, v3}, Lcom/htc/omadm/rule/DMSession;->setDispatchKeyReceiver(Z)V

    .line 327
    invoke-virtual {p0, v3}, Lcom/htc/omadm/rule/DMSession;->turnOnOffBroadcastKeyMotionEvent(Z)V

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/rule/DMSession;->GetDispatchKeyReceiver()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 331
    invoke-virtual {p0, v3}, Lcom/htc/omadm/rule/DMSession;->setDispatchKeyReceiver(Z)V

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/htc/omadm/rule/DMSession;->GetBroadcastKeyMotionEvent()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 335
    invoke-virtual {p0, v3}, Lcom/htc/omadm/rule/DMSession;->turnOnOffBroadcastKeyMotionEvent(Z)V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisplayDialog(Z)V

    .line 339
    sput-boolean v3, Lcom/htc/omadm/rule/DMSession;->mSessionControl:Z

    .line 340
    invoke-static {p1}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 341
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 342
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/omadm/libdo/system/SysLib;->setForeground(Z)V

    .line 343
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    .line 344
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->Close()V

    .line 347
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v0

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    if-ne v0, v1, :cond_3

    .line 348
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_3
    :pswitch_0
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    if-ne v0, v5, :cond_4

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    if-ne p1, v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    :goto_0
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->CLEAR_COMMIT_MAP()V

    .line 402
    sget-object v0, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-EndSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 379
    :cond_4
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    if-ne v0, v5, :cond_5

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_NOPAYLOAD:I

    if-ne p1, v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 383
    :cond_5
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    if-ne v0, v6, :cond_6

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    if-ne p1, v0, :cond_6

    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 388
    :cond_6
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    if-ne p1, v0, :cond_7

    .line 390
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 392
    :cond_7
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    if-ne p1, v0, :cond_8

    .line 394
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 397
    :cond_8
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    invoke-static {v4}, Lcom/htc/omadm/rule/DMSession;->SetSessionType(I)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public InitGUI()V
    .locals 5

    .prologue
    .line 251
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    return-void

    .line 253
    :pswitch_1
    new-instance v0, Lcom/htc/omadm/gui/DMGuiHFA;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiHFA;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    goto :goto_0

    .line 257
    :pswitch_2
    new-instance v0, Lcom/htc/omadm/gui/DMGuiDC;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiDC;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    goto :goto_0

    .line 262
    :pswitch_3
    new-instance v0, Lcom/htc/omadm/gui/DMGuiPRL;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiPRL;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    goto :goto_0

    .line 267
    :pswitch_4
    new-instance v0, Lcom/htc/omadm/gui/DMGuiFUMO;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiFUMO;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 269
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 270
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/firmware/FumoManager;->DeleteDLfile()V

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 272
    iget-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    const-string v1, "fumo"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/firmware/FumoManager;->CreateFumoFolder(Ljava/lang/String;)Z

    goto :goto_0

    .line 276
    :pswitch_5
    new-instance v0, Lcom/htc/omadm/gui/DMGuiReport;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiReport;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 278
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    goto :goto_0

    .line 281
    :pswitch_6
    new-instance v0, Lcom/htc/omadm/gui/DMGuiFotaReport;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiFotaReport;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 283
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    goto/16 :goto_0

    .line 287
    :pswitch_7
    new-instance v0, Lcom/htc/omadm/gui/DMGuiReport;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiReport;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 289
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    goto/16 :goto_0

    .line 294
    :pswitch_8
    new-instance v0, Lcom/htc/omadm/gui/DMGuiNIADefault;

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v3, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiNIADefault;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    goto/16 :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public StartSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    sget-object v0, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSession(1.0.2):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_MAPPING_STRING:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sput-boolean v4, Lcom/htc/omadm/rule/DMSession;->mSessionControl:Z

    .line 308
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 309
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/omadm/libdo/system/SysLib;->setForeground(Z)V

    .line 311
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0, v5}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisplayDialog(Z)V

    .line 313
    invoke-virtual {p0, v4}, Lcom/htc/omadm/rule/DMSession;->setDispatchKeyReceiver(Z)V

    .line 314
    invoke-virtual {p0, v4}, Lcom/htc/omadm/rule/DMSession;->turnOnOffBroadcastKeyMotionEvent(Z)V

    .line 315
    invoke-virtual {p0, v5}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 406
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    sget-object v12, Lcom/htc/omadm/prop/PropertyState;->RULE_EVENT_MAPPING_STRING:[Ljava/lang/String;

    iget v13, p1, Landroid/os/Message;->what:I

    aget-object v12, v12, v13

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 830
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :try_start_1
    iget v11, p1, Landroid/os/Message;->what:I

    if-nez v11, :cond_3

    .line 418
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v7

    .line 419
    .local v7, phonInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 421
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Not support for gsm mode"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v11, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_IS_NI:[Z

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v12

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_1

    .line 424
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Drop event in GSM mode"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 512
    .end local v7           #phonInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    :catch_0
    move-exception v4

    .line 514
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #phonInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;
    :cond_1
    :try_start_3
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showPhoneTypeError()V

    goto :goto_1

    .line 430
    :cond_2
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "....DM/READY"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    .line 436
    iget-object v11, p0, Lcom/htc/omadm/rule/DMSession;->mTrans:Lcom/htc/omadm/rule/Transaction;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/Transaction;->Check()Z

    move-result v8

    .line 437
    .local v8, result:Z
    if-nez v8, :cond_4

    .line 438
    monitor-exit p0

    goto :goto_0

    .line 441
    .end local v7           #phonInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;
    .end local v8           #result:Z
    :cond_3
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    .line 443
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "....DM/RESUME DOWNLOAD"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    const/4 v1, -0x1

    .line 448
    .local v1, connResult:I
    const/4 v3, 0x1

    .line 450
    .local v3, count:I
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->OpenDataConnection()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 453
    :goto_2
    sget-boolean v11, Lcom/htc/omadm/rule/DMSession;->mSessionControl:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    if-eq v1, v11, :cond_5

    const/16 v11, 0x12c

    if-ge v3, v11, :cond_5

    .line 454
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CheckDataConnection()I

    move-result v1

    .line 455
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CheckDataConnection():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Lcom/htc/omadm/prop/PropertyConn;->converConnectionResult(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    add-int/lit8 v3, v3, 0x1

    .line 460
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_6

    .line 461
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 471
    :cond_5
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->pollSession()V

    .line 473
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_7

    .line 474
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 475
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 476
    monitor-exit p0

    goto/16 :goto_0

    .line 465
    :cond_6
    const-wide/16 v11, 0x3e8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 479
    :cond_7
    const/4 v11, 0x2

    if-ne v1, v11, :cond_b

    .line 480
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    const-string v12, "63.168.225.44"

    invoke-virtual {v11, v12}, Lcom/htc/omadm/rule/ConnMo;->EnsureRouteToHost(Ljava/lang/String;)Z

    .line 481
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->EnableToUninterruptConnection()V

    .line 482
    iget v11, p1, Landroid/os/Message;->what:I

    if-nez v11, :cond_9

    .line 484
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 485
    .local v2, connectedMsg:Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v2, Landroid/os/Message;->what:I

    .line 486
    invoke-virtual {p0, v2}, Lcom/htc/omadm/rule/DMSession;->sendMessage(Landroid/os/Message;)Z

    .line 512
    .end local v2           #connectedMsg:Landroid/os/Message;
    :cond_8
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 488
    :cond_9
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_8

    .line 490
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/omadm/rule/DMSession;->bHasTryResume:Z

    .line 491
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-eq v11, v12, :cond_a

    .line 492
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "EVENT_RESUME_DOWNLOAD:not download abort just keep connection"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 496
    :cond_a
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "EVENT_RESUME_DOWNLOAD:ResumeFumoDL()"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/VdmcCtl;->ResumeFumoDL()Z

    goto :goto_3

    .line 501
    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 502
    .local v0, connFailMsg:Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v0, Landroid/os/Message;->what:I

    .line 503
    const/16 v11, 0x3f4

    iput v11, v0, Landroid/os/Message;->arg1:I

    .line 504
    invoke-virtual {p0, v0}, Lcom/htc/omadm/rule/DMSession;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 507
    .end local v0           #connFailMsg:Landroid/os/Message;
    :cond_c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 508
    .restart local v0       #connFailMsg:Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v0, Landroid/os/Message;->what:I

    .line 509
    const/16 v11, 0x3f4

    iput v11, v0, Landroid/os/Message;->arg1:I

    .line 510
    invoke-virtual {p0, v0}, Lcom/htc/omadm/rule/DMSession;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 522
    .end local v0           #connFailMsg:Landroid/os/Message;
    .end local v1           #connResult:I
    .end local v3           #count:I
    :pswitch_2
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    .line 528
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->InitVDMC()V

    .line 529
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "VdmcCtl.Init()"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/VdmcCtl;->Init()Z

    .line 535
    :try_start_4
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 537
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/htc/omadm/prop/PropertyState;->COUNT_DOWN:I

    invoke-virtual {v11, v12, v13}, Lcom/htc/VdmcCtl;->HFA_RetryInterval(ZI)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    sput v11, Lcom/htc/omadm/prop/PropertyState;->COUNT_DOWN:I

    .line 539
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->mCONTEXT:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/htc/omadm/prop/PropertyState;->RETRY_TIME_LIMITATION:I

    invoke-virtual {v11, v12, v13}, Lcom/htc/VdmcCtl;->HFA_NumRetries(ZI)I

    move-result v11

    sput v11, Lcom/htc/omadm/prop/PropertyState;->RETRY_TIME_LIMITATION:I

    .line 541
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/VdmcCtl;->StartDM_HFA()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 585
    :catch_1
    move-exception v4

    .line 586
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 542
    .end local v4           #e:Ljava/lang/Exception;
    :cond_d
    :try_start_5
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_e

    .line 544
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->StartDM_DC(Z)Z

    goto/16 :goto_0

    .line 546
    :cond_e
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_f

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_11

    .line 549
    :cond_f
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    .line 550
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->StartDM_PRL(Z)Z

    goto/16 :goto_0

    .line 552
    :cond_10
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->StartDM_PRL(Z)Z

    goto/16 :goto_0

    .line 555
    :cond_11
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_12

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_12

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_12

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0x17

    if-ne v11, v12, :cond_15

    .line 560
    :cond_12
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_13

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_14

    .line 562
    :cond_13
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->StartFumo(Z)Z

    goto/16 :goto_0

    .line 564
    :cond_14
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->StartFumo(Z)Z

    goto/16 :goto_0

    .line 567
    :cond_15
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_16

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_19

    .line 569
    :cond_16
    const/4 v5, 0x0

    .line 570
    .local v5, fumoReport:Z
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionResult()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionResult()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_18

    .line 572
    :cond_17
    const/4 v5, 0x1

    .line 573
    :cond_18
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/htc/VdmcCtl;->ReportFumo(Z)Z

    goto/16 :goto_0

    .line 574
    .end local v5           #fumoReport:Z
    :cond_19
    sget-object v11, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_IS_NI:[Z

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v12

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_0

    .line 575
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    sget-object v12, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->handleNiaMessage([B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 592
    :pswitch_3
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    invoke-virtual {v11, v12}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    .line 594
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0x17

    if-ne v11, v12, :cond_1a

    .line 597
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 598
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    .line 599
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Trigger Next CIFUMO by press button"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :cond_1a
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    iget-boolean v11, v11, Lcom/htc/omadm/gui/ext/DMGui;->CIForFota_flag:Z

    if-eqz v11, :cond_1b

    .line 604
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    invoke-static {v11}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 605
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    invoke-virtual {v11, v12}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    .line 608
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/VdmcCtl;->ReportFumo(I)Z

    .line 609
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Htc fota trigger CIFUMO, skip all CIFUMO."

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1b
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/VdmcCtl;->StartFumoDL()Z

    .line 613
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "StartFumoDL"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 618
    :pswitch_4
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_PROVISIONING:I

    invoke-static {v11}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    goto/16 :goto_0

    .line 621
    :pswitch_5
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_SESSION_END_PROVISION:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_1c

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1c

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1f

    .line 628
    :cond_1c
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-ne v11, v12, :cond_1d

    .line 630
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "not change session state in resume downloading...."

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 634
    :cond_1d
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 635
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_1e

    .line 637
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 641
    :cond_1e
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showFail()V

    .line 642
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 645
    :cond_1f
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_20

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_21

    .line 649
    :cond_20
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 650
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    goto/16 :goto_0

    .line 654
    :cond_21
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_22

    .line 657
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 658
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 661
    :cond_22
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0x17

    if-ne v11, v12, :cond_24

    .line 663
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Show report ok..EVENT_SESSION_END_PROVISION: as you see?? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_23

    .line 667
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 668
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 669
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "DM_TYPE_FUMO_REPORT_DEFER_PACKAGE hange state to cancel "

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :cond_23
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 672
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    .line 674
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "DM_TYPE_FUMO_REPORT_DEFER_PACKAGE hange state to cancel "

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 678
    :cond_24
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_25

    .line 680
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "DM LAWMO session success. "

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 682
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    goto/16 :goto_0

    .line 688
    :cond_25
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 690
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/libdo/system/SysLib;->digitalOffline()Z

    .line 692
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->COMMIT_ALL_Set_ConValue()V

    .line 694
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v11

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z

    .line 695
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    goto/16 :goto_0

    .line 703
    :pswitch_6
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_27

    .line 704
    sget v11, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    sget v12, Lcom/htc/omadm/prop/PropertyState;->RETRY_TIME_LIMITATION:I

    if-le v11, v12, :cond_26

    .line 705
    const/4 v11, 0x1

    sput v11, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    .line 706
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v12, 0x197

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 708
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    goto/16 :goto_0

    .line 710
    :cond_26
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    sget v12, Lcom/htc/omadm/prop/PropertyState;->COUNT_DOWN:I

    sget v13, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    invoke-virtual {v11, v12, v13}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showOther(II)V

    .line 711
    sget v11, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    goto/16 :goto_0

    .line 714
    :cond_27
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_28

    .line 716
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 725
    :goto_4
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    goto/16 :goto_0

    .line 721
    :cond_28
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v11}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showFail()V

    .line 722
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto :goto_4

    .line 729
    :pswitch_7
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 731
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 732
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 735
    :pswitch_8
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    .line 739
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-eq v11, v12, :cond_0

    .line 743
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v12, 0x3f4

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 744
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 745
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 753
    :pswitch_9
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-ne v11, v12, :cond_29

    .line 755
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "user has canceled and don\'t show UI"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 758
    :cond_29
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    if-eq v11, v12, :cond_2a

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    if-ne v11, v12, :cond_2b

    .line 760
    :cond_2a
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "warning in EVENT_SESSION_DM_ABORTED"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 761
    :cond_2b
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-ne v11, v12, :cond_2c

    .line 762
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "abort in downloading and don\'t show UI"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 763
    :cond_2c
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2d

    .line 766
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 767
    .local v6, nopayloadMsg:Landroid/os/Message;
    const/16 v11, 0xa

    iput v11, v6, Landroid/os/Message;->what:I

    .line 768
    invoke-virtual {p0, v6}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 773
    .end local v6           #nopayloadMsg:Landroid/os/Message;
    :cond_2d
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v12, 0x4d1

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 774
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 775
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    goto/16 :goto_0

    .line 780
    :pswitch_a
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-eq v11, v12, :cond_0

    .line 786
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    invoke-static {v11}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 788
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CheckDataConnection()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2e

    .line 790
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "EVENT_SESSION_DL_ABORTED:ResumeFumoDL()"

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/VdmcCtl;->ResumeFumoDL()Z

    goto/16 :goto_0

    .line 795
    :cond_2e
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "EVENT_SESSION_DL_ABORTED:start resume connection..."

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 797
    .local v10, resumeDLMsg2:Landroid/os/Message;
    const/4 v11, 0x6

    iput v11, v10, Landroid/os/Message;->what:I

    .line 798
    invoke-virtual {p0, v10}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 805
    .end local v10           #resumeDLMsg2:Landroid/os/Message;
    :pswitch_b
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-ne v11, v12, :cond_2f

    sget-boolean v11, Lcom/htc/omadm/rule/DMSession;->hasHangOffPhone:Z

    if-nez v11, :cond_2f

    .line 809
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/omadm/rule/DMSession;->hasHangOffPhone:Z

    .line 810
    sget-object v11, Lcom/htc/omadm/rule/DMSession;->LOG_TAG:Ljava/lang/String;

    const-string v12, "EVENT_CALL_END:start resume download..."

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 812
    .local v9, resumeDLMsg:Landroid/os/Message;
    const/4 v11, 0x6

    iput v11, v9, Landroid/os/Message;->what:I

    .line 813
    invoke-virtual {p0, v9}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 816
    .end local v9           #resumeDLMsg:Landroid/os/Message;
    :cond_2f
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    .line 820
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-eq v11, v12, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v11

    sget v12, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-eq v11, v12, :cond_0

    .line 824
    iget-object v11, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v12, 0x3f4

    invoke-virtual {v11, v12}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 825
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 826
    sget v11, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {p0, v11}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
