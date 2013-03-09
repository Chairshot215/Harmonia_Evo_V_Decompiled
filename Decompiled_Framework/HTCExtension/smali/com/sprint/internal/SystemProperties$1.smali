.class Lcom/sprint/internal/SystemProperties$1;
.super Lcom/sprint/internal/SystemProperties$CmdThread;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/SystemProperties;


# direct methods
.method constructor <init>(Lcom/sprint/internal/SystemProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$1;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;-><init>(Lcom/sprint/internal/SystemProperties;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$1;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$1;->this$0:Lcom/sprint/internal/SystemProperties;

    iget v3, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    #calls: Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/sprint/internal/SystemProperties;->access$100(Lcom/sprint/internal/SystemProperties;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprint/internal/SystemProperties$1;->setStrResult(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprint/internal/SystemProperties$1;->setBoolResult(Z)V

    invoke-static {}, Lcom/sprint/internal/SystemProperties;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString !"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$1;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/sprint/internal/SystemProperties$1;->setException(Lcom/sprint/internal/SystemPropertiesException;)V

    invoke-static {}, Lcom/sprint/internal/SystemProperties;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$1;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
