.class Lcom/htc/painting/engine/ViewPort$IdentityViewPort;
.super Lcom/htc/painting/engine/ViewPort;
.source "ViewPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/ViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityViewPort"
.end annotation


# static fields
.field private static final m:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    .line 149
    sget-object v0, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 150
    return-void
.end method


# virtual methods
.method public getOffsetX()F
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 175
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 180
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method
