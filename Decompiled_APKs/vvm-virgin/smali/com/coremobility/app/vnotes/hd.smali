.class final Lcom/coremobility/app/vnotes/hd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hd;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hd;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    return-void
.end method
