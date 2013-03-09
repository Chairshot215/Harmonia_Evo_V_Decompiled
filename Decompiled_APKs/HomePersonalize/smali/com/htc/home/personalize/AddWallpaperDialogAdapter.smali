.class public Lcom/htc/home/personalize/AddWallpaperDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddWallpaperDialogAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconHeight:I

.field private mIconRes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconWidth:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    invoke-direct {p0}, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->LoadListeItemResource()V

    .line 54
    iget-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconWidth:I

    .line 55
    iget-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconHeight:I

    .line 56
    return-void
.end method

.method private LoadListeItemResource()V
    .locals 5

    .prologue
    .line 59
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, str:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    if-nez v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    :cond_0
    const v2, 0x7f0b0001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 89
    .local v1, text:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 90
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 92
    const/high16 v2, 0x7f0b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 93
    .local v0, icon:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v2, p0, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-object p2
.end method
