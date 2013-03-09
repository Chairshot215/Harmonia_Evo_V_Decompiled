.class Lcom/htc/album/helper/MenuManager$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$2;->this$0:Lcom/htc/album/helper/MenuManager;

    iput p2, p0, Lcom/htc/album/helper/MenuManager$2;->val$position:I

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$2;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 8
    .parameter "dialog"
    .parameter "adapter"
    .parameter "menuPosition"

    .prologue
    .line 778
    const/4 v1, 0x0

    .line 781
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 782
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 783
    .local v3, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v1, :cond_0

    .line 784
    new-instance v2, Landroid/content/Intent;

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    move-object v1, v2

    .line 794
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$2;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v4}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 796
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[showSetAsMenu][onClick!]"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$2;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v4}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/htc/album/helper/MenuManager$2;->val$position:I

    invoke-interface {v4, v5, v6, v1}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 804
    .end local v3           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :goto_1
    return-void

    .line 786
    .restart local v3       #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_0
    :try_start_1
    const-string v4, "SharedAdapter.KEY_CLASS_NAME"

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 788
    .end local v3           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :catch_0
    move-exception v0

    .line 790
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showSetAsMenu][onClick] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 801
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v3       #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$2;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$2;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$2;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    invoke-static {v4, v1, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_1
.end method
