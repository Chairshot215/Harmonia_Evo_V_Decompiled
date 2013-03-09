.class public Lcom/jme3/renderer/RenderContext;
.super Ljava/lang/Object;
.source "RenderContext.java"


# instance fields
.field public alphaTestEnabled:Z

.field public ambient:Lcom/jme3/math/ColorRGBA;

.field public attribIndexList:Lcom/jme3/renderer/IDList;

.field public backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field public backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public blendMode:Lcom/jme3/material/RenderState$BlendMode;

.field public boundArrayVBO:I

.field public boundAttribs:[Lcom/jme3/scene/VertexBuffer;

.field public boundDrawBuf:I

.field public boundElementArrayVBO:I

.field public boundFBO:I

.field public boundRB:I

.field public boundReadBuf:I

.field public boundShaderProgram:I

.field public boundTextureUnit:I

.field public boundTextures:[Lcom/jme3/texture/Image;

.field public boundVertexArray:I

.field public clipRectEnabled:Z

.field public color:Lcom/jme3/math/ColorRGBA;

.field public colorWriteEnabled:Z

.field public cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

.field public depthTestEnabled:Z

.field public depthWriteEnabled:Z

.field public diffuse:Lcom/jme3/math/ColorRGBA;

.field public frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field public frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public lineWidth:F

.field public matrixMode:I

.field public normalizeEnabled:Z

.field public numTexturesSet:I

.field public pointSize:F

.field public pointSprite:Z

.field public polyOffsetEnabled:Z

.field public polyOffsetFactor:F

.field public polyOffsetUnits:F

.field public shininess:F

.field public specular:Lcom/jme3/math/ColorRGBA;

.field public stencilTest:Z

.field public textureIndexList:Lcom/jme3/renderer/IDList;

.field public useVertexColor:Z

.field public wireframe:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 56
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    .line 61
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    .line 66
    iput-boolean v5, p0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    .line 71
    iput-boolean v5, p0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    .line 76
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    .line 86
    iput v3, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    .line 91
    iput v3, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    .line 98
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->normalizeEnabled:Z

    .line 106
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->matrixMode:I

    .line 111
    iput v4, p0, Lcom/jme3/renderer/RenderContext;->pointSize:F

    .line 116
    iput v4, p0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    .line 121
    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 126
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    .line 131
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->pointSprite:Z

    .line 141
    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    .line 148
    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundRB:I

    .line 161
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundDrawBuf:I

    .line 170
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundReadBuf:I

    .line 191
    iput v1, p0, Lcom/jme3/renderer/RenderContext;->numTexturesSet:I

    .line 198
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/jme3/texture/Image;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    .line 205
    new-instance v0, Lcom/jme3/renderer/IDList;

    invoke-direct {v0}, Lcom/jme3/renderer/IDList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    .line 212
    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    .line 217
    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->stencilTest:Z

    .line 218
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 219
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 220
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 221
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 222
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 223
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 224
    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 225
    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 231
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/jme3/scene/VertexBuffer;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    .line 236
    new-instance v0, Lcom/jme3/renderer/IDList;

    invoke-direct {v0}, Lcom/jme3/renderer/IDList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 273
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    .line 274
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    .line 275
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    .line 276
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    .line 277
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    .line 278
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    .line 279
    iput v3, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    .line 280
    iput v3, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    .line 281
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->normalizeEnabled:Z

    .line 282
    iput v4, p0, Lcom/jme3/renderer/RenderContext;->matrixMode:I

    .line 283
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->pointSize:F

    .line 284
    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 285
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    .line 286
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 287
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    .line 288
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundRB:I

    .line 289
    iput v4, p0, Lcom/jme3/renderer/RenderContext;->boundDrawBuf:I

    .line 290
    iput v4, p0, Lcom/jme3/renderer/RenderContext;->boundReadBuf:I

    .line 291
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    .line 292
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundVertexArray:I

    .line 293
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    .line 294
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->numTexturesSet:I

    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    aput-object v5, v1, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v1}, Lcom/jme3/renderer/IDList;->reset()V

    .line 299
    iput v2, p0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    .line 300
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    aput-object v5, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v1}, Lcom/jme3/renderer/IDList;->reset()V

    .line 305
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->stencilTest:Z

    .line 306
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 307
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 308
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 309
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 310
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 311
    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 312
    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 313
    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 315
    iput-object v5, p0, Lcom/jme3/renderer/RenderContext;->color:Lcom/jme3/math/ColorRGBA;

    iput-object v5, p0, Lcom/jme3/renderer/RenderContext;->specular:Lcom/jme3/math/ColorRGBA;

    iput-object v5, p0, Lcom/jme3/renderer/RenderContext;->diffuse:Lcom/jme3/math/ColorRGBA;

    iput-object v5, p0, Lcom/jme3/renderer/RenderContext;->ambient:Lcom/jme3/math/ColorRGBA;

    .line 316
    iput v3, p0, Lcom/jme3/renderer/RenderContext;->shininess:F

    .line 317
    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->useVertexColor:Z

    .line 318
    return-void
.end method
