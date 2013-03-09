.class public Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;
.super Ljava/lang/Object;
.source "FxHitbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxHitbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveEventParameters"
.end annotation


# instance fields
.field public control:Lcom/htc/fusion/fx/FxControl;

.field public hitbox_position:Landroid/graphics/PointF;

.field public inNode:Z

.field public signaledGestures:I

.field public stroke:Lcom/htc/fusion/fx/Stroke;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
