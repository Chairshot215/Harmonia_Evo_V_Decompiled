.class public Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "WidgetAdapter.java"


# static fields
.field private static final IMAGE_ID:I = 0x7f869


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->widgets:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->activity:Landroid/app/Activity;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f869

    const/4 v4, -0x2

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, layout:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_0

    .line 61
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, image:Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 71
    new-instance v1, Landroid/widget/RelativeLayout;

    .end local v1           #layout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v1       #layout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    const v5, 0x7f07001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f07001d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .restart local v0       #image:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->widgets:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getPreviewImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-object v1

    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    move-object v1, p2

    .line 79
    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->widgets:Ljava/util/List;

    return-object v0
.end method
