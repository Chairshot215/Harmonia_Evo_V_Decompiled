.class Lcom/htc/album/helper/ThreeDFlattenManager$9;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

.field final synthetic val$pickerResult:Landroid/content/Intent;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iput-object p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->val$shareIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->val$pickerResult:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2110
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->val$shareIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$9;->val$pickerResult:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2111
    return-void
.end method
