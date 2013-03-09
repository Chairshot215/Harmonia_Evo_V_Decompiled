.class Lcom/htc/album/helper/MenuManager$3;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$mergedComparableList:Ljava/util/ArrayList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$3;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$3;->val$mergedComparableList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/htc/album/helper/MenuManager$3;->val$position:I

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$3;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 7
    .parameter "dialog"
    .parameter "adapter"
    .parameter "menuPosition"

    .prologue
    .line 966
    const/4 v1, 0x0

    .line 969
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$3;->val$mergedComparableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 970
    .local v2, rinfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 971
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 974
    .local v3, sharedPkgName:Ljava/lang/String;
    const-string v4, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$3;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v4}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 984
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[showShareMediaMenu][onClick!]"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$3;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    invoke-static {v4}, Lcom/htc/album/helper/MenuManager;->access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    move-result-object v4

    const/4 v5, 0x2

    iget v6, p0, Lcom/htc/album/helper/MenuManager$3;->val$position:I

    invoke-interface {v4, v5, v6, v1}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 991
    .end local v2           #rinfo:Landroid/content/pm/ResolveInfo;
    .end local v3           #sharedPkgName:Ljava/lang/String;
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 978
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showShareMediaMenu][onClick!] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #rinfo:Landroid/content/pm/ResolveInfo;
    .restart local v3       #sharedPkgName:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$3;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$3;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$3;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method
