.class public abstract Lcom/htc/omadm/rule/Rule;
.super Landroid/os/Handler;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;,
        Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;
    }
.end annotation


# static fields
.field public static LOG_TAG:Ljava/lang/String;

.field private static bBroadcastKeyMotionEvent:Z

.field private static bDispatchKeyReceiver:Z

.field public static bHasTryResume:Z

.field public static mCONTEXT:Landroid/content/Context;

.field protected static mDMChannelState:I

.field protected static mPhoneCallState:I

.field protected static mSessionControl:Z

.field private static nSESSION_ID:I

.field private static nSESSION_RESULT:I

.field private static nSESSION_STATE:I

.field private static nSESSION_TYPE:I


# instance fields
.field protected DBG:Z

.field protected mConn:Lcom/htc/omadm/rule/ConnMo;

.field mDMChannelStateHandler:Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;

.field protected mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

.field protected mDispatchKeyReceiver:Landroid/content/BroadcastReceiver;

.field protected mGUICallBack:Landroid/os/Handler;

.field mPhoneCallStateObserver:Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    const-string v0, "Rule"

    sput-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    .line 44
    sput-boolean v1, Lcom/htc/omadm/rule/Rule;->mSessionControl:Z

    .line 46
    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INIT:I

    sput v0, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    .line 48
    sput v2, Lcom/htc/omadm/rule/Rule;->nSESSION_ID:I

    .line 49
    sput v2, Lcom/htc/omadm/rule/Rule;->nSESSION_RESULT:I

    .line 51
    sput v1, Lcom/htc/omadm/rule/Rule;->mPhoneCallState:I

    .line 54
    sput v2, Lcom/htc/omadm/rule/Rule;->mDMChannelState:I

    .line 57
    sput-boolean v1, Lcom/htc/omadm/rule/Rule;->bHasTryResume:Z

    .line 62
    sput-boolean v1, Lcom/htc/omadm/rule/Rule;->bDispatchKeyReceiver:Z

    .line 63
    sput-boolean v1, Lcom/htc/omadm/rule/Rule;->bBroadcastKeyMotionEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/rule/Rule;->DBG:Z

    .line 40
    iput-object v1, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 52
    new-instance v0, Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;-><init>(Lcom/htc/omadm/rule/Rule;)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mPhoneCallStateObserver:Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;

    .line 55
    new-instance v0, Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;-><init>(Lcom/htc/omadm/rule/Rule;)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMChannelStateHandler:Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;

    .line 60
    iput-object v1, p0, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/htc/omadm/rule/Rule$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/Rule$1;-><init>(Lcom/htc/omadm/rule/Rule;)V

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDispatchKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    sput-object p1, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/htc/omadm/rule/Rule;->init()V

    .line 69
    return-void
.end method

.method public static GetSessionID()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/htc/omadm/rule/Rule;->nSESSION_ID:I

    return v0
.end method

.method public static GetSessionResult()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/htc/omadm/rule/Rule;->nSESSION_RESULT:I

    return v0
.end method

.method public static GetSessionState()I
    .locals 3

    .prologue
    .line 104
    sget v1, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INIT:I

    if-ne v1, v2, :cond_0

    .line 106
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 107
    .local v0, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_SessionState()I

    move-result v1

    sput v1, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    .line 109
    :cond_0
    sget v1, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    return v1
.end method

.method public static GetSessionType()I
    .locals 3

    .prologue
    .line 122
    sget v1, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 124
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 125
    .local v0, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_SessionType()I

    move-result v1

    sput v1, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    .line 127
    :cond_0
    sget v1, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    return v1
.end method

.method public static SetSessionID(I)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 131
    sput p0, Lcom/htc/omadm/rule/Rule;->nSESSION_ID:I

    .line 132
    return-void
.end method

.method public static SetSessionResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 139
    sput p0, Lcom/htc/omadm/rule/Rule;->nSESSION_RESULT:I

    .line 140
    return-void
.end method

