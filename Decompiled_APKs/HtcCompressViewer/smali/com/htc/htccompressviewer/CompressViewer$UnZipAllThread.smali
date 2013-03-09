.class Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;
.super Ljava/lang/Thread;
.source "CompressViewer.java"

# interfaces
.implements Lcom/htc/htccompressviewer/zip/HtcZipUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnZipAllThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1217
    iput-object p2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->mHandler:Landroid/os/Handler;

    .line 1218
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1222
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v2, 0x1

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z
    invoke-static {v1, v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$1102(Lcom/htc/htccompressviewer/CompressViewer;Z)Z

    .line 1223
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/htccompressviewer/zip/HtcZip;->setInterrupt(Z)V

    .line 1225
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, TargetPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Lcom/htc/htccompressviewer/zip/HtcZip;->asyncUncompressFile(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htccompressviewer/zip/HtcZipUpdater;)Z

    .line 1227
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z
    invoke-static {v1, v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$1102(Lcom/htc/htccompressviewer/CompressViewer;Z)Z

    .line 1228
    return-void
.end method

.method public update(IILjava/lang/String;)V
    .locals 3
    .parameter "currentFileCount"
    .parameter "status"
    .parameter "name"

    .prologue
    .line 1231
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1232
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1233
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "currentFileCount"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1234
    const-string v2, "fileName"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v2, "result"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1237
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1238
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    return-void
.end method
