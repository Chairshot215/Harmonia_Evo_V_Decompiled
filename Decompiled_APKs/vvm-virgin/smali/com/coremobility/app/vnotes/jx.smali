.class final Lcom/coremobility/app/vnotes/jx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jx;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jx;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->showDialog(I)V

    return-void
.end method
