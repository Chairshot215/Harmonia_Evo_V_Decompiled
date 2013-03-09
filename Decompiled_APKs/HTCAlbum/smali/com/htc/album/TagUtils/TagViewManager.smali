.class public Lcom/htc/album/TagUtils/TagViewManager;
.super Landroid/widget/RelativeLayout;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TagUtils/TagViewManager$TagFrame;,
        Lcom/htc/album/TagUtils/TagViewManager$TagView;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static TAG_FONT_STYLE:I

.field public static TAG_TEXT_OFFSET_WIDTH:I

.field public static mTagFontSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableTagFrame:Z

.field private mFontH:I

.field private mPhotoH:I

.field private mPhotoW:I

.field private mPhotoX:I

.field private mPhotoY:I

.field mTagClickListener:Landroid/view/View$OnClickListener;

.field private mTagDisplayMode:I

.field private mTagGroup:Landroid/widget/RelativeLayout;

.field private final mTagIntervalH:I

.field public mTagList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTagLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTagPercent:F

.field mTagTouchListener:Landroid/view/View$OnTouchListener;

.field public mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    .line 39
    const v0, 0x203002a

    sput v0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagFontSize:I

    .line 46
    const/16 v0, 0xe

    sput v0, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagPercent:F

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagIntervalH:I

    .line 48
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    .line 50
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagList:Ljava/util/LinkedList;

    .line 52
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    .line 53
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    .line 54
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    .line 55
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    .line 56
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    .line 57
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    .line 59
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    .line 60
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 61
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    .line 63
    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 64
    iput-boolean v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    .line 79
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static measureDefaultStringHeight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 205
    new-instance v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    .local v0, tvTextCount:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 214
    :cond_0
    return v1
.end method

