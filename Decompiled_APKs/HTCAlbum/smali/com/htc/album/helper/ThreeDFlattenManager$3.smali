.class Lcom/htc/album/helper/ThreeDFlattenManager$3;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$3;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$3;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$202(Lcom/htc/album/helper/ThreeDFlattenManager;Z)Z

    .line 188
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$3;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 190
    return-void
.end method
