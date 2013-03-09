.class Lcom/htc/laputa/engine/util/Service$DataConnection$1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/CmdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/Service$DataConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/Service$DataConnection;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/Service$DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$DataConnection$1;->this$0:Lcom/htc/laputa/engine/util/Service$DataConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyComplete(II)V
    .locals 3
    .parameter "errCode"
    .parameter "taskId"

    .prologue
    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;-><init>(Lcom/htc/laputa/engine/util/Service$DataConnection$1;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
