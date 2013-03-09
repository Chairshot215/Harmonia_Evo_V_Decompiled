.class public Lcom/htc/fm/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final ACTION_AVRCP_PANEL_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

.field private static final AVRCP_BACKWARD:Ljava/lang/String; = "Backward"

.field private static final AVRCP_FFSTART:Ljava/lang/String; = "Fastforward_Start"

.field private static final AVRCP_FFSTOP:Ljava/lang/String; = "Fastforward_Stop"

.field private static final AVRCP_FORWARD:Ljava/lang/String; = "Forward"

.field private static final AVRCP_INTENT_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.PANEL_OP"

.field private static final AVRCP_PAUSE:Ljava/lang/String; = "Pause"

.field private static final AVRCP_PLAY:Ljava/lang/String; = "Play"

.field private static final AVRCP_RWSTART:Ljava/lang/String; = "Rewind_Start"

.field private static final AVRCP_RWSTOP:Ljava/lang/String; = "Rewind_Stop"

.field private static final AVRCP_STOP:Ljava/lang/String; = "Stop"

.field private static DEBUG:Z = false

.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x1f4

.field private static DoubleClickDown:Z = false

.field private static FForRWIsDone:Z = false

.field private static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field private static final KEYCODE_MEDIA_NEXT:I = 0x57

.field private static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field private static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field private static final KEYCODE_MEDIA_REWIND:I = 0x59

.field private static final KEYCODE_MEDIA_STOP:I = 0x56

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static LongPressTimeout:Z = false

.field private static final MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT:I = 0x3

.field private static final MSG_HEADSETHOOK_LONGPRESS_TIMEOUT:I = 0x4

.field private static final MSG_LONGPRESS_TIMEOUT_FF:I = 0x1

.field private static final MSG_LONGPRESS_TIMEOUT_RW:I = 0x2

.field private static final MSG_RELEASE_WAKELOCK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaButtonIntentReceiver_FM"

.field private static inFFOrRWMode:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static previousIsDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 68
    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 70
    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    .line 72
    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 74
    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/fm/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    new-instance v0, Lcom/htc/fm/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/htc/fm/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/fm/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/htc/fm/MediaButtonIntentReceiver;->LongPressTimeout:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/fm/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private wakeForStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 343
    sget-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 344
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    sget-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 346
    sget-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 347
    sget-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    sget-object v1, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    return-void
.end method


