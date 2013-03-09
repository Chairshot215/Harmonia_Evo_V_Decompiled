.class public Lcom/htc/launcher/AddWallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddWallpaperAdapter.java"


# instance fields
.field protected MatchApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field mIsPickLockScreenWallpaper:Z

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

.field mPkgMgr:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "IsPickLockScreenWallpaper"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconRes:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->MatchApps:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIsPickLockScreenWallpaper:Z

    .line 57
    iput-object p1, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean p2, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIsPickLockScreenWallpaper:Z

    .line 59
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-direct {p0}, Lcom/htc/launcher/AddWallpaperAdapter;->LoadListeItemResource()V

    .line 64
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconWidth:I

    .line 65
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconHeight:I

    .line 66
    return-void
.end method

.method private LoadListeItemResource()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 70
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, pickWallpaper:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Lcom/htc/launcher/AddWallpaperAdapter$1;

    invoke-direct {v5, p0}, Lcom/htc/launcher/AddWallpaperAdapter$1;-><init>(Lcom/htc/launcher/AddWallpaperAdapter;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x4000

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    .line 83
    .local v4, sense20:Z
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 85
    .local v1, filename:Ljava/lang/String;
    const-string v5, "AddWallpaperAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sense="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,filename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v4, :cond_2

    const-string v5, "com.android.wallpaper.livepicker"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/htc/launcher/config/DeviceFlag;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.android.launcher"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    :cond_3
    iget-boolean v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIsPickLockScreenWallpaper:Z

    if-eqz v5, :cond_5

    .line 93
    const-string v5, "com.htc.home.personalize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.htc.album"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    :cond_4
    iget-object v6, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconRes:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v6, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->MatchApps:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_5
    iget-object v6, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconRes:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v5, p0, Lcom/htc/launcher/AddWallpaperAdapter;->MatchApps:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 112
    .end local v1           #filename:Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public GetMatchResolveInfo(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->MatchApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 123
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

    .line 127
    if-nez p2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090007

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mContext:Landroid/content/Context;

    const-string v4, "rosie_list_selector"

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, listSelectorID:I
    if-eqz v0, :cond_0

    .line 132
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setSelector(I)V

    .end local v0           #listSelectorID:I
    :cond_0
    move-object v1, p2

    .line 136
    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconRes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 139
    .local v2, tmpIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 140
    iget v3, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconWidth:I

    iget v4, p0, Lcom/htc/launcher/AddWallpaperAdapter;->mIconHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_1
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 144
    return-object p2
.end method
