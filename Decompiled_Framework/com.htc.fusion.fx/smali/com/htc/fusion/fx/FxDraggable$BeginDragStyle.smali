.class public Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;
.super Ljava/lang/Object;
.source "FxDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BeginDragStyle"
.end annotation


# static fields
.field public static DEFAULT:I

.field public static LONG_PRESS:I

.field public static MANUAL:I

.field public static PRESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->PRESS:I

    const/4 v0, 0x2

    sput v0, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->LONG_PRESS:I

    const/4 v0, 0x3

    sput v0, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->MANUAL:I

    sget v0, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->PRESS:I

    sput v0, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
