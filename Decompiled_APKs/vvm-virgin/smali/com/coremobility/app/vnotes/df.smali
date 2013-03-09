.class final Lcom/coremobility/app/vnotes/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/df;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/df;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/df;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    return-void
.end method
