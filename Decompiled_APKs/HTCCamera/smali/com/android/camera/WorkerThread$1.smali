.class Lcom/android/camera/WorkerThread$1;
.super Landroid/os/Handler;
.source "WorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WorkerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/WorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/WorkerThread$1;->this$0:Lcom/android/camera/WorkerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/WorkerThread$1;->this$0:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
