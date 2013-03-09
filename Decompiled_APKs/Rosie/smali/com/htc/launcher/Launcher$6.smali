.class Lcom/htc/launcher/Launcher$6;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/htc/launcher/Launcher$6;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/launcher/Launcher$6;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter;->updateSummary()V

    .line 1592
    iget-object v0, p0, Lcom/htc/launcher/Launcher$6;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/htc/launcher/Launcher$6;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$6;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1595
    :cond_0
    return-void
.end method
