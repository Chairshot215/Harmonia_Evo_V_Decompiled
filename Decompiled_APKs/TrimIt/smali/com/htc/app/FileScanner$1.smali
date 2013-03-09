.class Lcom/htc/app/FileScanner$1;
.super Landroid/os/Handler;
.source "FileScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FileScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/app/FileScanner$1;->this$0:Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/app/FileScanner$1;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->isScanStop:Z
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$600(Lcom/htc/app/FileScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/app/FileScanner$1;->this$0:Lcom/htc/app/FileScanner;

    #getter for: Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FileScanner;->access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 409
    :cond_0
    return-void
.end method
