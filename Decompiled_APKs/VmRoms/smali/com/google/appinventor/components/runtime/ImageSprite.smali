.class public Lcom/google/appinventor/components/runtime/ImageSprite;
.super Lcom/google/appinventor/components/runtime/Sprite;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>.</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite\'s <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite\'s unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> "
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private cachedRotationHeading:D

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private heightHint:I

.field private mat:Landroid/graphics/Matrix;

.field private picturePath:Ljava/lang/String;

.field private rotatedBitmap:Landroid/graphics/Bitmap;

.field private rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private rotates:Z

.field private rotationCached:Z

.field private unrotatedBitmap:Landroid/graphics/Bitmap;

.field private widthHint:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotationCached:Z

    return-void
.end method


# virtual methods
.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    goto :goto_0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The picture that determines the sprite\'s appearence"
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ImageSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public Rotates(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    return-void
.end method

.method public Rotates()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the sprite image rotates to match the sprite\'s heading. If false, the sprite image does not rotate when the sprite changes heading. The sprite rotates around its centerpoint."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->visible:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v7, v2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v8, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v10

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    add-int v1, v7, v9

    add-int v2, v8, v10

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotationCached:Z

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->cachedRotationHeading:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    div-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->cachedRotationHeading:D

    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    div-int/lit8 v1, v9, 0x2

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v4, v8

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method
