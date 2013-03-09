.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V
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
    .line 198
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V
    .locals 6
    .parameter "connection"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-eqz p2, :cond_2

    move v0, v1

    .line 202
    .local v0, retryNow:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryConn: now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryConn: close curr conn for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V

    .line 215
    :cond_0
    invoke-virtual {p1, v2, v2, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 219
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 220
    return-void

    .end local v0           #retryNow:Z
    :cond_2
    move v0, v2

    .line 200
    goto :goto_0
.end method
