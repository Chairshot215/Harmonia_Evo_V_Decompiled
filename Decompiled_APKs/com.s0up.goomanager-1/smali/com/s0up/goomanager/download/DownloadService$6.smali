.class Lcom/s0up/goomanager/download/DownloadService$6;
.super Landroid/os/AsyncTask;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/download/DownloadService;->sendDownloadCancelledMessage(Lcom/s0up/goomanager/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/download/DownloadService;

.field private final synthetic val$download:Lcom/s0up/goomanager/download/Download;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService$6;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    iput-object p2, p0, Lcom/s0up/goomanager/download/DownloadService$6;->val$download:Lcom/s0up/goomanager/download/Download;

    .line 795
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/download/DownloadService$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$6;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    invoke-static {v0}, Lcom/s0up/goomanager/download/DownloadService;->access$12(Lcom/s0up/goomanager/download/DownloadService;)Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$6;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    invoke-static {v0}, Lcom/s0up/goomanager/download/DownloadService;->access$12(Lcom/s0up/goomanager/download/DownloadService;)Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService$6;->val$download:Lcom/s0up/goomanager/download/Download;

    invoke-interface {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;->onDownloadCancelled(Lcom/s0up/goomanager/download/Download;)V

    .line 801
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
