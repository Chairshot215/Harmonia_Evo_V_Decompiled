.class public Lcom/htc/appsharing/AppInfoAdapterS;
.super Landroid/widget/BaseAdapter;
.source "AppInfoAdapterS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/appsharing/AppInfoAdapterS$1;,
        Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoAdapterS;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoAdapterS;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 28
    return-void
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 72
    new-instance v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;-><init>(Lcom/htc/appsharing/AppInfoAdapterS;Lcom/htc/appsharing/AppInfoAdapterS$1;)V

    .line 73
    .local v1, viewHolder:Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;
    iget-object v2, p0, Lcom/htc/appsharing/AppInfoAdapterS;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, view:Landroid/view/View;
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 75
    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->label:Lcom/htc/widget/HtcListItem2LineText;

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/appsharing/AppInfoManager;->getAppCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/appsharing/AppInfoManager;->getAppInfo(I)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-direct {p0, p3}, Lcom/htc/appsharing/AppInfoAdapterS;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;

    .line 51
    .local v1, viewHolder:Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/htc/appsharing/AppInfoAdapterS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 53
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    if-nez v0, :cond_1

    .line 67
    :goto_0
    return-object p2

    .line 58
    :cond_1
    iget-object v2, v0, Lcom/htc/appsharing/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 60
    iget-object v2, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/htc/appsharing/AppInfoAdapterS;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 63
    :cond_2
    iget-object v2, v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->label:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v0, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->label:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 65
    iget-object v2, v1, Lcom/htc/appsharing/AppInfoAdapterS$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, v0, Lcom/htc/appsharing/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
