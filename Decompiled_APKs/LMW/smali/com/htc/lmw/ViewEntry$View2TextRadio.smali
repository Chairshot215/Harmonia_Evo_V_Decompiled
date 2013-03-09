.class public Lcom/htc/lmw/ViewEntry$View2TextRadio;
.super Lcom/htc/lmw/ViewEntry$View2TextBase;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View2TextRadio"
.end annotation


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryTextId"
    .parameter "checked"

    .prologue
    .line 94
    const v2, 0x7f030008

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIII)V

    .line 95
    iput-boolean p5, p0, Lcom/htc/lmw/ViewEntry$View2TextRadio;->checked:Z

    .line 96
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/htc/lmw/ViewEntry$View2TextBase;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, view:Landroid/view/View;
    const v2, 0x20200fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemRadioButton;

    .line 101
    .local v0, radioButton:Lcom/htc/widget/HtcListItemRadioButton;
    if-eqz v0, :cond_0

    .line 102
    iget-boolean v2, p0, Lcom/htc/lmw/ViewEntry$View2TextRadio;->checked:Z

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemRadioButton;->setClickable(Z)V

    .line 106
    :cond_0
    return-object v1
.end method
