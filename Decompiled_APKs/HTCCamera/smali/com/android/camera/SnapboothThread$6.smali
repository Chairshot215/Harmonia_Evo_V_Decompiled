.class Lcom/android/camera/SnapboothThread$6;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SnapboothThread;->startPreview(IZ)V
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

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsCapturing:Z
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$2100(Lcom/android/camera/SnapboothThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method
