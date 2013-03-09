.class final Lcom/coremobility/app/vnotes/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/dr;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/dr;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    return-void
.end method
