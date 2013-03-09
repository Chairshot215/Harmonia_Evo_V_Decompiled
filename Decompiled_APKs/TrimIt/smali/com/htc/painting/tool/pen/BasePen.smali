.class public abstract Lcom/htc/painting/tool/pen/BasePen;
.super Lcom/htc/painting/tool/pen/Pen;
.source "BasePen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "penProps"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/tool/pen/Pen;-><init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V

    .line 14
    return-void
.end method


# virtual methods
.method public canChangeAlpha()Z
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_transparency_adjustable"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canChangeColor()Z
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_color_adjustable"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canChangeSize()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_width_adjustable"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultAlpha()I
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_transparency_alpha_default"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultColor()I
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_color_default"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultWidth()F
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_width_default"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_width_max"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/painting/tool/pen/BasePen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_width_min"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method
