.class public Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
.super Ljava/lang/Object;
.source "FxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field private mRect:Landroid/graphics/Rect;

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    .line 1224
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    .line 1225
    iput p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    .line 1226
    iput p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    .line 1227
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    .line 1228
    return-void
.end method


# virtual methods
.method asRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method move(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1235
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    .line 1236
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    .line 1237
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1238
    return-void
.end method

.method resize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1241
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    .line 1242
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    .line 1243
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1244
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item layout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
