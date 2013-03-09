.class public Lcom/google/android/talk/videochat/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlphaHandle:I

.field private final mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

.field private final mDestinationVertices:[F

.field private mFlipSourceTexture:Z

.field private mGLProgram:I

.field private mHeight:I

.field private mInputTextureName:I

.field private mLastDestinationRect:Landroid/graphics/Rect;

.field private final mName:Ljava/lang/String;

.field private final mQuadVertices:Ljava/nio/FloatBuffer;

.field private mResetSourceTextureCoordinates:Z

.field private mTexCoordHandle:I

.field private mTexHandle:I

.field private final mTextureVertices:Ljava/nio/FloatBuffer;

.field private mTriangleVerticesHandle:I

.field private mWidth:I

.field private mXClip:F

.field private mYClip:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Talk/TextureRenderer"

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/google/android/talk/videochat/FloatRect;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/FloatRect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationVertices:[F

    .line 67
    iput-object p1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mName:Ljava/lang/String;

    .line 69
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 71
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    .line 73
    return-void
.end method

.method private setSourceTextureCoordinates()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 139
    iget-boolean v3, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mFlipSourceTexture:Z

    if-eqz v3, :cond_0

    .line 140
    iget v3, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    sub-float v0, v5, v3

    .line 141
    .local v0, left:F
    iget v1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    .line 146
    .local v1, right:F
    :goto_0
    const/16 v3, 0x8

    new-array v2, v3, [F

    aput v0, v2, v6

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    aput v4, v2, v3

    .line 151
    .local v2, texVertices:[F
    iget-object v3, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    return-void

    .line 143
    .end local v0           #left:F
    .end local v1           #right:F
    .end local v2           #texVertices:[F
    :cond_0
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    .line 144
    .restart local v0       #left:F
    iget v3, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    sub-float v1, v5, v3

    .restart local v1       #right:F
    goto :goto_0
.end method


# virtual methods
.method PointsToVertices(Lcom/google/android/talk/videochat/FloatRect;[F)V
    .locals 2
    .parameter "rect"
    .parameter "vertices"

    .prologue
    .line 110
    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    aput v1, p2, v0

    .line 111
    const/4 v0, 0x1

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    aput v1, p2, v0

    .line 112
    const/4 v0, 0x2

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    aput v1, p2, v0

    .line 113
    const/4 v0, 0x3

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    aput v1, p2, v0

    .line 114
    const/4 v0, 0x4

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->right:F

    aput v1, p2, v0

    .line 115
    const/4 v0, 0x5

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    aput v1, p2, v0

    .line 116
    const/4 v0, 0x6

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->left:F

    aput v1, p2, v0

    .line 117
    const/4 v0, 0x7

    iget v1, p1, Lcom/google/android/talk/videochat/FloatRect;->top:F

    aput v1, p2, v0

    .line 118
    return-void
.end method

.method public drawFrame(Landroid/graphics/Rect;F)V
    .locals 8
    .parameter "destinationRect"
    .parameter "textureAlpha"

    .prologue
    const/4 v1, 0x2

    const/high16 v7, 0x3f80

    const/high16 v6, -0x4080

    const/high16 v5, 0x4000

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mResetSourceTextureCoordinates:Z

    if-eqz v0, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/google/android/talk/videochat/TextureRenderer;->setSourceTextureCoordinates()V

    .line 163
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mResetSourceTextureCoordinates:Z

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    .line 168
    const-string v0, "Talk/TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " new dest (pixels) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    iput v2, v0, Lcom/google/android/talk/videochat/FloatRect;->left:F

    .line 175
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    sub-float v2, v7, v2

    iput v2, v0, Lcom/google/android/talk/videochat/FloatRect;->top:F

    .line 177
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    iput v2, v0, Lcom/google/android/talk/videochat/FloatRect;->right:F

    .line 179
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mLastDestinationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    sub-float v2, v7, v2

    iput v2, v0, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    .line 181
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationVertices:[F

    invoke-virtual {p0, v0, v2}, Lcom/google/android/talk/videochat/TextureRenderer;->PointsToVertices(Lcom/google/android/talk/videochat/FloatRect;[F)V

    .line 183
    const-string v0, "Talk/TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " new dest "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v4, v4, Lcom/google/android/talk/videochat/FloatRect;->left:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v4, v4, Lcom/google/android/talk/videochat/FloatRect;->top:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v4, v4, Lcom/google/android/talk/videochat/FloatRect;->right:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationFloatRect:Lcom/google/android/talk/videochat/FloatRect;

    iget v4, v4, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mDestinationVertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    :cond_3
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 191
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mWidth:I

    iget v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mHeight:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 192
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 194
    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_4

    .line 195
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 200
    :goto_1
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mAlphaHandle:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 201
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 202
    const/16 v0, 0xde1

    iget v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mInputTextureName:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 203
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTexHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 204
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTexCoordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 206
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 207
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTriangleVerticesHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 209
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTriangleVerticesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 210
    const-string v0, "setup"

    invoke-static {v0}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 212
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_4
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 198
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_1
.end method

.method public initGLContext()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 v_texCoord;\nvoid main() {\n  gl_Position = vPosition;\n  v_texCoord = a_texCoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D s_texture;\nvarying vec2 v_texCoord;\nuniform float i_alpha;\nvoid main() {\n  gl_FragColor = texture2D(s_texture, v_texCoord);\n  gl_FragColor.a = i_alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/RendererUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    .line 78
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    const-string v1, "s_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTexHandle:I

    .line 79
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    const-string v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTexCoordHandle:I

    .line 80
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mTriangleVerticesHandle:I

    .line 81
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mGLProgram:I

    const-string v1, "i_alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mAlphaHandle:I

    .line 82
    const-string v0, "get..Location"

    invoke-static {v0}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mInputTextureName:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mResetSourceTextureCoordinates:Z

    .line 85
    return-void
.end method

.method public setFlipSourceTexture(Z)V
    .locals 1
    .parameter "shouldFlip"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mFlipSourceTexture:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mResetSourceTextureCoordinates:Z

    .line 129
    return-void
.end method

.method public setInputTextureName(I)V
    .locals 3
    .parameter "textureName"

    .prologue
    .line 121
    const-string v0, "Talk/TextureRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setInputTextureName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput p1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mInputTextureName:I

    .line 123
    return-void
.end method

.method public setSourceTextureClip(FF)V
    .locals 1
    .parameter "xClip"
    .parameter "yClip"

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iput p1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mXClip:F

    .line 99
    iput p2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mYClip:F

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mResetSourceTextureCoordinates:Z

    .line 102
    :cond_1
    return-void
.end method

.method public setViewSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 105
    iput p1, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mWidth:I

    .line 106
    iput p2, p0, Lcom/google/android/talk/videochat/TextureRenderer;->mHeight:I

    .line 107
    return-void
.end method
