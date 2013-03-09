.class public Lcom/android/camera/mirror/MirrorThread;
.super Ljava/lang/Thread;
.source "MirrorThread.java"


# static fields
.field public static final MSG_CLOSE_CAMERA:I = 0x78

.field public static final MSG_OPEN_CAMERA:I = 0x64

.field public static final MSG_START_PREVIEW:I = 0x6e

.field public static final MSG_STOP:I = 0xc8

.field public static final MSG_STOP_PREVIEW:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "MirrorThread"

.field private static m_CameraSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private m_Camera:Landroid/hardware/Camera;

.field private m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private volatile m_Closing:Z

.field private m_IsPreviewStarted:Z

.field private m_MessageHandler:Landroid/os/Handler;

.field private m_MessageHandlerSyncRoot:Ljava/lang/Object;

.field private m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/android/camera/mirror/MirrorThread;->m_CameraSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandlerSyncRoot:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v0, "MirrorThread"

    const-string v1, "parameter \'activity\' is NULL in ctor"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    new-instance v0, Lcom/android/camera/mirror/MirrorThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/mirror/MirrorThread$1;-><init>(Lcom/android/camera/mirror/MirrorThread;)V

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/mirror/MirrorThread;)Lcom/android/camera/mirror/MirrorActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/mirror/MirrorThread;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/mirror/MirrorThread;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private closeCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorThread;->stopPreview()V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "MirrorThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unknown message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "MirrorThread"

    const-string v1, "Mirror openCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorThread;->openCamera()V

    goto :goto_0

    :sswitch_1
    const-string v0, "MirrorThread"

    const-string v1, "Mirror startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/android/camera/mirror/MirrorThread;->startPreview(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "MirrorThread"

    const-string v1, "Mirror stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorThread;->stopPreview()V

    goto :goto_0

    :sswitch_3
    const-string v0, "MirrorThread"

    const-string v1, "Mirror closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorThread;->closeCamera()V

    goto :goto_0

    :sswitch_4
    const-string v0, "MirrorThread"

    const-string v1, "Got MSG_STOP, stopping mirror thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandlerSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0x6f -> :sswitch_2
        0x78 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method private openCamera()V
    .locals 9

    const/16 v8, 0x64

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "MirrorThread"

    const-string v5, "Mirror Camera.open"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/android/camera/mirror/MirrorThread;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    const-string v4, "MirrorThread"

    const-string v5, "Mirror after setErrorCallback"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v4}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "MirrorThread"

    const-string v5, "Cannot open front camera"

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xda

    if-ne v4, v5, :cond_0

    const v3, 0x7f0a004b

    const/16 v0, 0x7d0

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v4}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xc9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-static {v4, v8, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "MirrorThread"

    const-string v5, "Mirror thread was interrupted when show toast due to sensor resource is locked"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPreview(Landroid/view/SurfaceHolder;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    :goto_1
    const-string v4, "MirrorThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previewWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , previewHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    const-string v4, "MirrorThread"

    const-string v5, "setPreviewDisplay"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    if-nez p1, :cond_1

    const-string v4, "MirrorThread"

    const-string v5, "null == surfaceHolder"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "MirrorThread"

    const-string v5, "Mirror startPreview"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    const-string v4, "auto"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_IsPreviewStarted:Z

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v4}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "MirrorThread"

    const-string v5, "Cannot start preview"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v4}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x67

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sget v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private stopPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_IsPreviewStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_IsPreviewStarted:Z

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_Closing:Z

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandlerSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v1, "MirrorThread"

    const-string v2, "Mirror thread start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/android/camera/mirror/MirrorThread;->m_CameraSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandlerSyncRoot:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v1, p0, Lcom/android/camera/mirror/MirrorThread;->m_Closing:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Lcom/android/camera/mirror/MirrorThread$2;

    invoke-direct {v1, p0}, Lcom/android/camera/mirror/MirrorThread$2;-><init>(Lcom/android/camera/mirror/MirrorThread;)V

    iput-object v1, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorThread;->m_MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorThread;->closeCamera()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Lcom/android/camera/mirror/MirrorThread;->m_CameraSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v1, "MirrorThread"

    const-string v2, "Mirror thread stop"

    :goto_0
    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MirrorThread"

    const-string v2, "Mirror thread was interrupted before entering"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v1, Lcom/android/camera/mirror/MirrorThread;->m_CameraSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v1, "MirrorThread"

    const-string v2, "Mirror thread stop"

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    sget-object v2, Lcom/android/camera/mirror/MirrorThread;->m_CameraSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v2, "MirrorThread"

    const-string v3, "Mirror thread stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
