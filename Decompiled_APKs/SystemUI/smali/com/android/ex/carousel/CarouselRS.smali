.class public Lcom/android/ex/carousel/CarouselRS;
.super Ljava/lang/Object;
.source "CarouselRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    }
.end annotation


# static fields
.field public static final CMD_ANIMATION_FINISHED:I = 0x1f4

.field public static final CMD_ANIMATION_STARTED:I = 0x190

.field public static final CMD_CARD_LONGPRESS:I = 0x6e

.field public static final CMD_CARD_SELECTED:I = 0x64

.field public static final CMD_DETAIL_SELECTED:I = 0x69

.field public static final CMD_INVALIDATE_DETAIL_TEXTURE:I = 0x262

.field public static final CMD_INVALIDATE_GEOMETRY:I = 0x136

.field public static final CMD_INVALIDATE_TEXTURE:I = 0xd2

.field public static final CMD_PING:I = 0x3e8

.field public static final CMD_REQUEST_DETAIL_TEXTURE:I = 0x258

.field public static final CMD_REQUEST_GEOMETRY:I = 0x12c

.field public static final CMD_REQUEST_TEXTURE:I = 0xc8

.field private static final DBG:Z = false

.field private static final DEFAULT_CARD_COUNT:I = 0x0

.field private static final DEFAULT_ROW_COUNT:I = 0x1

.field private static final DEFAULT_SLOT_COUNT:I = 0xa

.field private static final DEFAULT_VISIBLE_SLOTS:I = 0x1

.field public static final DRAG_MODEL_CYLINDER_INSIDE:I = 0x2

.field public static final DRAG_MODEL_CYLINDER_OUTSIDE:I = 0x3

.field public static final DRAG_MODEL_PLANE:I = 0x1

.field public static final DRAG_MODEL_SCREEN_DELTA:I = 0x0

.field public static final FILL_DIRECTION_CCW:I = 0x1

.field public static final FILL_DIRECTION_CW:I = -0x1

.field private static final MIPMAP:Landroid/renderscript/Allocation$MipmapControl; = null

.field private static final TAG:Ljava/lang/String; = "CarouselRS"

.field private static final mMultiTextureBlendingShader:Ljava/lang/String;

.field private static final mMultiTextureShader:Ljava/lang/String;

.field private static final mSingleTextureBlendingShader:Ljava/lang/String;

.field private static final mSingleTextureShader:Ljava/lang/String;


