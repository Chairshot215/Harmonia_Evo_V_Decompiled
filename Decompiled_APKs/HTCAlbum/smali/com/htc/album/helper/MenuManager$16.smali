.class Lcom/htc/album/helper/MenuManager$16;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

.field final synthetic val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4471
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput p3, p0, Lcom/htc/album/helper/MenuManager$16;->val$position:I

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$16;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$16;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$16;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$16;->val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 11
    .parameter "dialog"
    .parameter "adapter"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 4474
    const/4 v4, -0x1

    .line 4475
    .local v4, handleMethod:I
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 4477
    .local v8, obj:Ljava/lang/Object;
    instance-of v0, v8, Lcom/htc/album/helper/ComparableFakeRI;

    if-eqz v0, :cond_0

    .line 4479
    check-cast v8, Lcom/htc/album/helper/ComparableFakeRI;

    .end local v8           #obj:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/htc/album/helper/ComparableFakeRI;->getMenuID()I

    move-result v4

    .line 4486
    packed-switch v4, :pswitch_data_0

    .line 4532
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4489
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4491
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][Crop][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4492
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/album/helper/MenuManager$16;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto :goto_0

    .line 4496
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7f00

    invoke-static {v0, v1, v2, v3, v5}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4500
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4502
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][Enhance][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/album/helper/MenuManager$16;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto :goto_0

    .line 4507
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0

    .line 4512
    :pswitch_3
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$16;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$16;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$16;->val$position:I

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$16;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    new-instance v6, Lcom/htc/album/helper/MenuManager$RotateStateListener;

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v9, p0, Lcom/htc/album/helper/MenuManager$16;->val$activity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/album/helper/MenuManager$16;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {v6, v7, v9, v10}, Lcom/htc/album/helper/MenuManager$RotateStateListener;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$16;->val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager;->onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    goto/16 :goto_0

    .line 4522
    :pswitch_4
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4524
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][save as 2d][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$16;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/htc/album/helper/MenuManager$16;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 4486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
