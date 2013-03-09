.class Lcom/s0up/goomanager/ManageDownloadActivity$1;
.super Ljava/lang/Object;
.source "ManageDownloadActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/ManageDownloadActivity;
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
    iput-object p1, p0, Lcom/s0up/goomanager/ManageDownloadActivity$1;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity$1;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    check-cast p2, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    .end local p2
    #setter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    invoke-static {v0, p2}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$0(Lcom/s0up/goomanager/ManageDownloadActivity;Lcom/s0up/goomanager/download/DownloadService$LocalBinder;)V

    .line 71
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity$1;->this$0:Lcom/s0up/goomanager/ManageDownloadActivity;

    const/4 v1, 0x0

    #setter for: Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    invoke-static {v0, v1}, Lcom/s0up/goomanager/ManageDownloadActivity;->access$0(Lcom/s0up/goomanager/ManageDownloadActivity;Lcom/s0up/goomanager/download/DownloadService$LocalBinder;)V

    .line 66
    return-void
.end method
