.class final Lcom/coremobility/app/vnotes/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/av;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/av;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/av;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->b(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/av;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V

    return-void
.end method
