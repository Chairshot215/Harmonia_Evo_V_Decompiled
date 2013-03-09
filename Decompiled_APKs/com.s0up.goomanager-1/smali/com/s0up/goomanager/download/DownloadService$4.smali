.class Lcom/s0up/goomanager/download/DownloadService$4;
.super Landroid/os/AsyncTask;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/download/DownloadService;->sendDownloadErroredMessage(Lcom/s0up/goomanager/download/Download;I)V
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

.field private final synthetic val$arg2Error:I

.field private final synthetic val$download:Lcom/s0up/goomanager/download/Download;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService$4;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    iput-object p2, p0, Lcom/s0up/goomanager/download/DownloadService$4;->val$download:Lcom/s0up/goomanager/download/Download;

    iput p3, p0, Lcom/s0up/goomanager/download/DownloadService$4;->val$arg2Error:I

    .line 769
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

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/download/DownloadService$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$4;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    invoke-static {v0}, Lcom/s0up/goomanager/download/DownloadService;->access$12(Lcom/s0up/goomanager/download/DownloadService;)Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService$4;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    invoke-static {v0}, Lcom/s0up/goomanager/download/DownloadService;->access$12(Lcom/s0up/goomanager/download/DownloadService;)Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService$4;->val$download:Lcom/s0up/goomanager/download/Download;

    iget v2, p0, Lcom/s0up/goomanager/download/DownloadService$4;->val$arg2Error:I

    invoke-interface {v0, v1, v2}, Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;->onDownloadErrored(Lcom/s0up/goomanager/download/Download;I)V

    .line 775
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
