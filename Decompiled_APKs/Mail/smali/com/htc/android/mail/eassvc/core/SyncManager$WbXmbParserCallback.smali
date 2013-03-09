.class Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WbXmbParserCallback"
.end annotation


# instance fields
.field accountId:J

.field attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

.field progress:I

.field requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field totalSize:J

.field updateFreq:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;Lcom/htc/android/mail/eassvc/core/EASRequestController;JLcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;J)V
    .locals 4
    .parameter
    .parameter "requestController"
    .parameter "accountId"
    .parameter "attachItem"
    .parameter "totalSize"

    .prologue
    .line 9323
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9316
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->progress:I

    .line 9318
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->updateFreq:I

    .line 9324
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 9325
    iput-wide p3, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->accountId:J

    .line 9326
    iput-object p5, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    .line 9327
    const-wide/16 v0, 0x4

    mul-long/2addr v0, p6

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->totalSize:J

    .line 9328
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->totalSize:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 9330
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->updateFreq:I

    .line 9335
    :cond_0
    :goto_0
    return-void

    .line 9331
    :cond_1
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->totalSize:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 9333
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->updateFreq:I

    goto :goto_0
.end method


# virtual methods
.method public dataSaveToFileProgress(J)V
    .locals 7
    .parameter "processSize"

    .prologue
    .line 9337
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p1

    iget-wide v5, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->totalSize:J

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 9338
    .local v2, newProgress:I
    iget v3, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->progress:I

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->updateFreq:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    .line 9339
    iput v2, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->progress:I

    .line 9340
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 9341
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x1fe

    iput v3, v1, Landroid/os/Message;->what:I

    .line 9342
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 9343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9344
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "accountId"

    iget-wide v4, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->accountId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9345
    const-string v3, "filereference"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9346
    const-string v3, "percentage"

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->progress:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9347
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9348
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$WbXmbParserCallback;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 9350
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
