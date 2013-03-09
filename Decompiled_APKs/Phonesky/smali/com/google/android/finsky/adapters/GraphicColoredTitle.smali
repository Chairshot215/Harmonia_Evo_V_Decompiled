.class public Lcom/google/android/finsky/adapters/GraphicColoredTitle;
.super Ljava/lang/Object;
.source "GraphicColoredTitle.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private final mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mHeightInCells:I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mPromoImageWidth:I

.field private final mTileTemplate:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private final mWidthInCells:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;IILcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)V
    .locals 3
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "currentUrl"
    .parameter "width"
    .parameter "height"
    .parameter "tileTemplate"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 91
    iput-object p3, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 92
    iput-object p4, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 93
    iput-object p5, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mCurrentPageUrl:Ljava/lang/String;

    .line 94
    iput p6, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mWidthInCells:I

    .line 95
    iput p7, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mHeightInCells:I

    .line 96
    iget v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mWidthInCells:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mPromoImageWidth:I

    .line 98
    iput-object p8, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mTileTemplate:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 99
    return-void
.end method

.method private bindCorpusStrip(Landroid/view/View;)V
    .locals 3
    .parameter "corpusStrip"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 185
    .local v0, backendHintColor:I
    const v1, -0x3f000001

    and-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 187
    .end local v0           #backendHintColor:I
    :cond_0
    return-void
.end method

.method private bindPromoImageToBackground(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 8
    .parameter "content"
    .parameter "imageView"

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v6, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget v7, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mPromoImageWidth:I

    invoke-static {v6, v7, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, imageUrl:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050002

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 159
    .local v2, fadeInAnimation:Landroid/view/animation/Animation;
    new-instance v3, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;

    invoke-direct {v3, p0, p2, p1, v2}, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;-><init>(Lcom/google/android/finsky/adapters/GraphicColoredTitle;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 172
    .local v3, handler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    iget-object v6, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v3}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    .line 173
    .local v1, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    if-nez v0, :cond_0

    const/4 v5, 0x4

    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v2           #fadeInAnimation:Landroid/view/animation/Animation;
    .end local v3           #handler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    :cond_1
    return-void
.end method

.method private bindTitleOverlay(Lcom/google/android/finsky/layout/CellTitleOverlay;)V
    .locals 2
    .parameter "titleOverlay"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mTileTemplate:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorTextArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setTextColor(I)V

    .line 148
    const v0, -0x2f000001

    iget-object v1, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mTileTemplate:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setBackgroundColor(I)V

    .line 150
    return-void
.end method

.method public static create2x1(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;
    .locals 9
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "currentUrl"

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;IILcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)V

    return-object v0
.end method

.method public static create4x2(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;
    .locals 9
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "currentUrl"

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;IILcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)V

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .locals 5
    .parameter "group"
    .parameter "showCorpusStrip"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;)V

    .line 125
    .local v0, holder:Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;
    const v1, 0x7f080154

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->cellContent:Landroid/view/View;

    .line 126
    const v1, 0x7f080155

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 127
    const v1, 0x7f080017

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/CellTitleOverlay;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->titleOverlay:Lcom/google/android/finsky/layout/CellTitleOverlay;

    .line 128
    const v1, 0x7f080018

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 129
    const v1, 0x7f08008a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->corpusStrip:Landroid/view/View;

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 132
    .end local v0           #holder:Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;

    .line 133
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->cellContent:Landroid/view/View;

    iget-object v2, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->bindPromoImageToBackground(Landroid/view/View;Landroid/widget/ImageView;)V

    .line 134
    iget-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->titleOverlay:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->bindTitleOverlay(Lcom/google/android/finsky/layout/CellTitleOverlay;)V

    .line 136
    if-eqz p2, :cond_1

    .line 137
    iget-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->corpusStrip:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->bindCorpusStrip(Landroid/view/View;)V

    .line 140
    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, v0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mHeightInCells:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->mWidthInCells:I

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_COLORED_TITLE_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f040089

    return v0
.end method
