.class final Lcom/coremobility/integration/e/i;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/e/e;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/e/i;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.PHONE_CALL_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Data1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_Service;->e()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/coremobility/integration/e/i;->a:Lcom/coremobility/integration/e/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/e/e;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coremobility.app.vnotes.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Data1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Data2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_Service;->e()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/e/i;->a:Lcom/coremobility/integration/e/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/e/e;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
