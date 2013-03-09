.class public final Lcom/coremobility/integration/app/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/app/CM_App;


# direct methods
.method public constructor <init>(Lcom/coremobility/integration/app/CM_App;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/app/e;->a:Lcom/coremobility/integration/app/CM_App;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/coremobility/app/vnotes/cf;->a(IJJLjava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2328

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/cf;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
