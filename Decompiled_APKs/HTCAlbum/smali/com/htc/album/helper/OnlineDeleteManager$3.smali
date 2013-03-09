.class Lcom/htc/album/helper/OnlineDeleteManager$3;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V
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
    .line 96
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$3;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$3;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/OnlineDeleteManager;->access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z

    .line 99
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$3;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$3;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 102
    :cond_0
    return-void
.end method
