.class Lcom/android/camera/SnapboothThread$4;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$4;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    const-string v0, "SnapboothThread"

    const-string v1, "got RawPictureCallback..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SnapboothThread"

    const-string v1, "RawPictureCallback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
