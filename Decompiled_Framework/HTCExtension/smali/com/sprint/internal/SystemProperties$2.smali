.class Lcom/sprint/internal/SystemProperties$2;
.super Lcom/sprint/internal/SystemProperties$CmdThread;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;-><init>(Lcom/sprint/internal/SystemProperties;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    iget v3, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    iget-object v4, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/sprint/internal/SystemProperties;->setStringViaDMAgent(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprint/internal/SystemProperties$2;->setBoolResult(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sprint/internal/SystemProperties$2;->setException(Lcom/sprint/internal/SystemPropertiesException;)V

    invoke-static {}, Lcom/sprint/internal/SystemProperties;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "setStringViaDMAgent fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sprint/internal/SystemProperties;->access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties$2;->this$0:Lcom/sprint/internal/SystemProperties;

    #getter for: Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sprint/internal/SystemProperties;->access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
