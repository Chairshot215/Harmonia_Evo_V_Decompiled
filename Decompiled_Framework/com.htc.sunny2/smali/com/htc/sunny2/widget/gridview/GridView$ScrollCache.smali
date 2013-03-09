.class Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollCache"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCacheSprite:Lcom/htc/sunny2/Sprite;

.field public mCacheTexture:Lcom/htc/sunny2/Texture;

.field public mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

.field public mIsVisible:Z

.field public mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mIsVisible:Z

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-void
.end method
