.class final Lcom/coremobility/app/vnotes/gl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v0, 0x79

    const/16 v1, 0x78

    const/16 v5, 0x76

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c()V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->j(I)V

    goto :goto_0

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :pswitch_6
    sparse-switch v3, :sswitch_data_1

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_9
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->getScrollX()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x155 -> :sswitch_4
        0x191 -> :sswitch_3
        0x198 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1fa -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x191 -> :sswitch_5
        0x193 -> :sswitch_7
        0x198 -> :sswitch_8
        0x1a4 -> :sswitch_9
        0x1f4 -> :sswitch_8
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method