.method public static SetSessionState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 92
    sget v0, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    .line 93
    .local v0, old:I
    sput p0, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    .line 94
    sget v2, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    if-ne v0, v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v2, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_MAPPING_STRING:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_MAPPING_STRING:[Ljava/lang/String;

    sget v5, Lcom/htc/omadm/rule/Rule;->nSESSION_STATE:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v1

    .line 100
    .local v1, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v1, p0}, Lcom/htc/omadm/util/Setting;->Set_SessionState(I)V

    goto :goto_0
.end method

.method public static SetSessionType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 113
    sget v1, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    if-eq v1, p0, :cond_0

    .line 115
    sput p0, Lcom/htc/omadm/rule/Rule;->nSESSION_TYPE:I

    .line 116
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 117
    .local v0, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v0, p0}, Lcom/htc/omadm/util/Setting;->Set_SessionType(I)V

    .line 119
    .end local v0           #st:Lcom/htc/omadm/util/Setting;
    :cond_0
    return-void
.end method

.method public static getSessionControl()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/htc/omadm/rule/Rule;->mSessionControl:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    .line 75
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/rule/Rule;->mPhoneCallStateObserver:Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->addPhoneCallStateObserver(Ljava/util/Observer;)V

    .line 79
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    sget-object v1, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/omadm/rule/Rule;->mDMChannelStateHandler:Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;

    invoke-virtual {v0, v1, v2}, Lcom/htc/omadm/libdo/status/StateRegister;->registDMChannelStateHandler(Ljava/lang/String;Landroid/os/Handler;)Z

    .line 81
    return-void
.end method

.method public static updateSessionStateByGUI(IILjava/lang/String;)V
    .locals 3
    .parameter "option"
    .parameter "status"
    .parameter "actionOfButtonType"

    .prologue
    .line 247
    sget-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSessionStateByGUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const-string v0, "com.htc.andorid.omadm.gui.callback.normal.positive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.andorid.omadm.gui.callback.high.positive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    sget-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HFA/READY cancel"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    invoke-static {v0}, Lcom/htc/omadm/rule/Rule;->SetSessionState(I)V

    .line 257
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract EndSession(I)V
.end method

.method protected GetBroadcastKeyMotionEvent()Z
    .locals 1

    .prologue
    .line 241
    sget-boolean v0, Lcom/htc/omadm/rule/Rule;->bBroadcastKeyMotionEvent:Z

    return v0
.end method

.method protected GetDispatchKeyReceiver()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/htc/omadm/rule/Rule;->bDispatchKeyReceiver:Z

    return v0
.end method

.method public abstract StartSession()V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected setDispatchKeyReceiver(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 196
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/omadm/rule/Rule;->DBG:Z

    if-eqz v2, :cond_0

    .line 197
    sget-object v2, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL: setDispatchKeyReceiver -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v1, mNIPRLIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BROADCAST_KEYEVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "android.intent.action.BROADCAST_MOTIONEVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "android.intent.action.BROADCAST_TRACKBALLEVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    sget-object v2, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/omadm/rule/Rule;->mDispatchKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/omadm/rule/Rule;->bDispatchKeyReceiver:Z

    .line 214
    .end local v1           #mNIPRLIntentFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-object v2, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/omadm/rule/Rule;->mDispatchKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/omadm/rule/Rule;->bDispatchKeyReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected turnOnOffBroadcastKeyMotionEvent(Z)V
    .locals 5
    .parameter "bTurnOn"

    .prologue
    .line 219
    new-instance v1, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;

    invoke-direct {v1}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;-><init>()V

    .line 221
    .local v1, tWm:Lcom/htc/wrap/android/view/HtcWrapIWindowManager;
    if-nez v1, :cond_0

    .line 222
    sget-object v2, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "PRL: IWindowManager is null"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v2, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL: turnOnOffBroadcastKeyMotionEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->broadcastKeyinEvent(Z)V

    .line 227
    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->broadcastMotionEvent(Z)V

    .line 228
    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->broadcastTrackballEvent(Z)V

    .line 229
    sput-boolean p1, Lcom/htc/omadm/rule/Rule;->bBroadcastKeyMotionEvent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
