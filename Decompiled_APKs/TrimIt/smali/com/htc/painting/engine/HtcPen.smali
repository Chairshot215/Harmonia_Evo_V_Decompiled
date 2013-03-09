.class public abstract Lcom/htc/painting/engine/HtcPen;
.super Lcom/htc/painting/tool/pen/BasePen;
.source "HtcPen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPen$EraserPen;
    }
.end annotation


# static fields
.field public static final KEY_ALPHA_MINIMUM:Ljava/lang/String; = "_opacity_minimum"

.field public static final KEY_BRUSH_ANGLE_JITTER:Ljava/lang/String; = "_brush_angle_jitter"

.field public static final KEY_BRUSH_OPACITY_JITTER:Ljava/lang/String; = "_brush_opacity_jitter"

.field public static final KEY_BRUSH_PATTERN_RESID:Ljava/lang/String; = "_brush_pattern_resource_id"

.field public static final KEY_BRUSH_SIZE_JITTER:Ljava/lang/String; = "_brush_size_jitter"

.field public static final KEY_BRUSH_SPACING:Ljava/lang/String; = "_brush_spacing"

.field public static final KEY_HAVE_BRUSH_PATTERN:Ljava/lang/String; = "_brush_have_pattern"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "penProps"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/tool/pen/BasePen;-><init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V

    .line 51
    return-void
.end method


# virtual methods
.method public canPrefetchJitterBitmaps()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaMinimum()F
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_opacity_minimum"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAngleJitter()F
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_brush_angle_jitter"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getBushPattern()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, result:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPen;->haveBrushPattern()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v5, "_app_packagename"

    invoke-virtual {v4, v5}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v5, "_brush_pattern_resource_id"

    invoke-virtual {v4, v5}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, resourceId:I
    const/4 v0, 0x0

    .line 65
    .local v0, packageContext:Landroid/content/Context;
    :try_start_0
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPen;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 73
    .end local v0           #packageContext:Landroid/content/Context;
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #resourceId:I
    :goto_1
    return-object v3

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPen;->preparePatternBrush()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 66
    .restart local v0       #packageContext:Landroid/content/Context;
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v2       #resourceId:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getJitterBitmaps(F)Ljava/util/List;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpacityJitter()F
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_brush_opacity_jitter"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getSizeJitter()F
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_brush_size_jitter"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getSpacing()F
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_brush_spacing"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected haveBrushPattern()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_brush_have_pattern"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prefetchJitterBitmaps()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected preparePatternBrush()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
