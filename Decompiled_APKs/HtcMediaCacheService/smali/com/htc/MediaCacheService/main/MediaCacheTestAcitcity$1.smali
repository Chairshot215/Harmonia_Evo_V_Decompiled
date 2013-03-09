.class Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;
.super Ljava/lang/Object;
.source "MediaCacheTestAcitcity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;


# direct methods
.method constructor <init>(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheTestAcitcity][onServiceConnected]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$102(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    iget-object v1, v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 88
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    #getter for: Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$100(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    #getter for: Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$100(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 106
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onServiceDisconnected]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$102(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 109
    return-void
.end method
