.class Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 6431
    iput-object p1, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->this$1:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    iput-object p3, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6434
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6436
    iget-object v0, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/launcher/WidgetPackageManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->scanWidgetItems(Landroid/content/Context;Ljava/lang/String;)V

    .line 6439
    const-string v0, "HomeLoaders"

    const-string v1, "get HTC widget updated message so do change adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    iget-object v0, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->this$1:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6441
    iget-object v0, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->this$1:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter;->resetItems()V

    .line 6442
    iget-object v0, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;->this$1:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v1, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1$1;-><init>(Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;)V

    #calls: Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$4200(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)V

    .line 6449
    :cond_0
    return-void
.end method
