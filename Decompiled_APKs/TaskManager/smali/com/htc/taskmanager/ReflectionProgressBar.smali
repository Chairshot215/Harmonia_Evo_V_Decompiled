.class public Lcom/htc/taskmanager/ReflectionProgressBar;
.super Landroid/widget/ProgressBar;
.source "ReflectionProgressBar.java"


# instance fields
.field public mReflection:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/taskmanager/ReflectionProgressBar;->mReflection:Landroid/widget/ImageView;

    .line 23
    return-void
.end method

.method private computeOverallMemoryBarReflection()V
    .locals 22

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/htc/taskmanager/ReflectionProgressBar;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 42
    .local v16, bar_bmp:Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    .line 43
    invoke-static/range {v16 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, originalImage:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 47
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 50
    .local v19, height:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 54
    const/4 v3, 0x0

    div-int/lit8 v4, v19, 0x2

    div-int/lit8 v6, v19, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 57
    .local v21, reflectionImage:Landroid/graphics/Bitmap;
    div-int/lit8 v3, v19, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 60
    .local v18, destBmp:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .local v20, paint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v12, v3

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 66
    .local v8, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    move-object/from16 v9, v17

    move-object/from16 v14, v20

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/taskmanager/ReflectionProgressBar;->mReflection:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    .end local v2           #originalImage:Landroid/graphics/Bitmap;
    .end local v5           #width:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #shader:Landroid/graphics/LinearGradient;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    .end local v18           #destBmp:Landroid/graphics/Bitmap;
    .end local v19           #height:I
    .end local v20           #paint:Landroid/graphics/Paint;
    .end local v21           #reflectionImage:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-direct {p0}, Lcom/htc/taskmanager/ReflectionProgressBar;->computeOverallMemoryBarReflection()V

    .line 29
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 33
    invoke-super/range {p0 .. p5}, Landroid/widget/ProgressBar;->onLayout(ZIIII)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/taskmanager/ReflectionProgressBar;->destroyDrawingCache()V

    .line 37
    invoke-virtual {p0}, Lcom/htc/taskmanager/ReflectionProgressBar;->buildDrawingCache()V

    .line 38
    return-void
.end method
