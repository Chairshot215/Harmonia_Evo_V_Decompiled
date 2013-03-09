.class public final Lcom/android/camera/component/NewMediaBroadcaster;
.super Lcom/android/camera/component/UIComponent;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "New Media Broadcaster"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/android/camera/MediaEvent;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v3, p0, Lcom/android/camera/component/NewMediaBroadcaster;->COUNT:I

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    new-array v0, v3, [Lcom/android/camera/MediaEvent;

    iput-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 3

    const-string v0, ""

    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v2, :cond_0

    const-string v0, "android.hardware.action.NEW_PICTURE"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_0
.end method

.method private checkAndBroadcastIntent()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/camera/MediaEvent;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/android/camera/PictureSavedEvent;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/android/camera/MediaEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    iget v1, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 8

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "cameraThreadHandler == null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/android/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v5, p0}, Lcom/android/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "Media.Saved"

    invoke-virtual {v6, v7, v5}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    new-instance v3, Lcom/android/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "Media.DeletionCompleted"

    invoke-virtual {v6, v7, v3}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    new-instance v2, Lcom/android/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "ActionScreen.Closed"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    new-instance v4, Lcom/android/camera/component/NewMediaBroadcaster$4;

    invoke-direct {v4, p0}, Lcom/android/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "CameraActivity.Pausing"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method
