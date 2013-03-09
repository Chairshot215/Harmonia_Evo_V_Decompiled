.class Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;
.super Ljava/lang/Object;
.source "DFUsageDataCollectionService.java"

# interfaces
.implements Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;


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
    .line 451
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allDownloadDone()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v1, "IDownloadCallback.allDownloadDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public downloadDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"
    .parameter "apkid"
    .parameter "name"

    .prologue
    .line 455
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v1, "IDownloadCallback.downloadDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apk id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apk name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "Demo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Demo"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const-string v0, "DemoRecovery"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DemoRecovery"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
