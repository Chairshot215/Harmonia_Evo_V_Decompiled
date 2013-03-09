.class Lcom/htc/album/helper/MenuManager$22;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$RotateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showImageRotateMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5081
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$22;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$22;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "position"
    .parameter "image"

    .prologue
    .line 5101
    const/4 v0, 0x1

    return v0
.end method

.method public onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 3
    .parameter "position"
    .parameter "image"

    .prologue
    .line 5085
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    if-eqz v1, :cond_0

    .line 5086
    move v0, p1

    .line 5087
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$22;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/album/helper/MenuManager$22$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/helper/MenuManager$22$1;-><init>(Lcom/htc/album/helper/MenuManager$22;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5097
    .end local v0           #pos:I
    :cond_0
    return-void
.end method
