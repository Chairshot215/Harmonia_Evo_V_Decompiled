.class public Lcom/broadcom/bt/app/system/OppService;
.super Landroid/app/Service;
.source "OppService.java"


# static fields
.field public static D:Z = false

.field public static final TAG:Ljava/lang/String; = "OppAppService"

.field private static mRefs:I


# instance fields
.field private mBinder:Lcom/broadcom/bt/service/opp/OppService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/app/system/OppService;->D:Z

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    sget-boolean v0, Lcom/broadcom/bt/app/system/OppService;->D:Z

    if-eqz v0, :cond_0

    .line 35
    sget v0, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    .line 36
    const-string v0, "OppAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v0, Lcom/broadcom/bt/app/system/OppService;->D:Z

    if-eqz v0, :cond_0

    .line 70
    sget v0, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    .line 71
    const-string v0, "OppAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/app/system/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/OppService;->finish()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    .line 78
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 83
    sget-boolean v0, Lcom/broadcom/bt/app/system/OppService;->D:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "OppAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/app/system/OppService;->D:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "OppAppService"

    const-string v2, "Starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    new-instance v1, Lcom/broadcom/bt/service/opp/OppService;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/OppService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    .line 47
    iget-object v1, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/OppService;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "OppAppService"

    const-string v2, "Error while enabling printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 41
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/app/system/OppService;->D:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "OppAppService"

    const-string v2, "Destroying service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/OppService;->finish()V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/OppService;->mBinder:Lcom/broadcom/bt/service/opp/OppService;

    .line 62
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "OppAppService"

    const-string v2, "Error while destroying printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 54
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
