.class Lcom/android/camera/mirror/MirrorThread$2;
.super Landroid/os/Handler;
.source "MirrorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/mirror/MirrorThread;->run()V
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

    iput-object p1, p0, Lcom/android/camera/mirror/MirrorThread$2;->this$0:Lcom/android/camera/mirror/MirrorThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorThread$2;->this$0:Lcom/android/camera/mirror/MirrorThread;

    #calls: Lcom/android/camera/mirror/MirrorThread;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/camera/mirror/MirrorThread;->access$100(Lcom/android/camera/mirror/MirrorThread;Landroid/os/Message;)V

    return-void
.end method
