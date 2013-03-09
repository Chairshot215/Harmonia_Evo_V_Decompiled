.class public Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;
.super Ljava/lang/Object;
.source "Graphic2x1TitleTopLeft.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;,
        Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContainerDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 0
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "doc"
    .parameter "currentPageUrl"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 48
    iput-object p2, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 49
    iput-object p3, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    .line 50
    iput-object p4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mCurrentPageUrl:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .locals 9
    .parameter "group"
    .parameter "showCorpusStrip"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 71
    new-instance v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;)V

    .line 72
    .local v1, holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    const v3, 0x7f080155

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Lcom/google/android/finsky/layout/DocImageView;

    .line 73
    const v3, 0x7f080022

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f080018

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v1           #holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    .line 80
    .restart local v1       #holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    iget-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Lcom/google/android/finsky/layout/DocImageView;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    .line 83
    iget-object v3, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v2

    .line 84
    .local v2, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorTextArgb()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, color:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .end local v0           #color:Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0400d3

    return v0
.end method
