.class final Lcom/coremobility/app/vnotes/hh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hh;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hh;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hh;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/hh;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->m(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;I)V

    return-void
.end method
