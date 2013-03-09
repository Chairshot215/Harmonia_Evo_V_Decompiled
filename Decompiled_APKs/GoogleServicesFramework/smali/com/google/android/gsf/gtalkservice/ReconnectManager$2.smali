.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;->handleAlarmCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V
    .locals 5
    .parameter "connection"
    .parameter "metaData"

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v0

    .line 182
    .local v0, isSessionOpen:Z
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 186
    .local v1, state:Lcom/google/android/gtalkservice/ConnectionState;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isPendingReconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connect()Z

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel reconnect alarm for connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSessionOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", conn_state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->cancelReconnectAlarm()V

    goto :goto_0
.end method
