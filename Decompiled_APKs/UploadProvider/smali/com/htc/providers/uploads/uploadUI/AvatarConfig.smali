.class public Lcom/htc/providers/uploads/uploadUI/AvatarConfig;
.super Ljava/lang/Object;
.source "AvatarConfig.java"


# static fields
.field public static final sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private static final sDefaultAlbum:Landroid/graphics/Bitmap;

.field private static final sDefaultImage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208023c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sDefaultAlbum:Landroid/graphics/Bitmap;

    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080252

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sDefaultImage:Landroid/graphics/Bitmap;

    .line 16
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 19
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v1, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v2, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 21
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    sget-object v1, Lcom/htc/providers/uploads/uploadUI/AvatarConfig;->sDefaultAlbum:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
