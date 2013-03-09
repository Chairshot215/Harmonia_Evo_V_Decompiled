.class final Lcom/coremobility/integration/i/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/integration/i/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/integration/i/k;-><init>(Lcom/coremobility/integration/i/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/integration/i/f;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/i/k;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "com.sprint.action.UPGRADE_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    const-string v1, "Alarm checkForUpgrade"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->m()Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/coremobility/integration/i/k;->a:Lcom/coremobility/integration/i/f;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/e;ZZ)I

    :cond_0
    return-void
.end method
