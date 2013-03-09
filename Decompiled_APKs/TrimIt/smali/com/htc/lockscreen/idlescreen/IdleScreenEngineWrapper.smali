.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;
.source "IdleScreenEngineWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# static fields
.field static final DO_ATTACH:I = 0xa

.field static final DO_DETACH:I = 0x14

.field static final DO_SET_DESIRED_SIZE:I = 0x1e

.field static final MSG_IDLESCREEN_COMMAND:I = 0x2729

.field static final MSG_LOCKSCREEN_COMMAND:I = 0x2742

.field static final MSG_TOUCH_EVENT:I = 0x2738

.field static final MSG_UPDATE_SURFACE:I = 0x2710

.field static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field static final MSG_WINDOW_RESIZED:I = 0x272e

.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngineWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

.field mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field final mFormat:I

.field mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field final mWindowAnimation:I

.field final mWindowFlag:I

.field mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZIILandroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "conn"
    .parameter "windowToken"
    .parameter "windowType"
    .parameter "windowAnimation"
    .parameter "windowFlag"
    .parameter "format"
    .parameter "isPreview"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "looper"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 50
    if-nez p11, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getMainLooper()Landroid/os/Looper;

    move-result-object p11

    .line 53
    :cond_0
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v1, p1, p11, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 55
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    .line 56
    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 57
    iput p4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    .line 58
    iput p5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    .line 59
    iput p6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowFlag:I

    .line 60
    iput p7, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mFormat:I

    .line 61
    iput-boolean p8, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    .line 62
    iput p9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    .line 63
    iput p10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    .line 65
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 67
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 72
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v2, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 86
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iput-object p1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    .line 90
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 88
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 251
    const-string v9, "IdleScreenEngineWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown message type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 129
    :sswitch_0
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    if-eqz v9, :cond_0

    .line 133
    :try_start_0
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    invoke-interface {v9, p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;->attachEngine(Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-result-object v4

    .line 140
    .local v4, engine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    iget v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mFormat:I

    invoke-virtual {v4, v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceFormat(I)V

    .line 141
    iget v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowFlag:I

    invoke-virtual {v4, v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowFlag(I)V

    .line 143
    iput-object v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 144
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v9, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->addEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 145
    invoke-virtual {v4, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V

    goto :goto_0

    .line 134
    .end local v4           #engine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    :catch_0
    move-exception v3

    .line 135
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "IdleScreenEngineWrapper"

    const-string v10, "IdleScreen host disappeared"

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v3           #e:Landroid/os/RemoteException;
    :sswitch_1
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v9, :cond_1

    .line 150
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v9, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->removeEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 151
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->detach()V

    .line 152
    iput-object v12, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 154
    :cond_1
    iput-object v12, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    .line 155
    iput-object v12, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v9, :cond_0

    .line 162
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDesiredSizeChanged(II)V

    goto :goto_0

    .line 166
    :sswitch_3
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v11, :cond_0

    .line 169
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v11, v9, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZ)V

    goto :goto_0

    .line 172
    :sswitch_4
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v11, :cond_0

    .line 175
    const-string v11, "IdleScreenEngineWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Visibility change in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_2

    :goto_1
    invoke-virtual {v11, v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doVisibilityChanged(Z)V

    .line 178
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_2
    move v9, v10

    .line 177
    goto :goto_1

    .line 181
    :sswitch_5
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v9, :cond_0

    .line 184
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;

    .line 185
    .local v2, cmd:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v9, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V

    .line 186
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v11, 0x2729

    invoke-virtual {v9, v11}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 187
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->commandWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 192
    .end local v2           #cmd:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    :sswitch_6
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v11, :cond_0

    .line 195
    const-string v11, "IdleScreenEngineWrapper"

    const-string v12, "MSG_WINDOW_RESIZED"

    invoke-static {v11, v12}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_3

    move v7, v9

    .line 205
    .local v7, reportDraw:Z
    :goto_2
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v11, v9, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZ)V

    .line 207
    if-eqz v7, :cond_0

    .line 208
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->finishDrawing()V

    goto/16 :goto_0

    .end local v7           #reportDraw:Z
    :cond_3
    move v7, v10

    .line 196
    goto :goto_2

    .line 212
    :sswitch_7
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v9, :cond_0

    .line 215
    const/4 v8, 0x0

    .line 216
    .local v8, skip:Z
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    .line 217
    .local v5, ev:Landroid/view/MotionEvent;
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 218
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v10, v9, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 219
    :try_start_1
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v9, v9, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v9, v5, :cond_6

    .line 220
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    .line 225
    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_4
    if-nez v8, :cond_5

    .line 229
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v9, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 231
    :cond_5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 223
    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    .line 225
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 234
    .end local v5           #ev:Landroid/view/MotionEvent;
    .end local v8           #skip:Z
    :sswitch_8
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    if-eqz v9, :cond_0

    .line 237
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 238
    .local v1, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, action:Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 240
    .local v6, extra:Landroid/os/Bundle;
    const-string v9, "IdleScreenEngineWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_LOCKSCREEN_COMMAND~ action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_3
    iget-object v9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    invoke-interface {v9, v0, v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 244
    :catch_1
    move-exception v3

    .line 246
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v9, "IdleScreenEngineWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_LOCKSCREEN_COMMAND~ RemoteException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x2710 -> :sswitch_3
        0x271a -> :sswitch_4
        0x2729 -> :sswitch_5
        0x272e -> :sswitch_6
        0x2738 -> :sswitch_7
        0x2742 -> :sswitch_8
    .end sparse-switch
.end method

.method public sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 4
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;-><init>()V

    .line 113
    .local v0, command:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    iput-object p1, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    .line 114
    iput p2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    .line 115
    iput p3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    .line 116
    iput p4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    .line 117
    iput-object p5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    .line 118
    iput-boolean p6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    .line 119
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2729

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 122
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->commandWakeLock(Landroid/content/Context;Z)V

    .line 123
    return-void
.end method

.method public setDesiredSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 104
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 107
    return-void

    .line 104
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
