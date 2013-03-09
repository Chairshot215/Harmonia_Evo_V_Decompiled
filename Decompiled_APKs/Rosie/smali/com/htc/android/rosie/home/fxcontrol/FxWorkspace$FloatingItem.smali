.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FloatingItem;
.super Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingItem"
.end annotation


# direct methods
.method private constructor <init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "fxItem"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 876
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;-><init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    .line 877
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    .line 881
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Landroid/graphics/RectF;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 874
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FloatingItem;-><init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Landroid/graphics/RectF;)V

    return-void
.end method
