.class Lcom/htc/omadm/util/FileLooperThread$1;
.super Landroid/os/Handler;
.source "DMLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/util/FileLooperThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/util/FileLooperThread;


# direct methods
.method constructor <init>(Lcom/htc/omadm/util/FileLooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/omadm/util/FileLooperThread$1;->this$0:Lcom/htc/omadm/util/FileLooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/htc/omadm/util/FileLooperThread$1;->this$0:Lcom/htc/omadm/util/FileLooperThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/htc/omadm/util/FileLooperThread;->write2File(Ljava/lang/String;)V

    .line 281
    return-void
.end method