# virtual methods
.method handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 355
    :cond_0
    const/4 v0, 0x1

    .line 356
    .local v0, bConsumed:Z
    const-string v3, "android.bluetooth.avrcp.intent.PANEL_OP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, operation:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/fm/FMRadioService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.music.musicservicecommand"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v3, "Play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    invoke-direct {p0}, Lcom/htc/fm/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 364
    :cond_1
    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 368
    invoke-direct {p0}, Lcom/htc/fm/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 369
    :cond_2
    const-string v3, "Forward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 373
    :cond_3
    const-string v3, "Backward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 374
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 377
    :cond_4
    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 378
    const-string v3, "command"

    const-string v4, "stop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 380
    :cond_5
    const-string v3, "Fastforward_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 381
    const-string v3, "command"

    const-string v4, "ffstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 383
    :cond_6
    const-string v3, "Fastforward_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    const-string v3, "command"

    const-string v4, "ffstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 386
    :cond_7
    const-string v3, "Rewind_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 387
    const-string v3, "command"

    const-string v4, "rwstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 389
    :cond_8
    const-string v3, "Rewind_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 390
    const-string v3, "command"

    const-string v4, "rwstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 393
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 160
    const-string v11, "MediaButtonIntentReceiver_FM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MediaButtonIntent][FMTuner] onReceive("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    sput-object p1, Lcom/htc/fm/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, intentAction:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "headsetowner"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, headsetOwner:Ljava/lang/String;
    const-string v11, "MediaButtonIntentReceiver_FM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MediaButtonIntent][FMTuner]  headsetOwner("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz v7, :cond_1

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "htcfm"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/htc/fm/MediaButtonIntentReceiver;->handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 171
    .local v2, bConsumed:Z
    if-nez v2, :cond_1

    .line 175
    const-string v11, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 177
    .local v4, event:Landroid/view/KeyEvent;
    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 182
    .local v10, keycode:I
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 183
    .local v1, action:I
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 185
    .local v5, eventtime:J
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 187
    if-nez v1, :cond_d

    .line 188
    const-string v11, "MediaButtonIntentReceiver_FM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Down Key,Key Code:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",inFForRWMode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    :goto_1
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 194
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "MSG_LONGPRESS_TIMEOUT_FF in queue"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_4
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 196
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "MSG_LONGPRESS_TIMEOUT_RW in queue"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_5
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 198
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT in queue"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_6
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 200
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "MSG_HEADSETHOOK_LONGPRESS_TIMEOUT in queue"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_7
    const/4 v3, 0x0

    .line 206
    .local v3, command:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 212
    const/16 v11, 0x4f

    if-ne v10, v11, :cond_8

    .line 213
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 216
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v11, :cond_8

    .line 217
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 219
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 234
    :cond_8
    :goto_2
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v11, :cond_a

    .line 235
    const/16 v11, 0x57

    if-ne v10, v11, :cond_f

    .line 238
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 239
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "send MSG_LONGPRESS_TIMEOUT_FF"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_9
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    :cond_a
    :goto_3
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 254
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->FForRWIsDone:Z

    if-nez v11, :cond_b

    .line 255
    const/16 v11, 0x5a

    if-ne v10, v11, :cond_11

    .line 256
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 257
    const-string v3, "ffstart"

    .line 326
    :cond_b
    :goto_4
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v11, :cond_c

    .line 327
    const-string v11, "MediaButtonIntentReceiver_FM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "command="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_c
    if-eqz v3, :cond_1

    .line 329
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/htc/fm/FMRadioService;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v8, i:Landroid/content/Intent;
    const-string v11, "com.htc.music.musicservicecommand"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v11, "command"

    invoke-virtual {v8, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 337
    invoke-direct {p0}, Lcom/htc/fm/MediaButtonIntentReceiver;->wakeForStarting()V

    goto/16 :goto_0

    .line 190
    .end local v3           #command:Ljava/lang/String;
    .end local v8           #i:Landroid/content/Intent;
    :cond_d
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 191
    const-string v11, "MediaButtonIntentReceiver_FM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Up Key,Key Code:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",inFForRWMode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    .restart local v3       #command:Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 228
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 242
    :cond_f
    const/16 v11, 0x58

    if-ne v10, v11, :cond_a

    .line 245
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v11, :cond_10

    .line 246
    const-string v11, "MediaButtonIntentReceiver_FM"

    const-string v12, "send MSG_LONGPRESS_TIMEOUT_RW"

    invoke-static {v11, v12}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_10
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 258
    :cond_11
    const/16 v11, 0x59

    if-ne v10, v11, :cond_b

    .line 259
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 260
    const-string v3, "rwstart"

    goto/16 :goto_4

    .line 264
    :cond_12
    const/4 v11, 0x1

    if-ne v1, v11, :cond_b

    .line 265
    packed-switch v10, :pswitch_data_0

    .line 316
    :cond_13
    :goto_5
    :pswitch_0
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 317
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->FForRWIsDone:Z

    goto/16 :goto_4

    .line 267
    :pswitch_1
    const-string v3, "stop"

    .line 268
    goto :goto_5

    .line 270
    :pswitch_2
    const-string v3, "togglepause"

    .line 271
    goto :goto_5

    .line 275
    :pswitch_3
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v11, :cond_14

    .line 277
    const-string v3, "ffstop"

    .line 278
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 280
    :cond_14
    const-string v3, "next"

    .line 282
    goto :goto_5

    .line 286
    :pswitch_4
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v11, :cond_15

    .line 288
    const-string v3, "rwstop"

    .line 289
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 291
    :cond_15
    const-string v3, "previous"

    .line 293
    goto :goto_5

    .line 295
    :pswitch_5
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->DoubleClickDown:Z

    if-nez v11, :cond_13

    .line 298
    sget-boolean v11, Lcom/htc/fm/MediaButtonIntentReceiver;->LongPressTimeout:Z

    if-nez v11, :cond_13

    .line 303
    sget-object v11, Lcom/htc/fm/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    const-wide/16 v13, 0x1f4

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    invoke-direct {p0}, Lcom/htc/fm/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_5

    .line 310
    :pswitch_6
    const-string v3, "ffstop"

    .line 311
    goto :goto_5

    .line 313
    :pswitch_7
    const-string v3, "rwstop"

    goto :goto_5

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
