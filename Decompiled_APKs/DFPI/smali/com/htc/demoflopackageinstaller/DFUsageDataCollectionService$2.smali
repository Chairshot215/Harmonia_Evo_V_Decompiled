.class Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$2;
.super Ljava/lang/Object;
.source "DFUsageDataCollectionService.java"

# interfaces
.implements Lcom/htc/demoflopackageinstaller/net/IUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->initFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;


# direct methods
.method constructor <init>(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$2;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allDone()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v1, "IUploadCallback.allDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$2;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFlag:Z
    invoke-static {v0, v1}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$402(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;Z)Z

    .line 444
    return-void
.end method

.method public oneFileDone(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 432
    const-string v1, "DFPI.DFUsageDataCollectionService"

    const-string v2, "IUploadCallback.oneFileDone()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v1, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 437
    :cond_0
    return-void
.end method
