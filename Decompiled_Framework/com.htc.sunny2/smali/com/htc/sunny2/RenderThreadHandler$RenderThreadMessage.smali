.class public Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
.super Ljava/lang/Object;
.source "RenderThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/RenderThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderThreadMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

.field private static mPoolSize:I

.field private static mPoolSync:Ljava/lang/Object;


# instance fields
.field private next:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

.field public obj:Ljava/lang/Object;

.field r:Ljava/lang/Runnable;

.field target:Lcom/htc/sunny2/RenderThreadHandler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearForRecycle()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    iput-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    iput-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    return-void
.end method

.method public static obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    .locals 3

    sget-object v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    iget-object v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    sput-object v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    sget v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    invoke-direct {v0}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    sget-object v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->clearForRecycle()V

    sget v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    sput-object p0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    sget v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
