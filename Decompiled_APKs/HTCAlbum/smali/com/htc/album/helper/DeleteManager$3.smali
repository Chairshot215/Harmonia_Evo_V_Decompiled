.class Lcom/htc/album/helper/DeleteManager$3;
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


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$3;->this$0:Lcom/htc/album/helper/DeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$3;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v1, 0x120001

    const/4 v2, 0x0

    #calls: Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/DeleteManager;->access$100(Lcom/htc/album/helper/DeleteManager;ILandroid/os/Bundle;)V

    .line 101
    return-void
.end method
