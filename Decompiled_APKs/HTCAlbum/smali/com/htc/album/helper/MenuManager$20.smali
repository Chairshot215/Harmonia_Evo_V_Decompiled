.class Lcom/htc/album/helper/MenuManager$20;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showPhotoEditMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4954
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput p3, p0, Lcom/htc/album/helper/MenuManager$20;->val$position:I

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$20;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$20;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$20;->val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

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

    .line 4957
    const/4 v4, -0x1

    .line 4958
    .local v4, handleMethod:I
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 4960
    .local v8, obj:Ljava/lang/Object;
    instance-of v0, v8, Lcom/htc/album/helper/ComparableFakeRI;

    if-eqz v0, :cond_0

    .line 4962
    check-cast v8, Lcom/htc/album/helper/ComparableFakeRI;

    .end local v8           #obj:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/htc/album/helper/ComparableFakeRI;->getMenuID()I

    move-result v4

    .line 4968
    packed-switch v4, :pswitch_data_0

    .line 5047
    :cond_0
    :goto_0
    return-void

    .line 4971
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4973
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][Crop][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4974
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/album/helper/MenuManager$20;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto :goto_0

    .line 4982
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4984
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][Enhance][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/album/helper/MenuManager$20;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto :goto_0

    .line 4990
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0

    .line 4996
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$20;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$20;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$20;->val$position:I

    new-instance v6, Lcom/htc/album/helper/MenuManager$RotateStateListener;

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v9, p0, Lcom/htc/album/helper/MenuManager$20;->val$activity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/album/helper/MenuManager$20;->val$mainAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {v6, v7, v9, v10}, Lcom/htc/album/helper/MenuManager$RotateStateListener;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$20;->val$pluginWarningMessage:Lcom/htc/album/AlbumUtility/IPluginWarningMessage;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager;->onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    goto :goto_0

    .line 5027
    :pswitch_3
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5029
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showEditPhotoMenu][save as 2d][onClick!]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/htc/album/helper/MenuManager$20;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 5034
    :pswitch_4
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1300(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5041
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$20;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1300(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    move-result-object v0

    const/16 v1, 0x13ec

    invoke-interface {v0, v1}, Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;->onItemSelected(I)V

    goto/16 :goto_0

    .line 4968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
