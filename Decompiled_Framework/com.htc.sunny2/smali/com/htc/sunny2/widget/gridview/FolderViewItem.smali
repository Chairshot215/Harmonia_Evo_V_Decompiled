.class public Lcom/htc/sunny2/widget/gridview/FolderViewItem;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "FolderViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$1;,
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;,
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;,
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewSharedTexture;,
        Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = " "

.field private static final GAP_BK_TEXT:I = 0x2

.field private static final ROTATE_DEGREE:F = -8.0f

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x1

.field protected static final SPRITE_LAYER_COUNT:I = 0x3

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x2

.field protected static final SPRITE_LAYER_SELECTOR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBGTexture:Lcom/htc/sunny2/Texture;

.field private mBKResid:I

.field private mBkSprite:Lcom/htc/sunny2/Sprite;

.field private mDataIndex:I

.field private mDateId:I

.field private mDateText:Landroid/widget/TextView;

.field private mDateTextHeight:I

.field private mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

.field private mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

.field private mFolderSprite:[Lcom/htc/sunny2/Sprite;

.field private mHeight:I

.field private mImgHeight:I

.field private mImgWidth:I

.field private mMediaData:Lcom/htc/sunny2/IMediaData;

.field private mNameText:Landroid/widget/TextView;

.field private mNameTextHeight:I

.field private mNumFolderImage:I

.field private mSelectedTexture:Lcom/htc/sunny2/Texture;

.field private mSelecterResid:I

.field private mShareTextureKey:Ljava/lang/String;

.field private mStyle:I

.field private mTextContainer:Landroid/view/ViewGroup;

.field private mTextId:I

.field private mTextLayoutResId:I

.field private mTextureContainer:Lcom/htc/sunny2/Texture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDataIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mStyle:I

    new-instance v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;Lcom/htc/sunny2/widget/gridview/FolderViewItem$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textviewHeight:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameTextHeight:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateviewHeight:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateTextHeight:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgWidth:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgHeight:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->numFolderImage:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->backgroundResid:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBKResid:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->selecterResid:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mSelecterResid:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textLayoutResId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextLayoutResId:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextId:I

    iget v0, p3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateId:I

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method private setTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextId:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateId:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateText:Landroid/widget/TextView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameText:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v14, v13}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v2, v3, v6, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v11

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    sub-float v5, v2, v3

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite$Layer;->getGeometry()[I

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    const/4 v3, 0x0

    aget v3, v10, v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget v2, v10, v2

    if-ne v11, v2, :cond_2

    float-to-int v2, v4

    const/4 v3, 0x2

    aget v3, v10, v3

    if-ne v2, v3, :cond_2

    float-to-int v2, v5

    const/4 v3, 0x3

    aget v3, v10, v3

    if-eq v2, v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    int-to-float v2, v2

    int-to-float v3, v11

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextureContainer:Lcom/htc/sunny2/Texture;

    if-nez v15, :cond_4

    invoke-static {v9}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v15

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextureContainer:Lcom/htc/sunny2/Texture;

    :goto_1
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    int-to-float v6, v6

    int-to-float v0, v8

    move/from16 v16, v0

    div-float v6, v6, v16

    int-to-float v0, v11

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v15, v9}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupAnimation(IIILcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 11

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v4, v5, p1

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->getPosition()[F

    move-result-object v2

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->getRotate()[F

    move-result-object v3

    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    int-to-long v5, p2

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    int-to-long v5, p3

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v2, v7

    iget v8, p4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    iget v9, p4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v2, v9

    iget v10, p4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p5

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, p5

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    move-object/from16 v0, p5

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v4, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 11

    const/4 v10, 0x0

    if-nez p2, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaData="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null at bindMediaData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->TAG:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDataIndex:I

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mMediaData:Lcom/htc/sunny2/IMediaData;

    instance-of v8, p2, Lcom/htc/sunny2/IMediaDataFolder;

    if-eqz v8, :cond_4

    move-object v5, p2

    check-cast v5, Lcom/htc/sunny2/IMediaDataFolder;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_2

    const-string v2, " "

    :cond_2
    if-nez v1, :cond_3

    const-string v1, " "

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setTexture(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

    if-eqz v8, :cond_5

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

    invoke-interface {v8, p1, p2, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {p0, v8, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v7, v8, v3

    neg-float v8, v0

    invoke-virtual {v7, v10, v8, v10}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    int-to-float v8, v3

    const/high16 v9, -0x3f00

    mul-float/2addr v8, v9

    invoke-virtual {v7, v10, v10, v8}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 4

    new-instance v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;-><init>()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgWidth:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailW:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgHeight:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailH:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBKResid:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->backgroundResid:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemW:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemH:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mSelecterResid:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->selecterResid:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameTextHeight:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textviewHeight:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateTextHeight:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateviewHeight:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->numFolderImage:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextLayoutResId:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textLayoutResId:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextId:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textId:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateId:I

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateId:I

    new-instance v1, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    return-object v1
.end method

.method public createResource()V
    .locals 18

    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v17

    if-nez v17, :cond_0

    new-instance v17, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewSharedTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBKResid:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mSelecterResid:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewSharedTexture;-><init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;Landroid/content/Context;II)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;)V

    :cond_0
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "NAME_TEXTUREE_SELECTED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mSelectedTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameTextHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateTextHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    sub-int v3, v15, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    new-array v3, v3, [Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v14, v3, :cond_3

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v16, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    const/4 v3, 0x0

    neg-float v4, v13

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v7, v14

    const/high16 v8, -0x3f00

    mul-float/2addr v7, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_4

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    sub-int v3, v15, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    int-to-float v3, v15

    int-to-float v4, v15

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mSelectedTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mImgHeight:I

    sub-int/2addr v3, v15

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/high16 v3, 0x4000

    add-float v11, v13, v3

    const/4 v12, 0x0

    move-object v7, v2

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public freeResource()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->stop()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextureContainer:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextureContainer:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextureContainer:Lcom/htc/sunny2/Texture;

    :cond_0
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mTextContainer:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDateText:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNameText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->release()V

    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    return-void
.end method

.method public getFolderItemCount()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    return v0
.end method

.method public getOriginalPosition()[Lcom/htc/sunny2/view/Vector3F;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v0, v4, v5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    new-array v3, v4, [Lcom/htc/sunny2/view/Vector3F;

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v1, v4, :cond_0

    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    neg-float v5, v0

    invoke-direct {v4, v6, v5, v6}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getOriginalRotation()[Lcom/htc/sunny2/view/Vector3F;
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    new-array v1, v2, [Lcom/htc/sunny2/view/Vector3F;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    int-to-float v3, v0

    const/high16 v4, -0x3f00

    mul-float/2addr v3, v4

    invoke-direct {v2, v5, v5, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mWidth:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFolderImageGetter(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderImageGetter:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;

    return-void
.end method

.method public setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use incorrect index: idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumFolderImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v2, p2

    invoke-virtual {v1, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setupSpriteAnimation(ILcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 4

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mNumFolderImage:I

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v0, v1, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0, p2}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->start()V

    return-void
.end method

.method public unbindMediaData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mMediaData:Lcom/htc/sunny2/IMediaData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mDataIndex:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;->stop()V

    return-void
.end method
