.class Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridLiveImageDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$500(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$600(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getScrollState()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-static {p1, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method
