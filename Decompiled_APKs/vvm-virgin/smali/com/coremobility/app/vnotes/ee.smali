.class final Lcom/coremobility/app/vnotes/ee;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0xf

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    iget v4, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :goto_2
    invoke-static {v3, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/be;->b(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/coremobility/integration/i/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/be;->b(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "EVT_UPGRADE_CANCEL"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    goto :goto_0

    :pswitch_6
    const-string v0, "EVT_VTT_LOAD_ANIMATION_CANCEL"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ee;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x1e

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
