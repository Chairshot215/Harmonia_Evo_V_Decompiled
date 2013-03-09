.class final Lcom/coremobility/app/vnotes/he;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/he;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/he;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/he;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d()V

    return-void
.end method
