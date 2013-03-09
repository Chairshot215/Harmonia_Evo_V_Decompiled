.class Lcom/redbend/vdm/PLLoggerProxy;
.super Ljava/lang/Object;
.source "PLLoggerProxy.java"


# static fields
.field private static _instance:Lcom/redbend/vdm/PLLoggerProxy;

.field private static _logger:Lcom/redbend/vdm/PLLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-static {}, Lcom/redbend/vdm/PLLoggerProxy;->initIDs()V

    .line 62
    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;

    .line 63
    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_logger:Lcom/redbend/vdm/PLLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0}, Lcom/redbend/vdm/PLLoggerProxy;->initInstance()V

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/redbend/vdm/PLLoggerProxy;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/redbend/vdm/PLLoggerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/redbend/vdm/PLLoggerProxy;

    invoke-direct {v0}, Lcom/redbend/vdm/PLLoggerProxy;-><init>()V

    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;

    .line 35
    :cond_0
    sget-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method

.method protected static logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V
    .locals 1
    .parameter "l"
    .parameter "message"

    .prologue
    .line 54
    invoke-static {}, Lcom/redbend/vdm/PLLoggerProxy;->getInstance()Lcom/redbend/vdm/PLLoggerProxy;

    sget-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_logger:Lcom/redbend/vdm/PLLogger;

    invoke-interface {v0, p0, p1}, Lcom/redbend/vdm/PLLogger;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/redbend/vdm/PLLoggerProxy;->terminate()V

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_logger:Lcom/redbend/vdm/PLLogger;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_instance:Lcom/redbend/vdm/PLLoggerProxy;

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    return-void
.end method

.method public initInstance(Lcom/redbend/vdm/PLLogger;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 39
    sput-object p1, Lcom/redbend/vdm/PLLoggerProxy;->_logger:Lcom/redbend/vdm/PLLogger;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    .line 41
    return-void
.end method

.method protected logMsg(ILjava/lang/String;)V
    .locals 3
    .parameter "level"
    .parameter "message"

    .prologue
    .line 50
    sget-object v0, Lcom/redbend/vdm/PLLoggerProxy;->_logger:Lcom/redbend/vdm/PLLogger;

    invoke-static {}, Lcom/redbend/vdm/VdmLogLevel;->values()[Lcom/redbend/vdm/VdmLogLevel;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1, p2}, Lcom/redbend/vdm/PLLogger;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected native terminate()V
.end method
