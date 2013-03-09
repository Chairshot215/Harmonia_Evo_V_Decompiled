.class final Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StyleChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mPreviewManager:Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, this:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;,"Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 844
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mContext:Landroid/content/Context;

    .line 846
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mPreviewManager:Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;

    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->pm:Landroid/content/pm/PackageManager;

    .line 848
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;,"Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter<TT;>;"
    const v9, 0x7f869

    const/4 v6, -0x2

    .line 853
    const/4 v2, 0x0

    .line 854
    .local v2, layout:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_0

    .line 855
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 858
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 860
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 861
    .local v1, image:Landroid/widget/ImageView;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 862
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 865
    new-instance v2, Landroid/widget/RelativeLayout;

    .end local v2           #layout:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 866
    .restart local v2       #layout:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 867
    .local v4, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    const v7, 0x7f07001c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07001d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 876
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 877
    .local v5, s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 879
    .restart local v1       #image:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->mPreviewManager:Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;

    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v5}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->getPreviewDrawable(JLcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 880
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    return-object v2

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v5           #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :cond_0
    move-object v2, p2

    .line 873
    check-cast v2, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method
