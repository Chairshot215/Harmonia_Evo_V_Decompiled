.class Lcom/htc/launcher/AllAppsGridView;
.super Lcom/htc/launcher/widget/PagedGridView;
.source "AllAppsGridView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
.implements Lcom/htc/launcher/AllAppsView$Content;


# instance fields
.field private mBeforeY:F

.field private mContainer:Lcom/htc/launcher/AllAppsView;

.field private mPaint:Landroid/graphics/Paint;

.field private mTexture:Landroid/graphics/Bitmap;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;-><init>(Landroid/content/Context;)V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/AllAppsGridView;->mBeforeY:F

    .line 54
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsGridView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsGridView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setFocusable(Z)V

    .line 59
    invoke-direct {p0}, Lcom/htc/launcher/AllAppsGridView;->numColumns()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setNumColumns(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 64
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/AllAppsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsGridView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsGridView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setFocusable(Z)V

    .line 68
    invoke-direct {p0}, Lcom/htc/launcher/AllAppsGridView;->numColumns()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setNumColumns(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/launcher/widget/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/launcher/AllAppsGridView;->mBeforeY:F

    .line 75
    sget-object v2, Lcom/htc/launcher/R$styleable;->AllAppsGridView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 77
    .local v1, textureId:I
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    .line 79
    iget-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/AllAppsGridView;->mTextureWidth:I

    .line 80
    iget-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/AllAppsGridView;->mTextureHeight:I

    .line 82
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0, v4}, Lcom/htc/launcher/AllAppsGridView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/htc/launcher/AllAppsGridView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/htc/launcher/AllAppsGridView;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/launcher/AllAppsGridView;->setHorizontalSpacing(I)V

    .line 91
    invoke-direct {p0}, Lcom/htc/launcher/AllAppsGridView;->numColumns()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/launcher/AllAppsGridView;->setNumColumns(I)V

    .line 93
    return-void
.end method

.method private isFolderOpenedInCurrentScreen()Z
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    .line 175
    .local v1, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    .line 176
    .local v0, open:Lcom/htc/launcher/Folder;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/launcher/Folder;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private numColumns()I
    .locals 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 304
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_rosie_app_drawer_columns"

    const v2, 0x4

    .line 124
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 307
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method public static translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "appTitle"
    .parameter "ctx"

    .prologue
    .line 213
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x71

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, needChangeStr:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, changeStr:[Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 219
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    aget-object p0, v0, v1

    .line 225
    .end local v0           #changeStr:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #needChangeStr:[Ljava/lang/String;
    .end local p0
    :cond_1
    return-object p0

    .line 218
    .restart local v0       #changeStr:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #needChangeStr:[Ljava/lang/String;
    .restart local p0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public layoutChildren()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-super {p0}, Lcom/htc/launcher/widget/PagedGridView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, npe:Ljava/lang/NullPointerException;
    const-string v1, "Rosie"

    const-string v2, "Error: null pointer during GridView layout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0, p0}, Lcom/htc/launcher/AllAppsGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/htc/launcher/AllAppsGridView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/htc/launcher/AllAppsGridView;->mContext:Landroid/content/Context;

    const-string v1, "rosie_grid_selector"

    const v2, 0x7f02004a

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setSelector(I)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setFocusableInTouchMode(Z)V

    .line 105
    return-void
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
    const-string v3, "AllAppsGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app.title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v2

    .line 150
    .local v2, launcher:Lcom/htc/launcher/Launcher;
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 151
    .local v1, cpn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const-string v3, "com.htc.searchanywhere/.SearchActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const-string v4, "launch_flag"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :cond_0
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_2

    .line 158
    const-string v3, "All_apps"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 169
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 171
    return-void

    .line 160
    :cond_2
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->downloaded:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_3

    .line 162
    const-string v3, "Downloaded"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_3
    iget-object v3, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v3, v3, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v4, Lcom/htc/launcher/Launcher$AppTabType;->frequent:Lcom/htc/launcher/Launcher$AppTabType;

    if-ne v3, v4, :cond_1

    .line 166
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
    const/4 v7, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 208
    :goto_0
    return v6

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v5

    .line 185
    .local v5, workspace:Lcom/htc/launcher/Workspace;
    if-nez v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 195
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 196
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    new-instance v1, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 198
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    .local v1, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v6, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 200
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Lcom/htc/launcher/ApplicationInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 201
    .local v3, fxItem:Lcom/htc/launcher/FxItem;
    const-string v6, "AllAppsGridView"

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

    invoke-static {v6, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    iget-object v8, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v9, v1, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8, v9}, Lcom/htc/launcher/AllAppsView;->prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    .line 203
    .local v4, icon:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/launcher/DesktopItemController;->getExternalFloatingBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    .line 204
    .local v2, bounds:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6, v8, v3, v2}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    .line 206
    iget-object v6, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->closeAllApplications()V

    move v6, v7

    .line 208
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 236
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 238
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/AllAppsGridView;->mBeforeY:F

    goto :goto_0

    .line 241
    :pswitch_2
    iget v1, p0, Lcom/htc/launcher/AllAppsGridView;->mBeforeY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 243
    const/4 v1, 0x1

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/AllAppsGridView;->mBeforeY:F

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setContainer(Lcom/htc/launcher/AllAppsView;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/launcher/AllAppsGridView;->mContainer:Lcom/htc/launcher/AllAppsView;

    .line 230
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 285
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 297
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public updateOrientation(Z)V
    .locals 4
    .parameter "portrait"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/htc/launcher/AllAppsGridView;->numColumns()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsGridView;->setNumColumns(I)V

    .line 257
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/launcher/AllAppsGridView;->setPadding(IIII)V

    .line 264
    :cond_0
    return-void
.end method
