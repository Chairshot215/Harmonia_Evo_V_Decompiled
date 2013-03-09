.class public final Lcom/android/server/wm/FakeWindowImpl;
.super Ljava/lang/Object;
.source "FakeWindowImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$FakeWindow;


# instance fields
.field final mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTouchFullscreen:Z

.field final mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p4}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {v1, p3, v2}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    new-instance v1, Lcom/android/server/wm/InputApplicationHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/InputApplicationHandle;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iput-object p4, v1, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    sget-wide v2, Lcom/android/server/wm/WindowManagerService;->DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J

    iput-wide v2, v1, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v1, Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/InputWindowHandle;-><init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-object p4, v1, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/wm/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    invoke-direct {p0, p5}, Lcom/android/server/wm/FakeWindowImpl;->getLayerLw(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->layer:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p6, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p5, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    sget-wide v2, Lcom/android/server/wm/WindowManagerService;->DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J

    iput-wide v2, v1, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean p7, v1, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean p8, v1, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    iput-boolean p9, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    return-void
.end method

.method private getLayerLw(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputManager;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

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

.method layout(II)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v1, v0, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v1, v0, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p1, v0, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p2, v0, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0
.end method
