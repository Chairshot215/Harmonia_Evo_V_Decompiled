.class public Lcom/htc/dlnamiddlelayer/ForegroundSetting;
.super Ljava/lang/Object;
.source "ForegroundSetting.java"


# instance fields
.field private mCount:I

.field private mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

.field private sClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 3
    .parameter "svc"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "ForegroundSetting"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->sClassName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    .line 15
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ForegroundSetting]ForegroundSetting()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    .line 18
    return-void
.end method


# virtual methods
.method public beginForegroundSetting()Z
    .locals 5

    .prologue
    .line 25
    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ForegroundSetting]beginForegroundSetting()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    if-nez v2, :cond_0

    .line 30
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 32
    .local v1, status:Landroid/app/Notification;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v3, 0xff

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->startForeground(ILandroid/app/Notification;)V

    .line 33
    iget v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1           #status:Landroid/app/Notification;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ForegroundSetting][beginForegroundSetting]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endForegroundSetting()Z
    .locals 5

    .prologue
    .line 48
    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ForegroundSetting]endForegroundSetting()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I

    if-lez v2, :cond_0

    .line 52
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 53
    .local v1, status:Landroid/app/Notification;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mDLNAService:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->stopForeground(Z)V

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #status:Landroid/app/Notification;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ForegroundSetting][endForegroundSetting]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
