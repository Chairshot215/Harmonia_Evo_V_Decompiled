.class final Lcom/coremobility/app/vnotes/hg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/app/vnotes/kl;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hg;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hg;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0, p2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hg;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hg;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    return-void
.end method
