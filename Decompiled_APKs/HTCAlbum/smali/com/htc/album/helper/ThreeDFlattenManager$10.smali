.class Lcom/htc/album/helper/ThreeDFlattenManager$10;
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

.field final synthetic val$featureID:I

.field final synthetic val$finalFlattenedCount:I

.field final synthetic val$pickerResult:Landroid/content/Intent;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/content/Intent;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iput p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$featureID:I

    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$shareIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$pickerResult:Landroid/content/Intent;

    iput p5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$finalFlattenedCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2102
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iget v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$featureID:I

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$shareIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$pickerResult:Landroid/content/Intent;

    iget v4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$10;->val$finalFlattenedCount:I

    #calls: Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenMultiMedia(ILandroid/content/Intent;Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2800(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/content/Intent;Landroid/content/Intent;I)V

    .line 2103
    return-void
.end method