.method public static measureResourceHeight(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "nResourceID"

    .prologue
    const/4 v1, -0x1

    .line 234
    if-nez p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v2, v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static measureResourceWidth(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "nResourceID"

    .prologue
    const/4 v1, -0x1

    .line 247
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 253
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0
.end method

.method public static measureStringHeight(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 219
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, tvTextCount:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 226
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 229
    :cond_0
    return v1
.end method

.method public static measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    .local v0, tvTextCount:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 197
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 200
    :cond_0
    return v1
.end method

.method private resetTags()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 261
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    if-nez v3, :cond_1

    .line 282
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v3}, Lcom/htc/album/AlbumUtility/TagArranger;->clearTags()V

    .line 265
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v6, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    .local v2, rc:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    invoke-virtual {v3, v2, v4, v8}, Lcom/htc/album/AlbumUtility/TagArranger;->setup(Landroid/graphics/Rect;II)V

    .line 269
    sget-object v3, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> TagViewManager resetTags - Calcute Rect : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") , DockH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,IntervalH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    .line 273
    .local v0, nCount:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_0

    .line 275
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->resetTag(Lcom/htc/album/TagUtils/TagViewManager$TagView;)V

    .line 273
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->resetTagFrame(Lcom/htc/album/TagUtils/TagViewManager$TagFrame;)V

    goto :goto_1
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V
    .locals 22
    .parameter "szName"
    .parameter "szID"
    .parameter "szContactID"
    .parameter "percentCenterX"
    .parameter "percentCenterY"
    .parameter "percentWidth"
    .parameter "percentHeight"
    .parameter "attachFrame"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 312
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sget v7, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int/2addr v6, v7

    sget v7, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int v15, v6, v7

    .line 315
    .local v15, nNameMeasuredWidth:I
    const/high16 v6, 0x42c8

    div-float v6, p4, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v7, v7

    mul-float v13, v6, v7

    .line 316
    .local v13, fTagCenterX:F
    const/high16 v6, 0x42c8

    div-float v6, p5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v7, v7

    mul-float v14, v6, v7

    .line 318
    .local v14, fTagCenterY:F
    sget-object v6, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][TagViewManager][addTag]: mode: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p1

    .line 319
    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/TagUtils/TagViewManager;->calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;

    move-result-object v18

    .line 320
    .local v18, point:Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    .line 321
    .local v16, nTagX:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 324
    .local v17, nTagY:I
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v19, rcPos:Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 326
    .local v20, strTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v15, v2}, Lcom/htc/album/AlbumUtility/TagArranger;->addTag(IIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v19

    .line 330
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    move/from16 v0, p8

    if-ne v6, v0, :cond_4

    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    const/4 v6, 0x0

    cmpl-float v6, v6, p6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, v6, p7

    if-nez v6, :cond_9

    .line 335
    :cond_1
    new-instance v5, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    .end local v5           #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v12

    int-to-float v10, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    int-to-float v11, v6

    const v12, 0x7f0000ff

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V

    .line 353
    .restart local v5       #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v6, :cond_3

    .line 357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 359
    :cond_3
    invoke-virtual {v5}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->print()V

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/album/TagUtils/TagViewManager;->addView(Landroid/view/View;)V

    .line 363
    .end local v5           #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :cond_4
    new-instance v21, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;)V

    .line 364
    .local v21, tag:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->init(Ljava/lang/String;Ljava/lang/String;FF)Z

    .line 365
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setPos(FF)V

    .line 367
    move-object/from16 v0, v21

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setWH(FF)V

    .line 368
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 369
    :cond_5
    const/4 v6, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setVisibility(I)V

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-nez v6, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v6, :cond_7

    .line 377
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v6, :cond_8

    .line 380
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 385
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 339
    .end local v21           #tag:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .restart local v5       #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :cond_9
    const/high16 v6, 0x42c8

    div-float v6, p6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v7, v7

    mul-float v10, v6, v7

    .line 340
    .local v10, fTagW:F
    const/high16 v6, 0x42c8

    div-float v6, p7, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v7, v7

    mul-float v11, v6, v7

    .line 341
    .local v11, fTagH:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    int-to-float v6, v6

    add-float/2addr v6, v13

    const/high16 v7, 0x4000

    div-float v7, v10, v7

    sub-float v8, v6, v7

    .line 342
    .local v8, fFrameX:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v6, v6

    add-float/2addr v6, v14

    const/high16 v7, 0x4000

    div-float v7, v11, v7

    sub-float v9, v6, v7

    .line 344
    .local v9, fFrameY:F
    new-instance v5, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    .end local v5           #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v12

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;-><init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V

    .line 345
    .restart local v5       #rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    sget-object v6, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][TagViewManager][addTag]: PW: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v6, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][TagViewManager][addTag]: PH: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setXY(FF)V

    .line 349
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setWH(FF)V

    .line 350
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;
    .locals 10
    .parameter "percentCenterX"
    .parameter "percentCenterY"
    .parameter "percentWidth"
    .parameter "percentHeight"
    .parameter "szName"

    .prologue
    const/high16 v9, 0x42c8

    .line 654
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 656
    .local v6, point:Landroid/graphics/Point;
    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p5}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 657
    .local v5, nNameWidth:I
    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p5}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 658
    .local v4, nNameHeight:I
    div-float v7, p1, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v0, v7, v8

    .line 659
    .local v0, fTagCenterX:F
    div-float v7, p2, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v1, v7, v8

    .line 660
    .local v1, fTagCenterY:F
    div-float v7, p3, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v8, v8

    mul-float v3, v7, v8

    .line 661
    .local v3, fTagW:F
    div-float v7, p4, v9

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v8, v8

    mul-float v2, v7, v8

    .line 663
    .local v2, fTagH:F
    const/4 v7, 0x1

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    if-ne v7, v8, :cond_1

    .line 665
    float-to-int v7, v0

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 666
    float-to-int v7, v1

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 674
    :cond_0
    :goto_0
    return-object v6

    .line 668
    :cond_1
    const/4 v7, 0x2

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    if-ne v7, v8, :cond_0

    .line 671
    float-to-int v7, v0

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 672
    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    const/high16 v8, 0x4000

    div-float v8, v2, v8

    add-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v8, p4

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public clearTagGroup()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 89
    :cond_0
    return-void
.end method

