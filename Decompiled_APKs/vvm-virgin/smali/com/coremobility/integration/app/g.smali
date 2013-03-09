.class final Lcom/coremobility/integration/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/app/CM_Service;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/integration/app/CM_Service;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/integration/app/g;-><init>(Lcom/coremobility/integration/app/CM_Service;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/integration/app/CM_Service;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/app/g;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 4

    const/16 v3, 0x17

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->h()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->l()Z

    iget-object v1, p0, Lcom/coremobility/integration/app/g;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->c(Lcom/coremobility/integration/app/CM_Service;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Exiting service because of uncaught exception."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/coremobility/integration/app/g;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->b(Lcom/coremobility/integration/app/CM_Service;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Exception in shutdown. Exiting."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
