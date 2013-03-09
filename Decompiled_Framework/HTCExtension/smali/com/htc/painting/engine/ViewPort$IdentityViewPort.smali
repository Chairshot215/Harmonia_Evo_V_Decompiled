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

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    sget-object v0, Lcom/htc/painting/engine/ViewPort$IdentityViewPort;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method


# virtual methods
.method public getOffsetX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaleY()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
