.class Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;
.super Ljava/lang/Object;
.source "LiveFilmstripViewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripLiveImageDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "position"
    .parameter "uri"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 112
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResize4Filmstrip(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    sget v2, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->REFLECTION_BKG_COLOR:I

    invoke-static {v1, v0, v2}, Lcom/htc/opensense/album/util/ImageUtils;->addIImageReflection(Lcom/htc/opensense/album/util/ImageManager$IImage;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method
