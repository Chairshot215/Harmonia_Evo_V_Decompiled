.class Lcom/htc/album/helper/MenuManager$17;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
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

.field final synthetic val$rotateStateListener:Lcom/htc/album/helper/MenuManager$RotateStateListener;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4563
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$17;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$17;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$17;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput p4, p0, Lcom/htc/album/helper/MenuManager$17;->val$rotation:I

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$17;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$17;->val$rotateStateListener:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/Object;)V
    .locals 17
    .parameter "nIndex"
    .parameter "object"

    .prologue
    .line 4567
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v1, :cond_1

    move-object/from16 v8, p2

    .line 4569
    check-cast v8, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    .line 4570
    .local v8, rotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/MenuManager$17;->this$0:Lcom/htc/album/helper/MenuManager;

    new-instance v1, Lcom/htc/album/helper/MenuManager$RotateThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/MenuManager$17;->this$0:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager$17;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/MenuManager$17;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/album/helper/MenuManager$17;->val$rotation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager$17;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/helper/MenuManager$17;->val$rotateStateListener:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    :goto_0
    move/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    #setter for: Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;
    invoke-static {v9, v1}, Lcom/htc/album/helper/MenuManager;->access$1102(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;

    .line 4586
    .end local v8           #rotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;
    :goto_1
    return-void

    .line 4570
    .restart local v8       #rotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/helper/MenuManager$17;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    goto :goto_0

    .line 4579
    .end local v8           #rotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/MenuManager$17;->this$0:Lcom/htc/album/helper/MenuManager;

    new-instance v9, Lcom/htc/album/helper/MenuManager$RotateThread;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/album/helper/MenuManager$17;->this$0:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/helper/MenuManager$17;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/helper/MenuManager$17;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/helper/MenuManager$17;->val$rotation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/MenuManager$17;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/MenuManager$17;->val$rotateStateListener:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    :goto_2
    const/16 v16, 0x0

    move/from16 v12, p1

    invoke-direct/range {v9 .. v16}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    #setter for: Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;
    invoke-static {v1, v9}, Lcom/htc/album/helper/MenuManager;->access$1102(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/MenuManager$17;->val$custListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    goto :goto_2
.end method