.method public countPhotoSize(IIII)Landroid/graphics/Point;
    .locals 9
    .parameter "PhotoW"
    .parameter "PhotoH"
    .parameter "ScreenW"
    .parameter "ScreenH"

    .prologue
    .line 613
    move v1, p1

    .line 614
    .local v1, nPhotoW:I
    move v0, p2

    .line 617
    .local v0, nPhotoH:I
    if-le v0, p4, :cond_0

    .line 619
    const/4 v3, 0x0

    .line 621
    .local v3, newWidth:I
    int-to-float v6, p4

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 622
    .local v5, scaleRation:F
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 624
    move v1, v3

    .line 625
    move v0, p4

    .line 627
    sget-object v6, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KA>>> countPhotoSize - Scale Width ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") Scale to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v3           #newWidth:I
    .end local v5           #scaleRation:F
    :cond_0
    if-le v1, p3, :cond_1

    .line 633
    const/4 v2, 0x0

    .line 635
    .local v2, newHeight:I
    int-to-float v6, p3

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 636
    .restart local v5       #scaleRation:F
    int-to-float v6, v0

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 638
    move v1, p3

    .line 639
    move v0, v2

    .line 644
    .end local v2           #newHeight:I
    .end local v5           #scaleRation:F
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 646
    .local v4, pt:Landroid/graphics/Point;
    return-object v4
.end method

.method public findTagFrameByContactID(Ljava/lang/String;)Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .locals 6
    .parameter "szID"

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    const/4 v4, 0x0

    .line 468
    .local v4, tagFrameTemp:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v2

    .line 487
    .end local v2           #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .local v3, tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :goto_0
    return-object v3

    .line 472
    .end local v3           #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .restart local v2       #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    .line 473
    .local v0, nCount:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    if-le v0, v1, :cond_2

    .line 475
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    if-eqz v5, :cond_3

    .line 478
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tagFrameTemp:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;

    .line 479
    .restart local v4       #tagFrameTemp:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagContactID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 482
    move-object v2, v4

    :cond_2
    move-object v3, v2

    .line 487
    .end local v2           #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .restart local v3       #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    goto :goto_0

    .line 473
    .end local v3           #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    .restart local v2       #tagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTagID(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 599
    if-nez p1, :cond_0

    const-string v1, ""

    .line 603
    :goto_0
    return-object v1

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 601
    .local v0, t:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 602
    .restart local v0       #t:Lcom/htc/album/TagUtils/TagInfo;
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 603
    :cond_1
    iget-object v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 591
    if-nez p1, :cond_0

    const-string v1, ""

    .line 595
    :goto_0
    return-object v1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 593
    .local v0, t:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 594
    .restart local v0       #t:Lcom/htc/album/TagUtils/TagInfo;
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 595
    :cond_1
    iget-object v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagPressResource()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagPressRes(Landroid/content/Context;)I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const v0, 0x2080b1f

    goto :goto_0
.end method

.method public getTagResource()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagRes(Landroid/content/Context;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const v0, 0x2080b1e

    goto :goto_0
.end method

.method public getTagViewByID(Ljava/lang/String;)Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .locals 6
    .parameter "szID"

    .prologue
    .line 551
    const/4 v2, 0x0

    .line 552
    .local v2, tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    const/4 v4, 0x0

    .line 554
    .local v4, tagViewTemp:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v2

    .line 572
    .end local v2           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .local v3, tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    :goto_0
    return-object v3

    .line 557
    .end local v3           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .restart local v2       #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    .line 558
    .local v0, nCount:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    if-le v0, v1, :cond_2

    .line 560
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_3

    .line 563
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tagViewTemp:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .line 564
    .restart local v4       #tagViewTemp:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 567
    move-object v2, v4

    :cond_2
    move-object v3, v2

    .line 572
    .end local v2           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .restart local v3       #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    goto :goto_0

    .line 558
    .end local v3           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    .restart local v2       #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTagX(Landroid/view/View;)F
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 575
    if-nez p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 576
    :cond_1
    const/4 v0, 0x0

    .line 577
    .local v0, t:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 578
    .restart local v0       #t:Lcom/htc/album/TagUtils/TagInfo;
    if-eqz v0, :cond_0

    .line 579
    iget v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    goto :goto_0
.end method

.method public getTagY(Landroid/view/View;)F
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 583
    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v1

    .line 584
    :cond_1
    const/4 v0, 0x0

    .line 585
    .local v0, t:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 586
    .restart local v0       #t:Lcom/htc/album/TagUtils/TagInfo;
    if-eqz v0, :cond_0

    .line 587
    iget v1, v0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    goto :goto_0
.end method

.method public init(IIII)Z
    .locals 7
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/TagUtils/TagViewManager;->setCanvasInfo(IIII)V

    .line 128
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    const-string v2, "TagViewManager"

    invoke-static {v1, v2}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    .line 129
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    sput v1, Lcom/htc/album/TagUtils/TagViewManager;->mTagFontSize:I

    .line 130
    sget-object v1, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][TagViewManager][init] - mFontH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-direct {v1, v6}, Lcom/htc/album/AlbumUtility/TagArranger;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    .local v0, rc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mFontH:I

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->setup(Landroid/graphics/Rect;II)V

    .line 139
    return v6
