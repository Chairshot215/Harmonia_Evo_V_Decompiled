.class Lcom/htc/album/helper/OnlineDeleteManager$1;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$1;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$1;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 72
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$1;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 73
    return-void
.end method
