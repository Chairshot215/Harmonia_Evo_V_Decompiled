.class public Lcom/htc/reportagent/ReportUPolicy;
.super Ljava/lang/Object;
.source "ReportUPolicy.java"


# static fields
.field private static volatile mPolicy:Lcom/htc/utils/ulog/UPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/reportagent/ReportUPolicy;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/utils/ulog/UPolicy;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/reportagent/ReportUPolicy;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->initUPolicy()V

    .line 20
    :cond_0
    sget-object v0, Lcom/htc/reportagent/ReportUPolicy;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    return-object v0
.end method

.method private static declared-synchronized initUPolicy()V
    .locals 3

    .prologue
    .line 10
    const-class v1, Lcom/htc/reportagent/ReportUPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/reportagent/ReportUPolicy;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v2, "com.htc.reportagent"

    invoke-direct {v0, v2}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/reportagent/ReportUPolicy;->mPolicy:Lcom/htc/utils/ulog/UPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit v1

    return-void

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
