.class public Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveWallpaperListAdapter"

.field public static localLOGV:Z


# instance fields
.field protected mDeletedIndex:[Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResource:I

.field private mLiveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mDeletedIndex:[Z

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    return-void
.end method

.method private setWallpaperImage(ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 8
    .parameter "position"
    .parameter "live_wallpaper"
    .parameter "description"
    .parameter "titleAuthor"
    .parameter "layout"

    .prologue
    const/4 v6, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, thumb:Landroid/graphics/drawable/Drawable;
    const-string v0, ""

    .line 125
    .local v0, desc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, label:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 128
    const-string v5, "LiveWallpaperListAdapter"

    const-string v6, "mLiveData == null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-ltz p1, :cond_2

    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_3

    .line 132
    :cond_2
    const-string v5, "LiveWallpaperListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLiveData.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_3
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_4

    .line 137
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperInfo;

    .line 138
    .local v2, info:Landroid/app/WallpaperInfo;
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 140
    :try_start_0
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 144
    :goto_1
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .end local v2           #info:Landroid/app/WallpaperInfo;
    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :try_start_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :goto_3
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 147
    .local v2, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 148
    const/16 v5, 0x19

    invoke-virtual {p2, v6, v5, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 150
    :try_start_2
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 154
    :goto_4
    iget-object v5, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    goto :goto_2

    .line 163
    .end local v2           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    const-string v5, ""

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 151
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :catch_1
    move-exception v5

    goto :goto_4

    .line 141
    .local v2, info:Landroid/app/WallpaperInfo;
    :catch_2
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    const/4 v4, 0x0

    .line 104
    .local v4, titleAuthor:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mItemResource:I

    const/4 v6, 0x0

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 110
    .local v5, layout:Landroid/view/View;
    :goto_0
    const v0, 0x7f0b0055

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 112
    .local v3, description:Landroid/widget/TextView;
    const v0, 0x7f0b005a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 113
    .local v2, live_wallpaper:Landroid/widget/ImageView;
    const v0, 0x7f0b005b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #titleAuthor:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #titleAuthor:Landroid/widget/TextView;
    move-object v0, p0

    move v1, p1

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->setWallpaperImage(ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 117
    return-object v5

    .line 107
    .end local v2           #live_wallpaper:Landroid/widget/ImageView;
    .end local v3           #description:Landroid/widget/TextView;
    .end local v5           #layout:Landroid/view/View;
    :cond_0
    move-object v5, p2

    .restart local v5       #layout:Landroid/view/View;
    goto :goto_0
.end method

.method public setDeletedIndex([Z)V
    .locals 0
    .parameter "index"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mDeletedIndex:[Z

    .line 78
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mItemResource:I

    .line 70
    return-void
.end method

.method public setLiveData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->mLiveData:Ljava/util/ArrayList;

    .line 74
    return-void
.end method
