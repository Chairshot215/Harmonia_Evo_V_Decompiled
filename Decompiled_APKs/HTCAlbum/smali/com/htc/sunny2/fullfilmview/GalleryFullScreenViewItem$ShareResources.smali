.class Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
.super Ljava/lang/Object;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareResources"
.end annotation


# instance fields
.field drmTextBGHeight:I

.field drmTextBGWidth:I

.field drmTextHeight:I

.field drmTextWidth:I

.field textureCorrupt:Lcom/htc/sunny2/Texture;

.field textureDrm:Lcom/htc/sunny2/Texture;

.field textureDrmCorrupt:Lcom/htc/sunny2/Texture;

.field textureDrmText:Lcom/htc/sunny2/Texture;

.field textureDrmTextBG:Lcom/htc/sunny2/Texture;

.field textureLoading:Lcom/htc/sunny2/Texture;

.field texturePlayable:Lcom/htc/sunny2/Texture;

.field texturePlayableSmall:Lcom/htc/sunny2/Texture;

.field textureVideoCorrupt:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    .line 82
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    .line 83
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    .line 84
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    .line 85
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    .line 86
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    .line 87
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    .line 89
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    .line 90
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    .line 91
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    .line 92
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    .line 93
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextWidth:I

    .line 94
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextHeight:I

    return-void
.end method
