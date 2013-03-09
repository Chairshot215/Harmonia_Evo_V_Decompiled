.class final Lcom/coremobility/app/customui/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/customui/k;


# direct methods
.method constructor <init>(Lcom/coremobility/app/customui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-static {v0}, Lcom/coremobility/app/customui/k;->a(Lcom/coremobility/app/customui/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
