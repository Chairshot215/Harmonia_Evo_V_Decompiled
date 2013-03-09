.class Lcom/htc/album/helper/ThreeDFlattenManager$6;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dataPath:Ljava/lang/String;

.field final synthetic val$degreesRotated:I

.field final synthetic val$featureID:I

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$isDrm:Z

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$targetIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iput p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$featureID:I

    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$targetIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$imageUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$isDrm:Z

    iput-object p8, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$dataPath:Ljava/lang/String;

    iput p9, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$degreesRotated:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1805
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1806
    .local v5, bundle:Landroid/os/Bundle;
    iget v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$featureID:I

    packed-switch v0, :pswitch_data_0

    .line 1839
    :goto_0
    :pswitch_0
    return-void

    .line 1809
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$targetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$imageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$targetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$imageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$isDrm:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/MenuManager;->doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1816
    :pswitch_3
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1818
    const-string v0, "output"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1819
    const-string v0, "toast_crop_result"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    const/16 v3, 0x7f00

    invoke-static {v0, v1, v2, v3, v5}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1824
    :pswitch_4
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1826
    const-string v0, "output"

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$dataPath:Ljava/lang/String;

    iget v4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$degreesRotated:I

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1831
    :pswitch_5
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$dataPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$6;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
