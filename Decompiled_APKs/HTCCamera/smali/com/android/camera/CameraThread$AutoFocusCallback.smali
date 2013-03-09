.class final Lcom/android/camera/CameraThread$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$AutoFocusCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$AutoFocusCallback;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    sget-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    const-string v0, "CameraThread"

    const-string v1, "got AutoFocusCallback..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraThread"

    const-string v1, "got AutoFocusCallback, mTakeFocus = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    iget-object v0, p0, Lcom/android/camera/CameraThread$AutoFocusCallback;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Z)V

    const-string v0, "CameraThread"

    const-string v1, "AutoFocusCallback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
