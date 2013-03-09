.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 center;\nuniform float alpha;\nuniform float bound;\nuniform float radius2;\nuniform float factor;\nuniform float inv_height;\nuniform float inv_width;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  float dist = distance(gl_FragCoord.xy, center);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scale = radian * factor / dist;\n  vec2 new_coord = gl_FragCoord.xy * scale + (1.0 - scale) * center;\n  new_coord.x *= inv_width;\n  new_coord.y *= inv_height;\n  vec4 color = texture2D(tex_sampler_0, new_coord);\n  gl_FragColor = color;\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    return-void
.end method

.method private updateFrameSize(II)V
    .locals 5

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p2

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v2, "center"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v2, "inv_width"

    int-to-float v3, p1

    div-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v2, "inv_height"

    int-to-float v3, p2

    div-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    return-void
.end method

.method private updateProgramParams()V
    .locals 14

    const v5, 0x40490fdb

    iget v8, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/high16 v9, 0x4000

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f40

    add-float v0, v8, v9

    const/high16 v8, 0x3e80

    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    mul-int/2addr v9, v10

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    iget v11, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v2, v8, v9

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    const v8, 0x3f933333

    mul-float v6, v8, v1

    mul-float v7, v6, v6

    const v8, 0x3fc90fdb

    div-float v9, v0, v1

    sub-float v10, v7, v2

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v9, v9

    sub-float v4, v8, v9

    div-float v3, v1, v4

    iget-object v8, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v9, "radius2"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v9, "factor"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v9, "alpha"

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe8

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter FisheyeFilter does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 center;\nuniform float alpha;\nuniform float bound;\nuniform float radius2;\nuniform float factor;\nuniform float inv_height;\nuniform float inv_width;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  float dist = distance(gl_FragCoord.xy, center);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scale = radian * factor / dist;\n  vec2 new_coord = gl_FragCoord.xy * scale + (1.0 - scale) * center;\n  new_coord.x *= inv_width;\n  new_coord.y *= inv_height;\n  vec4 color = texture2D(tex_sampler_0, new_coord);\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    :cond_3
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FisheyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
