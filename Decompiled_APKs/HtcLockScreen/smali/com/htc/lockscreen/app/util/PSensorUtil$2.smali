.class Lcom/htc/lockscreen/app/util/PSensorUtil$2;
.super Ljava/lang/Object;
.source "PSensorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/util/PSensorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/util/PSensorUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    const-string v0, "PSensorUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHAT_ON_TIMEOUT mFar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #getter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z
    invoke-static {v2}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$100(Lcom/htc/lockscreen/app/util/PSensorUtil;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #getter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$300(Lcom/htc/lockscreen/app/util/PSensorUtil;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 105
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #getter for: Lcom/htc/lockscreen/app/util/PSensorUtil;->mFar:Z
    invoke-static {v0}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$100(Lcom/htc/lockscreen/app/util/PSensorUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/PSensorUtil$2;->this$0:Lcom/htc/lockscreen/app/util/PSensorUtil;

    #calls: Lcom/htc/lockscreen/app/util/PSensorUtil;->unregisterListener()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/util/PSensorUtil;->access$400(Lcom/htc/lockscreen/app/util/PSensorUtil;)V

    .line 109
    return-void
.end method
