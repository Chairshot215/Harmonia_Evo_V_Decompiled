.class public Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;
.super Lcom/htc/MediaCacheService/interfaces/IMediaCacheService$Stub;
.source "MediaCacheServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/MediaCacheService/interfaces/IMediaCacheService$Stub;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->mContext:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getServiceState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MediaCacheProvider][MediaCacheServiceImpl][getServiceState]+"

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MediaCacheProvider][MediaCacheServiceImpl][onCreate]+"

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MediaCacheProvider][MediaCacheServiceImpl][onDestroy]+"

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
