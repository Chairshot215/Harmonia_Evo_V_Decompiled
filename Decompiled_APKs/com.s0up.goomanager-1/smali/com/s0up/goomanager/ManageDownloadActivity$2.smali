.class Lcom/s0up/goomanager/ManageDownloadActivity$2;
.super Ljava/lang/Object;
.source "ManageDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/ManageDownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/ManageDownloadActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/ManageDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 30
    packed-switch p2, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v2, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    #getter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    invoke-static {v2}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$1(Lcom/s0up/goomanager/ManageDownloadActivity;)Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    #getter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    invoke-static {v2}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$1(Lcom/s0up/goomanager/ManageDownloadActivity;)Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->getCurrentDownloads()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/s0up/goomanager/download/Download;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    :goto_1
    iget-object v2, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    iget-object v3, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    #getter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$2(Lcom/s0up/goomanager/ManageDownloadActivity;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/ManageDownloadActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 46
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/s0up/goomanager/download/Download;>;"
    :cond_1
    :pswitch_1
    iget-object v2, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/ManageDownloadActivity;->finish()V

    goto :goto_0

    .line 35
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/s0up/goomanager/download/Download;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/download/Download;

    .line 36
    .local v0, d:Lcom/s0up/goomanager/download/Download;
    iget-object v2, v0, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/s0up/goomanager/ManageDownloadActivity$2;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    #getter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    invoke-static {v2}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$1(Lcom/s0up/goomanager/ManageDownloadActivity;)Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s0up/goomanager/download/Download;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;->cancelDownload(I)Z

    goto :goto_1

    .line 30
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
