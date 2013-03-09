.class final Lcom/coremobility/app/vnotes/ia;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ia;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ia;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(Lcom/coremobility/app/vnotes/CM_VnoteSaved;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ia;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b(Lcom/coremobility/app/vnotes/CM_VnoteSaved;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ia;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
