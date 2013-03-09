.class public Lcom/htc/launcher/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1763
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 1764
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1783
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1773
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1793
    iget v0, p0, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1803
    iget v0, p0, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1778
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1779
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1768
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1769
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1788
    iput p1, p0, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    .line 1789
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1798
    iput p1, p0, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    .line 1799
    return-void
.end method
