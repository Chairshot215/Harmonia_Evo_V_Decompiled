.class Lcom/android/camera/mirror/MirrorThread$1;
.super Ljava/lang/Object;
.source "MirrorThread.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/mirror/MirrorThread;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/mirror/MirrorThread;


# direct methods
.method constructor <init>(Lcom/android/camera/mirror/MirrorThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/mirror/MirrorThread$1;->this$0:Lcom/android/camera/mirror/MirrorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread$1;->this$0:Lcom/android/camera/mirror/MirrorThread;

    #getter for: Lcom/android/camera/mirror/MirrorThread;->m_MirrorActivity:Lcom/android/camera/mirror/MirrorActivity;
    invoke-static {v0}, Lcom/android/camera/mirror/MirrorThread;->access$000(Lcom/android/camera/mirror/MirrorThread;)Lcom/android/camera/mirror/MirrorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorActivity;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method
