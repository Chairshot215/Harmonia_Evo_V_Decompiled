.class public Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;
.super Landroid/app/Service;
.source "RefreshCameraStateProcessorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private onBootCompleted(I)V
    .locals 2
    .parameter "startId"

    .prologue
    .line 39
    const-string v0, "talk"

    const-string v1, "Refresh the supported camera state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/google/android/talk/FeatureManager;->clearDeviceFeatures(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;-><init>(Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;I)V

    invoke-static {p0, v0}, Lcom/google/android/talk/FeatureManager;->setAvailableFeaturesAllAccounts(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 24
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 25
    .local v1, original:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;->onBootCompleted(I)V

    .line 31
    :cond_0
    const/4 v2, 0x3

    return v2
.end method
