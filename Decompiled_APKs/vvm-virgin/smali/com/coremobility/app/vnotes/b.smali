.class final Lcom/coremobility/app/vnotes/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/b;->a:Lcom/coremobility/app/vnotes/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x75

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/b;->a:Lcom/coremobility/app/vnotes/a;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/a;->a(Lcom/coremobility/app/vnotes/a;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->t()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d()Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    if-nez v0, :cond_4

    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
