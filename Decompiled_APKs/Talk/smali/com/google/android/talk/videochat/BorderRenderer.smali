.class public Lcom/google/android/talk/videochat/BorderRenderer;
.super Ljava/lang/Object;
.source "BorderRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    }
.end annotation


# instance fields
.field private final mAllEdges:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

.field private final mBottomEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

.field private final mBoxVertices:[F

.field private final mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

.field private mFractPixelX:F

.field private mFractPixelY:F

.field private mGLProgram:I

.field private mHeight:I

.field private mInnerAlphaHandle:I

.field private mInnerColorHandle:I

.field private mInnerColorPixelCountHandle:I

.field private mLastInnerBorderPixels:I

.field private mLastOuterBorderPixels:I

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastRectIsInset:Z

.field private final mLeftEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

.field private final mName:Ljava/lang/String;

.field private mOnePixelX:F

.field private mOnePixelY:F

.field private mOuterAlphaHandle:I

.field private mOuterColorHandle:I

.field private mOuterColorPixelCountHandle:I

.field private final mRightEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

.field private mSurfaceDimensionsChanged:Z

.field private mTexCoordHandle:I

.field private final mTexVertices:[F

.field private final mTopEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

.field private mTriangleVerticesHandle:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/16 v1, 0x8

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    .line 70
    new-instance v0, Lcom/google/android/talk/videochat/FloatRect;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/FloatRect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    .line 83
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;-><init>(Lcom/google/android/talk/videochat/BorderRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTopEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .line 84
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;-><init>(Lcom/google/android/talk/videochat/BorderRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLeftEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .line 85
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;-><init>(Lcom/google/android/talk/videochat/BorderRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mRightEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .line 86
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;-><init>(Lcom/google/android/talk/videochat/BorderRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBottomEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTopEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLeftEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBottomEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mRightEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mAllEdges:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastRect:Landroid/graphics/Rect;

    .line 98
    iput-object p1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/BorderRenderer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/BorderRenderer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    return-object v0
.end method

.method private clearVertices([F)V
    .locals 9
    .parameter "vertices"

    .prologue
    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, p1, v7

    aput v8, p1, v6

    aput v8, p1, v5

    aput v8, p1, v4

    aput v8, p1, v3

    aput v8, p1, v2

    aput v8, p1, v1

    aput v8, p1, v0

    .line 128
    return-void
.end method

.method private pointsToVertices(FFFF[F)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "videoFrameTriangleVertices"

    .prologue
    .line 132
    const/4 v0, 0x0

    aput p3, p5, v0

    .line 133
    const/4 v0, 0x1

    aput p4, p5, v0

    .line 134
    const/4 v0, 0x2

    aput p1, p5, v0

    .line 135
    const/4 v0, 0x3

    aput p4, p5, v0

    .line 136
    const/4 v0, 0x4

    aput p1, p5, v0

    .line 137
    const/4 v0, 0x5

    aput p2, p5, v0

    .line 138
    const/4 v0, 0x6

    aput p3, p5, v0

    .line 139
    const/4 v0, 0x7

    aput p2, p5, v0

    .line 140
    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Rect;ZFFIFFIF)V
    .locals 12
    .parameter "originalRect"
    .parameter "rectIsInset"
    .parameter "alpha"
    .parameter "innerBoxGrayLevel"
    .parameter "innerBoxNumPixels"
    .parameter "innerBoxAlpha"
    .parameter "outerBoxGrayLevel"
    .parameter "outerBoxNumPixels"
    .parameter "outerBoxAlpha"

    .prologue
    .line 159
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mWidth:I

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mHeight:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 161
    const-string v1, "glViewport"

    invoke-static {v1}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 167
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mSurfaceDimensionsChanged:Z

    if-eqz v1, :cond_0

    .line 171
    const/high16 v1, 0x4000

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    .line 172
    const/high16 v1, 0x4000

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    .line 173
    const/high16 v1, 0x3ec0

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    .line 174
    const/high16 v1, 0x3ec0

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    .line 176
    :cond_0
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastInnerBorderPixels:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastOuterBorderPixels:I

    move/from16 v0, p8

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastRectIsInset:Z

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mSurfaceDimensionsChanged:Z

    if-eqz v1, :cond_2

    .line 182
    :cond_1
    move/from16 v0, p5

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastInnerBorderPixels:I

    .line 183
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastOuterBorderPixels:I

    .line 184
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 185
    iput-boolean p2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLastRectIsInset:Z

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mSurfaceDimensionsChanged:Z

    .line 188
    add-int v11, p5, p8

    .line 190
    .local v11, totalBorderPixels:I
    if-eqz p2, :cond_3

    .line 191
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, -0x4080

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    .line 193
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, 0x3f80

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    .line 195
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, -0x4080

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    .line 197
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, 0x3f80

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    int-to-float v2, v11

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v2, v3

    sub-float v2, v1, v2

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    int-to-float v3, v11

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/videochat/BorderRenderer;->pointsToVertices(FFFF[F)V

    .line 220
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;->clearVertices([F)V

    .line 221
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x6

    int-to-float v5, v11

    aput v5, v3, v4

    aput v5, v1, v2

    .line 222
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v5, v5, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v6, v6, Lcom/google/android/talk/videochat/FloatRect;->left:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    div-float/2addr v5, v6

    aput v5, v3, v4

    aput v5, v1, v2

    .line 224
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTopEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTopEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    int-to-float v2, v11

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v2, v3

    sub-float v2, v1, v2

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    sub-float v3, v1, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    sub-float v4, v1, v4

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    int-to-float v5, v11

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v5, v6

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/videochat/BorderRenderer;->pointsToVertices(FFFF[F)V

    .line 233
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;->clearVertices([F)V

    .line 234
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x4

    int-to-float v5, v11

    aput v5, v3, v4

    aput v5, v1, v2

    .line 235
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v5, v5, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v6, v6, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    div-float/2addr v5, v6

    aput v5, v3, v4

    aput v5, v1, v2

    .line 237
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLeftEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mLeftEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 241
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    iget v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    sub-float v3, v1, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    int-to-float v4, v11

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    int-to-float v5, v11

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v5, v6

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/videochat/BorderRenderer;->pointsToVertices(FFFF[F)V

    .line 246
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;->clearVertices([F)V

    .line 247
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x2

    int-to-float v5, v11

    aput v5, v3, v4

    aput v5, v1, v2

    .line 248
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v5, v5, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v6, v6, Lcom/google/android/talk/videochat/FloatRect;->left:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    div-float/2addr v5, v6

    aput v5, v3, v4

    aput v5, v1, v2

    .line 250
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBottomEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBottomEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iget v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    int-to-float v3, v11

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    int-to-float v4, v11

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v1, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    iget v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mFractPixelY:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/videochat/BorderRenderer;->pointsToVertices(FFFF[F)V

    .line 259
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;->clearVertices([F)V

    .line 260
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x6

    int-to-float v5, v11

    aput v5, v3, v4

    aput v5, v1, v2

    .line 261
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v5, v5, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iget-object v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v6, v6, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    div-float/2addr v5, v6

    aput v5, v3, v4

    aput v5, v1, v2

    .line 263
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mRightEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mRightEdge:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    iget-object v1, v1, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    .end local v11           #totalBorderPixels:I
    :cond_2
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerAlphaHandle:I

    mul-float v2, p3, p6

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 269
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterAlphaHandle:I

    mul-float v2, p3, p9

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 270
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerColorPixelCountHandle:I

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 271
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterColorPixelCountHandle:I

    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 272
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 273
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 274
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerColorHandle:I

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 275
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterColorHandle:I

    move/from16 v0, p7

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 276
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTriangleVerticesHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 277
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 278
    const-string v1, "setup"

    invoke-static {v1}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 281
    iget-object v7, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mAllEdges:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;

    .local v7, arr$:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v8, v7, v9

    .line 282
    .local v8, i:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTriangleVerticesHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 284
    iget v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 286
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 287
    const-string v1, "glDrawArrays"

    invoke-static {v1}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 281
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 200
    .end local v7           #arr$:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    .end local v8           #i:Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .restart local v11       #totalBorderPixels:I
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, -0x4080

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    .line 201
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, 0x3f80

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    .line 202
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, -0x4080

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    .line 203
    iget-object v1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mDestFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    const/high16 v2, 0x3f80

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOnePixelY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    goto/16 :goto_0

    .line 289
    .end local v11           #totalBorderPixels:I
    .restart local v7       #arr$:[Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    :cond_4
    return-void
.end method

.method public initGLContext()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 v_texCoord;\nvoid main() {\n  gl_Position = vPosition;\n  v_texCoord = a_texCoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform float u_outerAlpha;\nuniform float u_innerAlpha;\nuniform float u_innerColor;\nuniform float u_outerColor;\nuniform float u_innerColorPixelCount;\nuniform float u_outerColorPixelCount;\nvarying vec2 v_texCoord;\nvoid main() {\n  float selector = step(v_texCoord.x, u_innerColorPixelCount) *\n                   step(u_outerColorPixelCount, v_texCoord.y);\n  float color = mix(u_outerColor, u_innerColor, selector);\n  float alpha = mix(u_outerAlpha, u_innerAlpha, selector);\n  gl_FragColor = vec4(color, color, color, alpha);\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/RendererUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    .line 103
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 105
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTriangleVerticesHandle:I

    .line 106
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mTexCoordHandle:I

    .line 107
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_innerColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerColorHandle:I

    .line 108
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_outerColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterColorHandle:I

    .line 109
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_innerAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerAlphaHandle:I

    .line 110
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_outerAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterAlphaHandle:I

    .line 111
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_innerColorPixelCount"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mInnerColorPixelCountHandle:I

    .line 113
    iget v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mGLProgram:I

    const-string v1, "u_outerColorPixelCount"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mOuterColorPixelCountHandle:I

    .line 115
    const-string v0, "get..Location"

    invoke-static {v0}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mSurfaceDimensionsChanged:Z

    .line 117
    return-void
.end method

.method public setViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iput p1, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mWidth:I

    .line 121
    iput p2, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mHeight:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/BorderRenderer;->mSurfaceDimensionsChanged:Z

    .line 123
    return-void
.end method
