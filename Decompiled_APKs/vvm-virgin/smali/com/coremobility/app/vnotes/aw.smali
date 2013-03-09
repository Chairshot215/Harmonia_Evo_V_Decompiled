.class final Lcom/coremobility/app/vnotes/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/aw;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/aw;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/aw;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;I)V

    return-void
.end method
