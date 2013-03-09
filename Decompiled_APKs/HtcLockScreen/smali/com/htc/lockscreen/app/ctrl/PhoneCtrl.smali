.class public Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;
.super Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.source "PhoneCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$1;,
        Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_PHONE_STATE:Ljava/lang/String; = "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

.field private static final KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field private static final KEY_CALL_TYPE:Ljava/lang/String; = "call_type"

.field private static final KEY_DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field private static final KEY_EVENT_DESCRIPTION:Ljava/lang/String; = "event_descriptioin"

.field private static final KEY_EVENT_ICON:Ljava/lang/String; = "event_icon"

.field private static final KEY_HINT:Ljava/lang/String; = "hint"

.field private static final KEY_IS_VIDEO_CALL:Ljava/lang/String; = "is_video_call"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field private static final KEY_SN_ICON:Ljava/lang/String; = "sn_icon"

.field private static final KEY_SN_STATUS:Ljava/lang/String; = "sn_status"

.field private static final LOG_PREFIX:Ljava/lang/String; = "PhoneCtrl"

.field private static final PHONE_HTC:Ljava/lang/String; = "htc"


# instance fields
.field private mCurPhonePkgName:Ljava/lang/String;

.field private mPhoneReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

.field private mPhoneStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lockscreen/telephony/PhoneState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;

    .line 42
    const-string v0, "htc"

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Landroid/content/Intent;)Lcom/htc/lockscreen/telephony/PhoneState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->parser2PhoneState(Landroid/content/Intent;)Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;

    return-object p1
.end method

.method private initPhoneRec()V
    .locals 3

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 70
    const-string v1, "PhoneCtrl"

    const-string v2, "initPhoneRec"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$PhoneReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;Lcom/htc/lockscreen/app/ctrl/PhoneCtrl$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "com.htc.lockscreen.phone.update_phoneState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parser2PhoneState(Landroid/content/Intent;)Lcom/htc/lockscreen/telephony/PhoneState;
    .locals 16
    .parameter "intent"

    .prologue
    .line 181
    const-string v1, "call_state"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, callState:I
    const-string v1, "operator_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, opName:Ljava/lang/String;
    const-string v1, "call_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, callType:Ljava/lang/String;
    const-string v1, "photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 185
    .local v5, photo:Landroid/graphics/Bitmap;
    const-string v1, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, name:Ljava/lang/String;
    const-string v1, "display_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, dislayNumber:Ljava/lang/String;
    const-string v1, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, location:Ljava/lang/String;
    const-string v1, "hint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, hint:Ljava/lang/String;
    const-string v1, "sn_status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, snStatus:Ljava/lang/String;
    const-string v1, "sn_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 192
    .local v11, snIcon:Landroid/graphics/Bitmap;
    const-string v1, "event_descriptioin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, eventDesp:Ljava/lang/String;
    const-string v1, "event_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    .line 194
    .local v13, eventIcon:Landroid/graphics/Bitmap;
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState callState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState opName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState callType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState dislayNumber:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState location:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState hint:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState snStatus:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "PhoneCtrl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parser2PhoneState eventDesp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct/range {v1 .. v13}, Lcom/htc/lockscreen/telephony/PhoneState;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private uninitPhoneRec()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    :cond_0
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearPhoneState(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 95
    .local v0, phoneState:Lcom/htc/lockscreen/telephony/PhoneState;
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Lcom/htc/lockscreen/telephony/PhoneState;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    return-object v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 47
    return-void
.end method

.method protected handleMessageUI(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 53
    return-void
.end method

.method public setPhoneState(Ljava/lang/String;Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 1
    .parameter "packageName"
    .parameter "phoneState"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method protected startCtrl()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->initPhoneRec()V

    .line 59
    return-void
.end method

.method protected stopCtrl()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->uninitPhoneRec()V

    .line 65
    return-void
.end method

.method public updateCurPhoneState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 102
    const-string v2, "PhoneCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurPhoneState mCurPhonePkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, oldState:I
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v0, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneStateMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mCurPhonePkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 108
    .local v1, phone:Lcom/htc/lockscreen/telephony/PhoneState;
    if-nez v1, :cond_1

    .line 109
    new-instance v1, Lcom/htc/lockscreen/telephony/PhoneState;

    .end local v1           #phone:Lcom/htc/lockscreen/telephony/PhoneState;
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/lockscreen/telephony/PhoneState;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v1       #phone:Lcom/htc/lockscreen/telephony/PhoneState;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/telephony/PhoneState;->setCallState(I)V

    .line 113
    :cond_1
    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 114
    const-string v2, "PhoneCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurPhoneState mPhoneState.mCallState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v4, v4, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v2, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v2, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-eq v2, v0, :cond_3

    .line 118
    :cond_2
    const-string v2, "PhoneCtrl"

    const-string v3, "updateCurPhoneState notifyLister"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v2, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v2, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-ne v2, v5, :cond_4

    if-eq v0, v5, :cond_4

    .line 124
    const-string v2, "PhoneCtrl"

    const-string v3, "updateCurPhoneState pokeWakeLock"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->backToLockScreen()V

    .line 128
    :cond_4
    return-void
.end method
