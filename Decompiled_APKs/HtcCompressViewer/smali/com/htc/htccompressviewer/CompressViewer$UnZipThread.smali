.class Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;
.super Ljava/lang/Thread;
.source "CompressViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnZipThread"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mZipPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "h"
    .parameter "zipPath"

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1249
    iput-object p2, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->mHandler:Landroid/os/Handler;

    .line 1250
    iput-object p3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->mZipPath:Ljava/lang/String;

    .line 1251
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1255
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v4, 0x1

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z
    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$1102(Lcom/htc/htccompressviewer/CompressViewer;Z)Z

    .line 1256
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/htccompressviewer/zip/HtcZip;->setInterrupt(Z)V

    .line 1257
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1258
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1259
    .local v0, b:Landroid/os/Bundle;
    new-instance v2, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;-><init>(Lcom/htc/htccompressviewer/zip/HtcZip;)V

    .line 1261
    .local v2, uncompressResult:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->mZipPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->UncompressSingleFile(Ljava/lang/String;)Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;

    move-result-object v2

    .line 1262
    const-string v3, "result"

    iget v4, v2, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1263
    const-string v3, "fileName"

    iget-object v4, v2, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1265
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1266
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z
    invoke-static {v3, v5}, Lcom/htc/htccompressviewer/CompressViewer;->access$1102(Lcom/htc/htccompressviewer/CompressViewer;Z)Z

    .line 1267
    return-void
.end method
