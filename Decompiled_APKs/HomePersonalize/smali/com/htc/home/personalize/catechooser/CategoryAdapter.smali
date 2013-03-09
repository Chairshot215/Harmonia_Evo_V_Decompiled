.class public Lcom/htc/home/personalize/catechooser/CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# static fields
.field private static final mOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 35
    sget-object v0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 36
    sget-object v0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, categories:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->list:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/home/personalize/storedatamanager/Category;
    .locals 1
    .parameter "pos"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/Category;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->getItem(I)Lcom/htc/home/personalize/storedatamanager/Category;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "pos"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    const v4, 0x7f0b0001

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 63
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->getItem(I)Lcom/htc/home/personalize/storedatamanager/Category;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/home/personalize/storedatamanager/Category;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 64
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 66
    const/high16 v4, 0x7f0b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 68
    .local v0, icon:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->getItem(I)Lcom/htc/home/personalize/storedatamanager/Category;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/storedatamanager/Category;->generateIconImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, iconPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    sget-object v4, Lcom/htc/home/personalize/catechooser/CategoryAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    :goto_0
    return-object p2

    .line 74
    :cond_1
    const v4, 0x7f020006

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0
.end method
