.class public Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;
.super Ljava/lang/Object;
.source "FxHitbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxHitbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwipeParameters"
.end annotation


# instance fields
.field public control:Lcom/htc/fusion/fx/FxControl;

.field public duration:I

.field public endPosition:Landroid/graphics/PointF;

.field public startPosition:Landroid/graphics/PointF;

.field public velocity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
