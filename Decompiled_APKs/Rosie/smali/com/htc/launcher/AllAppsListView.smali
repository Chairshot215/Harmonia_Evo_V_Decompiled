.class Lcom/htc/launcher/AllAppsListView;
.super Landroid/widget/FrameLayout;
.source "AllAppsListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
.implements Lcom/htc/launcher/AllAppsView$Content;


# instance fields
.field private mContainer:Lcom/htc/launcher/AllAppsView;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mListLayout:Landroid/view/View;

.field private mProgramList:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/AllAppsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/htc/launcher/AllAppsListView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f07000d

    const v6, 0x7f020084

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->removeAllViews()V

    .line 43
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mListLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 45
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mListLayout:Landroid/view/View;

    .line 46
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mContext:Landroid/content/Context;

    const-string v4, "rosie_list_selector"

    invoke-static {v3, v4, v6}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 52
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mListLayout:Landroid/view/View;

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 54
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    .line 56
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 60
    .local v0, color:Landroid/graphics/drawable/ColorDrawable;
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 65
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 66
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 67
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mContext:Landroid/content/Context;

    const-string v4, "rosie_list_selector"

    invoke-static {v3, v4, v6}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 70
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 71
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isBliss()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/AllAppsListView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/htc/launcher/AllAppsListView;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method


# virtual methods
.method public clearTextFilter()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearTextFilter()V

    .line 108
    :cond_0
    return-void
.end method

.method public isFastScrollAllowed()Z
    .locals 5

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, ret:Z
    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/htc/launcher/ApplicationsAdapter;

    .line 175
    .local v0, adapter:Lcom/htc/launcher/ApplicationsAdapter;
    if-eqz v0, :cond_0

    .line 176
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    invoke-virtual {v0}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, systemLang:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 174
    .end local v0           #adapter:Lcom/htc/launcher/ApplicationsAdapter;
    .end local v2           #systemLang:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 189
    .restart local v0       #adapter:Lcom/htc/launcher/ApplicationsAdapter;
    .restart local v2       #systemLang:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 146
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 147
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v3, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v2

    .line 149
    .local v2, launcher:Lcom/htc/launcher/Launcher;
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 150
    .local v1, cpn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const-string v3, "com.htc.searchanywhere/.SearchActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const-string v4, "launch_flag"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    :cond_0
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_2

    .line 156
    const-string v3, "All_apps"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 167
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 170
    return-void

    .line 158
    :cond_2
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->downloaded:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_3

    .line 160
    const-string v3, "Downloaded"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_3
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->frequent:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_1

    .line 164
    const-string v3, "Frequent"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    :goto_0
    return v6

    .line 197
    :cond_0
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v5

    .line 198
    .local v5, workspace:Lcom/htc/launcher/Workspace;
    if-nez v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 206
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    new-instance v1, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 208
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    .local v1, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/htc/launcher/ApplicationInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 209
    .local v3, fxItem:Lcom/htc/launcher/FxItem;
    const-string v7, "AllAppsGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[APPS] Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    iget-object v8, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v9, v1, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v9}, Lcom/htc/launcher/AllAppsView;->prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    .line 211
    .local v4, icon:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/htc/launcher/DesktopItemController;->getExternalFloatingBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    .line 212
    .local v2, bounds:Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7, v8, v3, v2}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    .line 214
    iget-object v7, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->closeAllApplications()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->isFastScrollAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 123
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method public setContainer(Lcom/htc/launcher/AllAppsView;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/launcher/AllAppsListView;->mContainer:Lcom/htc/launcher/AllAppsView;

    .line 142
    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setFadingEdgeLength(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->isFastScrollAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 131
    :cond_1
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public updateOrientation(Z)V
    .locals 3
    .parameter "portrait"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/launcher/AllAppsListView;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 223
    return-void
.end method
