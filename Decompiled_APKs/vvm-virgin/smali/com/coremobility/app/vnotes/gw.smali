.class final Lcom/coremobility/app/vnotes/gw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_SubscribeButton;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_SubscribeButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_SubscribeButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_SubscribeButton;

    move-result-object v1

    const v2, 0x7f0c0109

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gw;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_3

    const v0, 0x7f0c010f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0c0110

    goto :goto_1
.end method
