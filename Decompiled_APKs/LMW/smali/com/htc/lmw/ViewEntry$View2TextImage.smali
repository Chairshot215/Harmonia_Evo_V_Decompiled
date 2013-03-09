.class public Lcom/htc/lmw/ViewEntry$View2TextImage;
.super Lcom/htc/lmw/ViewEntry$View2TextBase;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View2TextImage"
.end annotation


# instance fields
.field private imageId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryTextId"
    .parameter "imageId"

    .prologue
    .line 135
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextImage;-><init>(Landroid/content/Context;IIIIZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryTextId"
    .parameter "imageId"
    .parameter "enabled"

    .prologue
    .line 139
    const v2, 0x7f030007

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIIIZ)V

    .line 140
    iput p5, p0, Lcom/htc/lmw/ViewEntry$View2TextImage;->imageId:I

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"
    .parameter "imageId"

    .prologue
    .line 144
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextImage;-><init>(Landroid/content/Context;IILjava/lang/String;IZ)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;IZ)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"
    .parameter "imageId"
    .parameter "enabled"

    .prologue
    .line 148
    const v2, 0x7f030007

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 149
    iput p5, p0, Lcom/htc/lmw/ViewEntry$View2TextImage;->imageId:I

    .line 150
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/htc/lmw/ViewEntry$View2TextBase;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, view:Landroid/view/View;
    const v2, 0x202001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, v1:Landroid/view/View;
    iget v2, p0, Lcom/htc/lmw/ViewEntry$View2TextImage;->imageId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 158
    return-object v1

    .line 157
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
