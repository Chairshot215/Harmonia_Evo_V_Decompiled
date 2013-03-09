.class final Lcom/coremobility/app/vnotes/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gi;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    :cond_0
    return-void
.end method
