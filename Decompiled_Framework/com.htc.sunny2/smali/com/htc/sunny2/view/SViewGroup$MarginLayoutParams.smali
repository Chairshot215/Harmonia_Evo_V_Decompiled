.class public Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;
.super Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
.source "SViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# instance fields
.field public bottomMargin:I

.field public leftMargin:I

.field public rightMargin:I

.field public topMargin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>()V

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public setMargins(IIII)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
