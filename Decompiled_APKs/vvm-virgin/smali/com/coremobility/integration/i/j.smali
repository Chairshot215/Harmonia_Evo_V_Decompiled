.class final Lcom/coremobility/integration/i/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/i/f;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/i/j;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "com.sprint.action.TIMEOUT_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/i/j;->a:Lcom/coremobility/integration/i/f;

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/i/f;->n()Lcom/coremobility/integration/i/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/coremobility/integration/i/l;->g:Z

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/l;)Lcom/coremobility/integration/i/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/coremobility/integration/i/f;->a(J)J

    iget-object v2, p0, Lcom/coremobility/integration/i/j;->a:Lcom/coremobility/integration/i/f;

    invoke-static {v2}, Lcom/coremobility/integration/i/f;->b(Lcom/coremobility/integration/i/f;)Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->o()J

    invoke-static {}, Lcom/coremobility/integration/i/f;->n()Lcom/coremobility/integration/i/e;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v0, v3}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->p()Lcom/coremobility/integration/i/l;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->b(Lcom/coremobility/integration/i/l;)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->q()Lcom/coremobility/integration/i/e;

    iget-object v0, p0, Lcom/coremobility/integration/i/j;->a:Lcom/coremobility/integration/i/f;

    iget-object v2, p0, Lcom/coremobility/integration/i/j;->a:Lcom/coremobility/integration/i/f;

    iget-object v2, v2, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/g;)I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
