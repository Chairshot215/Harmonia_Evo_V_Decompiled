.class Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$IncomingHandler;
.super Landroid/os/Handler;
.source "MediaCacheTestAcitcity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;


# direct methods
.method constructor <init>(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$IncomingHandler;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 53
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][handleMessage]+"

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

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MediaCacheProvider][MediaCacheTestAcitcity][handleMessage][ServiceIntent.MSG_SET_VALUE]"

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
