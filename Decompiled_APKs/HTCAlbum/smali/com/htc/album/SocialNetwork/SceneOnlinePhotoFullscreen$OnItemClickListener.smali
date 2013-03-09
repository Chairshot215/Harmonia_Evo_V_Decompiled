.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 11
    .parameter "parent"
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1036
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1037
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1039
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 1040
    .local v5, posX:I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 1042
    .local v6, posY:I
    check-cast p1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v7

    iget-object v3, v7, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1043
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_0

    .line 1045
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 1046
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 1049
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v7

    if-ne v9, v7, :cond_1

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z
    invoke-static {v7, v5, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z

    move-result v7

    if-ne v9, v7, :cond_1

    .line 1051
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v4, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v7, "com.htc.video"

    const-string v8, "com.htc.video.ViewVideo"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "Video/mp4"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v4           #mediaIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1058
    .restart local v4       #mediaIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1060
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SceneOnlinePhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not launch view player. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #mediaIntent:Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/16 v8, 0x139c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method
