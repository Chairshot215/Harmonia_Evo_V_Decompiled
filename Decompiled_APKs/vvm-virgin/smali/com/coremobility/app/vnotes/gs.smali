.class final Lcom/coremobility/app/vnotes/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gs;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gs;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gs;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gs;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/4 v2, 0x0

    const/16 v3, 0x8b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;)V

    return-void
.end method
