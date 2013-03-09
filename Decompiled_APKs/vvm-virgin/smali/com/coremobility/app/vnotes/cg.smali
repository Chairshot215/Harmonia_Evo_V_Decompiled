.class final Lcom/coremobility/app/vnotes/cg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cg;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cg;->a:Lcom/coremobility/app/vnotes/cf;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/integration/i/l;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/l;I)V

    :cond_0
    return-void
.end method
