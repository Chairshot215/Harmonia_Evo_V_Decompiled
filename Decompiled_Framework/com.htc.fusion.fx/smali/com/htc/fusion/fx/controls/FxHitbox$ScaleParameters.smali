.class public Lcom/htc/fusion/fx/controls/FxHitbox$ScaleParameters;
.super Ljava/lang/Object;
.source "FxHitbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxHitbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleParameters"
.end annotation


# instance fields
.field public control:Lcom/htc/fusion/fx/FxControl;

.field public currentPosition1:Landroid/graphics/PointF;

.field public currentPosition2:Landroid/graphics/PointF;

.field public duration:I

.field public scale:F

.field public startPosition1:Landroid/graphics/PointF;

.field public startPosition2:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