# instance fields
.field private mAllocationPool:[Landroid/renderscript/Allocation;

.field private mAtPoint:[F

.field private mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

.field private mCards:Lcom/android/ex/carousel/ScriptField_Card;

.field private mEyePoint:[F

.field private mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

.field private mForceBlendCardsWithZ:Z

.field private mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mPrefetchCardCount:I

.field private mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRasterProgram:Landroid/renderscript/ProgramRaster;

.field private mRes:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

.field private mScript:Lcom/android/ex/carousel/ScriptC_carousel;

.field private mSingleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mSingleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mUp:[F

.field private mVertexProgram:Landroid/renderscript/ProgramVertex;

.field private mVisibleSlots:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    sput-object v0, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);gl_FragColor = col; }"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureShader:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);gl_FragColor = col * UNI_overallAlpha; }"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingShader:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);vec4 col2 = texture2D(UNI_Tex1, t0);gl_FragColor = mix(col, col2, UNI_fadeAmount);}"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureShader:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "varying vec2 varTex0;void main() {vec2 t0 = varTex0.xy;vec4 col = texture2D(UNI_Tex0, t0);vec4 col2 = texture2D(UNI_Tex1, t0);gl_FragColor = mix(col, col2, UNI_fadeAmount) * UNI_overallAlpha;}"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mEyePoint:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mAtPoint:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mUp:[F

    new-instance v0, Lcom/android/ex/carousel/CarouselRS$1;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/CarouselRS$1;-><init>(Lcom/android/ex/carousel/CarouselRS;)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iput-object p2, p0, Lcom/android/ex/carousel/CarouselRS;->mRes:Landroid/content/res/Resources;

    new-instance v0, Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/ex/carousel/ScriptC_carousel;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initProgramStore()V

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initFragmentProgram()V

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initRasterProgram()V

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initVertexProgram()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselRS;->setSlotCount(I)V

    invoke-virtual {p0, v4}, Lcom/android/ex/carousel/CarouselRS;->setVisibleSlots(I)V

    invoke-virtual {p0, v4}, Lcom/android/ex/carousel/CarouselRS;->setRowCount(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselRS;->createCards(I)V

    invoke-virtual {p0, v3}, Lcom/android/ex/carousel/CarouselRS;->setStartAngle(F)V

    invoke-virtual {p0, v3}, Lcom/android/ex/carousel/CarouselRS;->setCarouselRotationAngle(F)V

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselRS;->setRadius(F)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mEyePoint:[F

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mAtPoint:[F

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mUp:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/carousel/CarouselRS;->setLookAt([F[F[F)V

    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselRS;->setRadius(F)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    return-object v0
.end method

.method private allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v2, 0x2

    invoke-static {v1, p1, p2, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method

.method private allocationFromPool(ILandroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;
    .locals 7

    iget v5, p0, Lcom/android/ex/carousel/CarouselRS;->mVisibleSlots:I

    iget v6, p0, Lcom/android/ex/carousel/CarouselRS;->mPrefetchCardCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/ex/carousel/CarouselRS;->mRowCount:I

    mul-int v1, v5, v6

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    array-length v5, v5

    if-eq v5, v1, :cond_3

    :cond_0
    new-array v4, v1, [Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    array-length v3, v5

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    :cond_3
    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    rem-int v6, p1, v1

    aget-object v0, v5, v6

    if-nez v0, :cond_5

    invoke-direct {p0, p2, p3}, Lcom/android/ex/carousel/CarouselRS;->allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    rem-int v6, p1, v1

    aput-object v0, v5, v6

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    const-string v5, "CarouselRS"

    const-string v6, "Warning, bitmap has different size. Taking slow path"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/android/ex/carousel/CarouselRS;->allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mAllocationPool:[Landroid/renderscript/Allocation;

    rem-int v6, p1, v1

    aput-object v0, v5, v6

    goto :goto_2
.end method

.method private elementForBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/renderscript/Element;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    invoke-virtual {v2, p1}, Lcom/android/ex/carousel/ScriptField_Card;->get(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOrCreateCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v0}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    :cond_0
    return-object v0
.end method

.method private initFragmentProgram()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureShader:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v2, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v2}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v4, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v5, v7}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->bind_shaderConstants(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;)V

    new-instance v3, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingShader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v4}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v3}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v4}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    new-instance v1, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingShader:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v4}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mFSConst:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->set_linearClamp(Landroid/renderscript/Sampler;)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->set_singleTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mSingleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->set_singleTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->set_multiTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v5, p0, Lcom/android/ex/carousel/CarouselRS;->mMultiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v4, v5}, Lcom/android/ex/carousel/ScriptC_carousel;->set_multiTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V

    return-void
.end method

.method private initProgramStore()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/ex/carousel/CarouselRS;->resizeProgramStoresCard(I)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/ex/carousel/CarouselRS;->mForceBlendCardsWithZ:Z

    if-eqz v2, :cond_0

    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    :goto_0
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    new-instance v3, Landroid/renderscript/ProgramStore$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/ex/carousel/CarouselRS;->mForceBlendCardsWithZ:Z

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/carousel/ScriptC_carousel;->set_programStoreBackground(Landroid/renderscript/ProgramStore;)V

    new-instance v2, Landroid/renderscript/ProgramStore$Builder;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v3, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v4, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/ex/carousel/CarouselRS;->mForceBlendCardsWithZ:Z

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/android/ex/carousel/CarouselRS;->setProgramStoreCard(ILandroid/renderscript/ProgramStore;)V

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    new-instance v3, Landroid/renderscript/ProgramStore$Builder;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v4, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    sget-object v4, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/carousel/ScriptC_carousel;->set_programStoreDetail(Landroid/renderscript/ProgramStore;)V

    return-void

    :cond_0
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    goto :goto_0
.end method

.method private initRasterProgram()V
    .locals 3

    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRasterProgram:Landroid/renderscript/ProgramRaster;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mRasterProgram:Landroid/renderscript/ProgramRaster;

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/ScriptC_carousel;->set_rasterProgram(Landroid/renderscript/ProgramRaster;)V

    return-void
.end method

.method private initVertexProgram()V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-virtual {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mVertexProgram:Landroid/renderscript/ProgramVertex;

    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mVertexProgram:Landroid/renderscript/ProgramVertex;

    check-cast v3, Landroid/renderscript/ProgramVertexFixedFunction;

    invoke-virtual {v3, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, v4, v4}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mVertexProgram:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v3, v4}, Lcom/android/ex/carousel/ScriptC_carousel;->set_vertexProgram(Landroid/renderscript/ProgramVertex;)V

    return-void
.end method

.method private matrixFromFloat([F)Landroid/renderscript/Matrix4f;
    .locals 6

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    mul-int v4, v1, v0

    add-int/2addr v4, v2

    aget v4, p1, v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    array-length v4, p1

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    array-length v4, p1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "matrix length not 0,9 or 16"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method private resizeProgramStoresCard(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    if-eqz v1, :cond_0

    :cond_0
    new-instance v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    if-lez p1, :cond_1

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/ScriptC_carousel;->bind_programStoresCard(Lcom/android/ex/carousel/ScriptField_ProgramStore_s;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/ex/carousel/ScriptField_Card;->set(Lcom/android/ex/carousel/ScriptField_Card$Item;IZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarouselRS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Texture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgramStoreCard(ILandroid/renderscript/ProgramStore;)V
    .locals 3

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->get(I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    invoke-direct {v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;-><init>()V

    :cond_0
    iput-object p2, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mProgramStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->set(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;IZ)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, p1, p2}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setProgramStoresCard(ILandroid/renderscript/ProgramStore;)V

    return-void
.end method


# virtual methods
.method public createCards(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    invoke-virtual {v1}, Lcom/android/ex/carousel/ScriptField_Card;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/ScriptField_Card;->resize(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_createCards(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    if-lez p1, :cond_1

    move v1, p1

    :goto_1
    invoke-direct {v2, v3, v1}, Lcom/android/ex/carousel/ScriptField_Card;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mCards:Lcom/android/ex/carousel/ScriptField_Card;

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/ScriptC_carousel;->bind_cards(Lcom/android/ex/carousel/ScriptField_Card;)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_createCards(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public doLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_doLongPress()V

    return-void
.end method

.method public doMotion(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_doMotion(FFJ)V

    return-void
.end method

.method public doStart(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_doStart(FFJ)V

    return-void
.end method

.method public doStop(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_doStop(FFJ)V

    return-void
.end method

.method invalidateDetailTexture(IZ)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, p1, p2}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_invalidateDetailTexture(IZ)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method invalidateTexture(IZ)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, p1, p2}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_invalidateTexture(IZ)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadGeometry(I)Landroid/renderscript/Mesh;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselRS;->mRes:Landroid/content/res/Resources;

    invoke-static {v3, v4, p1}, Landroid/renderscript/FileA3D;->createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/renderscript/FileA3D;->getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/FileA3D$IndexEntry;->getEntryType()Landroid/renderscript/FileA3D$EntryType;

    move-result-object v3

    sget-object v4, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Mesh;

    goto :goto_0
.end method

.method public pauseRendering()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    return-void
.end method

.method public resumeRendering()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    return-void
.end method

.method public setBackgroundColor(Landroid/renderscript/Float4;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_backgroundColor(Landroid/renderscript/Float4;)V

    return-void
.end method

.method public setBackgroundTexture(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->set_backgroundTexture(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    return-void
.end method

.method public setCardCreationFadeDuration(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_cardCreationFadeDuration(I)V

    return-void
.end method

.method public setCardRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_cardRotation(F)V

    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_cardsFaceTangent(Z)V

    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setCarouselRotationAngle(F)V

    return-void
.end method

.method public setCarouselRotationAngle(FIIF)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setCarouselRotationAngle2(FIIF)V

    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    sget-object v1, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, v1}, Lcom/android/ex/carousel/CarouselRS;->allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_defaultTexture(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public setDefaultCardMatrix([F)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->matrixFromFloat([F)Landroid/renderscript/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_defaultCardMatrix(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public setDefaultGeometry(Landroid/renderscript/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_defaultGeometry(Landroid/renderscript/Mesh;)V

    return-void
.end method

.method public setDetailLineTexture(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->set_detailLineTexture(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public setDetailLoadingTexture(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->set_detailLoadingTexture(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V
    .locals 11

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getOrCreateCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-eqz p6, :cond_2

    sget-object v1, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/ex/carousel/CarouselRS;->allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v9, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v10, v1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v8, v1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v9}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v7, v9, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setDetailTexture(IFFFFLandroid/renderscript/Allocation;)V

    monitor-exit p0

    return-void

    :cond_2
    iget-object v1, v9, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDetailTextureAlignment(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_detailTextureAlignment(I)V

    return-void
.end method

.method public setDragFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_dragFactor(F)V

    return-void
.end method

.method public setDragModel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_dragModel(I)V

    return-void
.end method

.method public setDrawRuler(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_drawRuler(Z)V

    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_fadeInDuration(I)V

    return-void
.end method

.method public setFillDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_fillDirection(I)V

    return-void
.end method

.method public setFirstCardTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_firstCardTop(Z)V

    return-void
.end method

.method public setForceBlendCardsWithZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselRS;->mForceBlendCardsWithZ:Z

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initProgramStore()V

    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_frictionCoeff(F)V

    return-void
.end method

.method public setGeometry(ILandroid/renderscript/Mesh;)V
    .locals 4

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index cannot be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getOrCreateCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-eqz p2, :cond_2

    iput-object p2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v3, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    invoke-virtual {v2, p1, v3}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setGeometry(ILandroid/renderscript/Mesh;)V

    monitor-exit p0

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    sget-object v1, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, v1}, Lcom/android/ex/carousel/CarouselRS;->allocationFromBitmap(Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_loadingTexture(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public setLoadingGeometry(Landroid/renderscript/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_loadingGeometry(Landroid/renderscript/Mesh;)V

    return-void
.end method

.method public setLookAt([F[F[F)V
    .locals 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mEyePoint:[F

    aget v1, p1, v10

    aput v1, v0, v10

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mAtPoint:[F

    aget v1, p2, v10

    aput v1, v0, v10

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mUp:[F

    aget v1, p3, v10

    aput v1, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    aget v1, p1, v7

    aget v2, p1, v8

    aget v3, p1, v9

    aget v4, p2, v7

    aget v5, p2, v8

    aget v6, p2, v9

    aget v7, p3, v7

    aget v8, p3, v8

    aget v9, p3, v9

    invoke-virtual/range {v0 .. v9}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_lookAt(FFFFFFFFF)V

    return-void
.end method

.method public setMatrix(I[F)V
    .locals 4

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index cannot be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getOrCreateCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/ex/carousel/CarouselRS;->matrixFromFloat([F)Landroid/renderscript/Matrix4f;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v3, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v2, p1, v3}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setMatrix(ILandroid/renderscript/Matrix4f;)V

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setOverscrollSlots(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_overscrollSlots(F)V

    return-void
.end method

.method public setPrefetchCardCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselRS;->mPrefetchCardCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_prefetchCardCount(I)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setRadius(F)V

    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_rezInCardCount(F)V

    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselRS;->mRowCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_rowCount(I)V

    return-void
.end method

.method public setRowSpacing(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_rowSpacing(F)V

    return-void
.end method

.method public setSlotCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_slotCount(I)V

    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_startAngle(F)V

    return-void
.end method

.method public setStoreConfigs([I)V
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselRS;->initProgramStore()V

    :cond_0
    return-void

    :cond_1
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/ex/carousel/CarouselRS;->resizeProgramStoresCard(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_0

    aget v1, p1, v8

    and-int/lit8 v12, v1, 0x1

    if-eqz v12, :cond_2

    move v0, v10

    :goto_1
    and-int/lit8 v12, v1, 0x2

    if-eqz v12, :cond_3

    move v4, v10

    :goto_2
    and-int/lit8 v12, v1, 0x4

    if-eqz v12, :cond_4

    move v5, v10

    :goto_3
    const/4 v6, 0x1

    if-eqz v0, :cond_5

    sget-object v7, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    :goto_4
    if-eqz v4, :cond_6

    sget-object v3, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    :goto_5
    new-instance v12, Landroid/renderscript/ProgramStore$Builder;

    iget-object v13, p0, Lcom/android/ex/carousel/CarouselRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v12, v13}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v13, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-virtual {v12, v13, v7}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/ex/carousel/CarouselRS;->setProgramStoreCard(ILandroid/renderscript/ProgramStore;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v0, v11

    goto :goto_1

    :cond_3
    move v4, v11

    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_3

    :cond_5
    sget-object v7, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    goto :goto_4

    :cond_6
    sget-object v3, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    goto :goto_5
.end method

.method public setSwaySensitivity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_swaySensitivity(F)V

    return-void
.end method

.method public setTexture(ILandroid/graphics/Bitmap;)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselRS;->getOrCreateCard(I)Lcom/android/ex/carousel/ScriptField_Card$Item;

    move-result-object v0

    if-eqz p2, :cond_2

    sget-object v1, Lcom/android/ex/carousel/CarouselRS;->MIPMAP:Landroid/renderscript/Allocation$MipmapControl;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/ex/carousel/CarouselRS;->allocationFromPool(ILandroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setCard(ILcom/android/ex/carousel/ScriptField_Card$Item;)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    iget-object v2, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, v2}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke_setTexture(ILandroid/renderscript/Allocation;)V

    monitor-exit p0

    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVisibleDetails(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_visibleDetailCount(I)V

    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselRS;->mVisibleSlots:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS;->mScript:Lcom/android/ex/carousel/ScriptC_carousel;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->set_visibleSlotCount(I)V

    return-void
.end method
