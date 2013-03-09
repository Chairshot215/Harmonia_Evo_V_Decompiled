.class Lcom/htc/album/helper/MenuManager$21;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showImageRotateMenu(Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5062
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$21;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$21;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/htc/album/helper/MenuManager$21;->val$position:I

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$21;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$21;->val$listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 9
    .parameter "dialog"
    .parameter "adapter"
    .parameter "index"

    .prologue
    .line 5065
    if-nez p3, :cond_1

    const/16 v5, 0x5a

    .line 5067
    .local v5, rotation:I
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$21;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$RotateThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5068
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$21;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$RotateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 5070
    :cond_0
    iget-object v8, p0, Lcom/htc/album/helper/MenuManager$21;->this$0:Lcom/htc/album/helper/MenuManager;

    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$21;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$21;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$21;->val$position:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$21;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$21;->val$listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    #setter for: Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;
    invoke-static {v8, v0}, Lcom/htc/album/helper/MenuManager;->access$1102(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;

    .line 5071
    return-void

    .line 5065
    .end local v5           #rotation:I
    :cond_1
    const/16 v5, -0x5a

    goto :goto_0
.end method