.end method

.method public isTagView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 607
    instance-of v0, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSize()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public removeTag(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 455
    :cond_0
    const/4 v1, 0x0

    .line 456
    .local v1, t:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #t:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v1, Lcom/htc/album/TagUtils/TagInfo;

    .line 458
    .restart local v1       #t:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, strTag:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v2, v0}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    .line 461
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeTagByContactID(Ljava/lang/String;)V
    .locals 7
    .parameter "szID"

    .prologue
    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const/4 v4, 0x0

    .line 496
    .local v4, tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    .line 497
    .local v0, nCount:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    if-le v0, v1, :cond_0

    .line 499
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_2

    .line 502
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .line 503
    .restart local v4       #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagContactID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    const/4 v3, 0x0

    .line 508
    .local v3, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v3, Lcom/htc/album/TagUtils/TagInfo;

    .line 510
    .restart local v3       #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, strTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v5, v2}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    .line 513
    invoke-virtual {p0, v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 497
    .end local v2           #strTag:Ljava/lang/String;
    .end local v3           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeTagByID(Ljava/lang/String;)V
    .locals 7
    .parameter "szID"

    .prologue
    .line 522
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const/4 v4, 0x0

    .line 526
    .local v4, tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v0

    .line 527
    .local v0, nCount:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    if-le v0, v1, :cond_0

    .line 529
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v5, :cond_2

    .line 532
    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    check-cast v4, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .line 533
    .restart local v4       #tagView:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    const/4 v3, 0x0

    .line 538
    .local v3, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v3, Lcom/htc/album/TagUtils/TagInfo;

    .line 540
    .restart local v3       #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, strTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v5, v2}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Ljava/lang/String;)Z

    .line 543
    invoke-virtual {p0, v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 527
    .end local v2           #strTag:Ljava/lang/String;
    .end local v3           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeViewFromTagGroup(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public resetTag(Lcom/htc/album/TagUtils/TagViewManager$TagView;)V
    .locals 14
    .parameter "tag"

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, tagName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v12

    .line 393
    .local v12, tagID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagX()F

    move-result v1

    .line 394
    .local v1, tagX:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagY()F

    move-result v2

    .line 395
    .local v2, tagY:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagW()F

    move-result v3

    .line 396
    .local v3, tagW:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagH()F

    move-result v4

    .line 398
    .local v4, tagH:F
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sget v13, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int/2addr v0, v13

    sget v13, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int v6, v0, v13

    .local v6, nNameMeasuredWidth:I
    move-object v0, p0

    .line 401
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TagUtils/TagViewManager;->calculateTagNamePosition(FFFFLjava/lang/String;)Landroid/graphics/Point;

    move-result-object v9

    .line 402
    .local v9, point:Landroid/graphics/Point;
    iget v7, v9, Landroid/graphics/Point;->x:I

    .line 403
    .local v7, nTagX:I
    iget v8, v9, Landroid/graphics/Point;->y:I

    .line 405
    .local v8, nTagY:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 406
    .local v10, rcPos:Landroid/graphics/Rect;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 408
    .local v11, strTag:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mtaCalculateTagPos:Lcom/htc/album/AlbumUtility/TagArranger;

    invoke-virtual {v0, v7, v8, v6, v11}, Lcom/htc/album/AlbumUtility/TagArranger;->addTag(IIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 412
    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v13, v10, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {p1, v0, v13}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setPos(FF)V

    .line 414
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->invalidate()V

    goto :goto_0
.end method

.method public resetTagFrame(Lcom/htc/album/TagUtils/TagViewManager$TagFrame;)V
    .locals 14
    .parameter "tagFrame"

    .prologue
    .line 419
    iget-boolean v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    if-nez v11, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagX()F

    move-result v6

    .line 423
    .local v6, percentCenterX:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagY()F

    move-result v7

    .line 424
    .local v7, percentCenterY:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagW()F

    move-result v9

    .line 425
    .local v9, percentWidth:F
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getTagH()F

    move-result v8

    .line 426
    .local v8, percentHeight:F
    const/high16 v11, 0x42c8

    div-float v11, v6, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v12, v12

    mul-float v2, v11, v12

    .line 427
    .local v2, fTagCenterX:F
    const/high16 v11, 0x42c8

    div-float v11, v7, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v12, v12

    mul-float v3, v11, v12

    .line 429
    .local v3, fTagCenterY:F
    const/4 v10, 0x0

    .line 430
    .local v10, rcTagFrame:Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
    const/4 v11, 0x0

    cmpl-float v11, v11, v9

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_0

    .line 436
    const/high16 v11, 0x42c8

    div-float v11, v9, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    int-to-float v12, v12

    mul-float v5, v11, v12

    .line 437
    .local v5, fTagW:F
    const/high16 v11, 0x42c8

    div-float v11, v8, v11

    iget v12, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    int-to-float v12, v12

    mul-float v4, v11, v12

    .line 438
    .local v4, fTagH:F
    iget v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x4000

    div-float v12, v5, v12

    sub-float v0, v11, v12

    .line 439
    .local v0, fFrameX:F
    iget v11, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x4000

    div-float v12, v4, v12

    sub-float v1, v11, v12

    .line 441
    .local v1, fFrameY:F
    invoke-virtual {p1, v0, v1, v5, v4}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->updateRect(FFFF)V

    .line 444
    sget-object v11, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][TagViewManager][resetTagFrame]: PW: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v11, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][TagViewManager][resetTagFrame]: PH: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->invalidate()V

    .line 448
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->print()V

    goto/16 :goto_0
.end method

.method public setCanvasInfo(IIII)V
    .locals 5
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 178
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    .line 179
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    .line 180
    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    .line 181
    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    .line 183
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoX:I

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoW:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoY:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager;->mPhotoH:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->layout(IIII)V

    .line 187
    invoke-direct {p0}, Lcom/htc/album/TagUtils/TagViewManager;->resetTags()V

    .line 188
    return-void
.end method

.method public setEnableTagFrame(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mEnableTagFrame:Z

    .line 71
    return-void
.end method

.method public setReferenceTagGroup(Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter "tagGroup"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 84
    return-void
.end method

.method public setTagDisplayMode(I)V
    .locals 0
    .parameter "nMode"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagDisplayMode:I

    .line 75
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagClickListener:Landroid/view/View$OnClickListener;

    .line 154
    :cond_0
    return-void
.end method

.method public setTagOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 150
    return-void
.end method

.method public setTagOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagTouchListener:Landroid/view/View$OnTouchListener;

    .line 145
    return-void
.end method

.method public showTagGroup(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][TagViewManager][showTagGroup]: skipped..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 119
    .local v0, visibility:I
    :goto_1
    sget-object v1, Lcom/htc/album/TagUtils/TagViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][TagViewManager][showTagGroup]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 117
    .end local v0           #visibility:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public validateTagUniqueness(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 4
    .parameter "strName"
    .parameter "strID"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v1

    .line 291
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 293
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-nez v3, :cond_1

    .line 291
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .line 297
    .local v2, tag:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    goto :goto_1

    .line 305
    .end local v2           #tag:Lcom/htc/album/TagUtils/TagViewManager$TagView;
    :cond_2
    return-void
.end method
