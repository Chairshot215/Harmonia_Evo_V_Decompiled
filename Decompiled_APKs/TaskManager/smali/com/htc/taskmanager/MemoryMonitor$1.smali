.class Lcom/htc/taskmanager/MemoryMonitor$1;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/MemoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/MemoryMonitor;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/MemoryMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/taskmanager/MemoryMonitor$1;->this$0:Lcom/htc/taskmanager/MemoryMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor$1;->this$0:Lcom/htc/taskmanager/MemoryMonitor;

    #getter for: Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/taskmanager/MemoryMonitor;->access$100(Lcom/htc/taskmanager/MemoryMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/htc/taskmanager/MemoryMonitor;->access$000()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor$1;->this$0:Lcom/htc/taskmanager/MemoryMonitor;

    invoke-virtual {v0}, Lcom/htc/taskmanager/MemoryMonitor;->checkMemory()V

    .line 38
    return-void
.end method
