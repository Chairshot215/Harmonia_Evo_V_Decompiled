.class public Landroid/filterpacks/imageproc/GrainFilter;
.super Landroid/filterfw/core/Filter;
.source "GrainFilter.java"


# static fields
.field private static final RAND_THRESHOLD:I = 0x80


# instance fields
.field private final mGrainShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseFrame:Landroid/filterfw/core/Frame;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
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

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainShader:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4

    const/high16 v3, 0x3f00

    iput p1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepX"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepY"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "scale"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

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

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12

    const/16 v11, 0x100

    const/4 v10, 0x3

    const/4 v8, 0x0

    const-string v7, "image"

    invoke-virtual {p0, v7}, Landroid/filterpacks/imageproc/GrainFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    if-eq v7, v9, :cond_1

    :cond_0
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/filterpacks/imageproc/GrainFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    :cond_1
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    if-ne v7, v9, :cond_2

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    if-eq v7, v9, :cond_6

    :cond_2
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v9

    invoke-direct {p0, v7, v9}, Landroid/filterpacks/imageproc/GrainFilter;->updateFrameSize(II)V

    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    mul-int/2addr v7, v9

    new-array v0, v7, [I

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    mul-int/2addr v7, v9

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/16 v9, 0x80

    if-ge v7, v9, :cond_3

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    :goto_1
    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    invoke-static {v7, v9, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    :cond_6
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    if-ne v7, v9, :cond_7

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    if-eq v7, v9, :cond_8

    :cond_7
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Random map and imput image size mismatch!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const/4 v7, 0x2

    new-array v5, v7, [Landroid/filterfw/core/Frame;

    aput-object v3, v5, v8

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    aput-object v8, v5, v7

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v5, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v7, "image"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/imageproc/GrainFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method
