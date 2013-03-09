.class public Lcom/futuredial/ui/DMIStyle;
.super Ljava/lang/Object;
.source "DMIStyle.java"


# static fields
.field public static c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format_listview(Landroid/widget/ListView;)V
    .locals 3
    .parameter "lv"

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/futuredial/ui/DMIStyle;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    .local v0, x:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 20
    return-void
.end method

.method public static format_listview(Lcom/htc/widget/HtcListView;)V
    .locals 4
    .parameter "lv"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/futuredial/ui/DMIStyle;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, x:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->setHeaderDividersEnabled(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 37
    .end local v0           #x:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    goto :goto_0
.end method
