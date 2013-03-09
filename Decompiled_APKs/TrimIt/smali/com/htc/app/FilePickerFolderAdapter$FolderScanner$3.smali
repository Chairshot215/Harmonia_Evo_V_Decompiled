.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;
.super Landroid/os/Handler;
.source "FilePickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1067
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2300(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2300(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1073
    :cond_1
    return-void
.end method
