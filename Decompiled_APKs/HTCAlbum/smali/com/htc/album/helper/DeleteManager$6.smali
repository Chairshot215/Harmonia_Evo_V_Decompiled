.class Lcom/htc/album/helper/DeleteManager$6;
.super Ljava/lang/Object;
.source "DeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;

.field final synthetic val$info:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$6;->this$0:Lcom/htc/album/helper/DeleteManager;

    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$6;->val$info:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$6;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v1, 0x120003

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$6;->val$info:Landroid/os/Bundle;

    #calls: Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;ILandroid/os/Bundle;)V

    .line 136
    return-void
.end method
