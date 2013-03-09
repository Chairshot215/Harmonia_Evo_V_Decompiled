.class public Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;
.super Ljava/lang/Object;
.source "FxDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndDragStyle"
.end annotation


# static fields
.field public static AUTO:I

.field public static DEFAULT:I

.field public static MANUAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;->AUTO:I

    const/4 v0, 0x2

    sput v0, Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;->MANUAL:I

    sget v0, Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;->AUTO:I

    sput v0, Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;->DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
