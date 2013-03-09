.class public Lcom/google/android/finsky/layout/DocImageView;
.super Lcom/google/android/finsky/layout/FifeImageView;
.source "DocImageView.java"


# instance fields
.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mImageTypes:[I

.field private mPlaceholderType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DocImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DocImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget-object v1, Lcom/android/vending/R$styleable;->DocImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DocImageView;->mPlaceholderType:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    .line 51
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V
    .locals 1
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "imageTypes"

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/layout/DocImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 56
    iput-object p3, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DocImageView;->setLoaded(Z)V

    .line 58
    iput v0, p0, Lcom/google/android/finsky/layout/DocImageView;->mRequestCount:I

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->loadImageIfNecessary()V

    .line 61
    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v3, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v3, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getWidth()I

    move-result v2

    .line 87
    .local v2, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getHeight()I

    move-result v0

    .line 89
    .local v0, height:I
    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-static {v3, v5, v0, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    .line 93
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_1
    goto :goto_0

    .line 89
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-static {v3, v2, v5, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    goto :goto_1
.end method

.method protected getPlaceholder()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/DocImageView;->mPlaceholderType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
