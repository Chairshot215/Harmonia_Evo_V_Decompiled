.class public Lcom/broadcom/bt/app/system/MapService;
.super Landroid/app/Service;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/MapService$MapServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static REF_COUNT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MAP.MAPAppService"


# instance fields
.field private mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    sget v0, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    .line 49
    const-string v0, "MAP.MAPAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
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
    .line 97
    sget v0, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    .line 98
    const-string v0, "MAP.MAPAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/app/system/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    .line 105
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    return-void

    .line 105
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
    .line 56
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    const-string v1, "MAP.MAPAppService"

    const-string v2, "Starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    new-instance v1, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "MAP.MAPAppService"

    const-string v2, "Error while enabling printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    const-string v1, "MAP.MAPAppService"

    const-string v2, "Destroying service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService;->mBinder:Lcom/broadcom/bt/app/system/MapService$MapServiceStub;

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "MAP.MAPAppService"

    const-string v2, "Error while destroying printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 63
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Unbinding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
