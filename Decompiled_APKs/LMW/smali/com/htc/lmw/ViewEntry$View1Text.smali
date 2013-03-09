.class public Lcom/htc/lmw/ViewEntry$View1Text;
.super Lcom/htc/lmw/ViewEntry;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View1Text"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "enabled"

    .prologue
    .line 113
    const v0, 0x7f030005

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/lmw/ViewEntry;-><init>(Landroid/content/Context;III)V

    .line 114
    iput-boolean p4, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    .line 115
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/htc/lmw/ViewEntry;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, view:Landroid/view/View;
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 121
    .local v1, viewItem:Lcom/htc/widget/HtcListItem2LineText;
    iget v2, p0, Lcom/htc/lmw/ViewEntry;->primaryText:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 122
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 123
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry;->enabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setClickable(Z)V

    .line 124
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 126
    return-object v0

    .line 123
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
