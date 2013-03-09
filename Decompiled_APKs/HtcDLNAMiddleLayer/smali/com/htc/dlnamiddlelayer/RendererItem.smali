.class public Lcom/htc/dlnamiddlelayer/RendererItem;
.super Ljava/lang/Object;
.source "RendererItem.java"


# instance fields
.field private mUPnPRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field private nSupportedFilterType:I

.field private nThumbIconType:I

.field private sThumbIconPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 2
    .parameter "aUPnPRenderer"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->mUPnPRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 16
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->sThumbIconPath:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nSupportedFilterType:I

    .line 18
    iput v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nThumbIconType:I

    .line 22
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->mUPnPRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 23
    return-void
.end method


# virtual methods
.method public addSupportedFilterType(I)V
    .locals 1
    .parameter "nFilterType"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nSupportedFilterType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nSupportedFilterType:I

    .line 43
    return-void
.end method

.method public getSupportedFilterType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nSupportedFilterType:I

    return v0
.end method

.method public getThumbIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->sThumbIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbIconType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nThumbIconType:I

    return v0
.end method

.method public getUPnPRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->mUPnPRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    return-object v0
.end method

.method public setThumbIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sPath"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->sThumbIconPath:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setThumbIconType(I)V
    .locals 0
    .parameter "iconType"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/dlnamiddlelayer/RendererItem;->nThumbIconType:I

    .line 53
    return-void
.end method
