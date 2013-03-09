.class Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MediaLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MediaLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageButton:Landroid/widget/ImageButton;

.field mImageCover:Landroid/widget/ImageView;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageCover:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/MediaLibraryAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;-><init>()V

    return-void
.end method
