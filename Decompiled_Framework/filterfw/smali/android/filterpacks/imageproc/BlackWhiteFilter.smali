.class public Landroid/filterpacks/imageproc/BlackWhiteFilter;
.super Landroid/filterfw/core/Filter;
.source "BlackWhiteFilter.java"


# instance fields
.field private mBlack:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "black"
    .end annotation
.end field

.field private final mBlackWhiteShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseFrame:Landroid/filterfw/core/Frame;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWhite:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "white"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    iput v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlackWhiteShader:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private updateParameters()V
    .locals 5

    iget v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f80

    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    sub-float/2addr v3, v4

    div-float v0, v2, v3

    :goto_0
    const v1, 0x3b808081

    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "black"

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "scale"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "stepsize"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

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

    const-string v3, "Filter Sharpen does not support frames of target "

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

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    iput p2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10

    const/4 v9, 0x3

    const-string v7, "image"

    invoke-virtual {p0, v7}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    if-eq v7, v8, :cond_1

    :cond_0
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    if-eq v7, v8, :cond_5

    :cond_2
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iput v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iput v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_3
    iget v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    mul-int/2addr v7, v8

    new-array v0, v7, [I

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    mul-int/2addr v7, v8

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    invoke-static {v7, v8, v9, v9}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    :cond_5
    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWidth:I

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mHeight:I

    if-eq v7, v8, :cond_7

    :cond_6
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Random map and imput image size mismatch!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    const/4 v7, 0x2

    new-array v5, v7, [Landroid/filterfw/core/Frame;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    aput-object v8, v5, v7

    iget-object v7, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v5, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v7, "image"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method
