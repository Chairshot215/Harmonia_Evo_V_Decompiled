.class public Lcom/htc/launcher/AddWallpaperDialogAdapter;
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
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    invoke-direct {p0}, Lcom/htc/launcher/AddWallpaperDialogAdapter;->LoadListeItemResource()V

    .line 52
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconWidth:I

    .line 53
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconHeight:I

    .line 54
    return-void
.end method

.method private LoadListeItemResource()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, str:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    if-nez v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    if-nez p2, :cond_0

    .line 83
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090007

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mContext:Landroid/content/Context;

    const-string v4, "rosie_list_selector"

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, listSelectorID:I
    if-eqz v0, :cond_0

    .line 86
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setSelector(I)V

    .end local v0           #listSelectorID:I
    :cond_0
    move-object v1, p2

    .line 89
    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconRes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 92
    .local v2, tmpIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 93
    iget v3, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconWidth:I

    iget v4, p0, Lcom/htc/launcher/AddWallpaperDialogAdapter;->mIconHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 97
    return-object p2
.end method
