.class public Lcom/htc/lmw/ViewEntry$View2TextBase;
.super Lcom/htc/lmw/ViewEntry;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View2TextBase"
.end annotation


# instance fields
.field protected secondaryText:Ljava/lang/String;

.field protected secondaryTextId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 7
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryTextId"

    .prologue
    .line 56
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIIIZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 6
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryTextId"
    .parameter "enabled"

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry;-><init>(Landroid/content/Context;IIIZ)V

    .line 61
    iput p5, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryTextId:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"

    .prologue
    .line 65
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "layoutId"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"
    .parameter "enabled"

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry;-><init>(Landroid/content/Context;IIIZ)V

    .line 70
    iput-object p5, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryText:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/htc/lmw/ViewEntry;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, view:Landroid/view/View;
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 78
    .local v1, viewItem:Lcom/htc/widget/HtcListItem2LineText;
    iget v2, p0, Lcom/htc/lmw/ViewEntry;->primaryText:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 79
    iget-object v2, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 85
    return-object v0

    .line 82
    :cond_0
    iget v2, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryTextId:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "secondaryText"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/lmw/ViewEntry$View2TextBase;->secondaryText:Ljava/lang/String;

    .line 53
    return-void
.end method
