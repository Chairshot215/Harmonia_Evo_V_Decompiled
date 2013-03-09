.class public Lcom/android/settings/HtcCreateShortcut;
.super Lcom/htc/app/HtcListActivity;
.source "HtcCreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCreateShortcut$1;,
        Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcCreateShortcut"


# instance fields
.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 322
    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    return-object v0
.end method

.method protected intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    .line 176
    .local v0, adapter:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    invoke-virtual {v0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 2
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    .line 186
    .local v0, adapter:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    invoke-virtual {v0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    return-object v1
.end method

.method public makeListItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v7, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settings/HtcCreateShortcut;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v8, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 222
    .local v4, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 223
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 225
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v1}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 227
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 230
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v7, :cond_2

    .line 231
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    iput v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 236
    :goto_1
    iget-object v7, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 237
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 238
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 239
    :cond_0
    iget-object v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    if-eqz v0, :cond_1

    .line 240
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 243
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 245
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v7, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_1

    .line 251
    .end local v1           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x100

    .line 83
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 91
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0, v7}, Lcom/android/settings/HtcCreateShortcut;->setProgressBarIndeterminateVisibility(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->onSetContentView()V

    .line 95
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    new-instance v3, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    iget-object v4, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-direct {v3, p0, p0, v4}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;-><init>(Lcom/android/settings/HtcCreateShortcut;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    .line 99
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 102
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, empty:Landroid/view/View;
    const/4 v2, 0x0

    .line 104
    .local v2, target:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 105
    check-cast v2, Landroid/widget/TextView;

    .line 106
    if-eqz v2, :cond_0

    .line 107
    const v3, 0x1040428

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 109
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/HtcCreateShortcut;->setProgressBarIndeterminateVisibility(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 119
    const-string v3, "item_background_holo_dark"

    invoke-static {p0, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, resId:I
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->reviseActionBar()V

    .line 132
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 144
    invoke-virtual {p0, p3}, Lcom/android/settings/HtcCreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 145
    .local v3, shortcutIntent:Landroid/content/Intent;
    const/high16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p3}, Lcom/android/settings/HtcCreateShortcut;->itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    .line 150
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    .local v2, res:Landroid/content/res/Resources;
    const-string v5, "android.intent.extra.shortcut.ICON"

    iget v4, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 165
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/HtcCreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->finish()V

    .line 167
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "queryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onSetContentView()V
    .locals 1

    .prologue
    .line 139
    const v0, 0x2090041

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcCreateShortcut;->setContentView(I)V

    .line 140
    return-void
.end method

.method protected reviseActionBar()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/16 v12, 0x21c

    const/16 v11, 0x48

    const/4 v10, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 290
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 293
    const v9, 0x1020226

    invoke-virtual {p0, v9}, Lcom/android/settings/HtcCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 294
    .local v8, upView:Landroid/view/View;
    const v9, 0x10202e9

    invoke-virtual {p0, v9}, Lcom/android/settings/HtcCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 296
    .local v2, actionBarView:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 297
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_0
    if-eqz v2, :cond_1

    .line 299
    const/16 v9, 0xe

    invoke-virtual {v2, v9, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    .end local v2           #actionBarView:Landroid/view/View;
    .end local v8           #upView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, PackageName:Ljava/lang/String;
    const-string v9, "com.android.settings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 305
    .local v7, res:Landroid/content/res/Resources;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 306
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v4, canvas:Landroid/graphics/Canvas;
    const v9, 0x20807c7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 308
    .local v5, drawable1:Landroid/graphics/drawable/Drawable;
    const v9, 0x2080085

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 310
    .local v6, drawable2:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v10, v10, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    invoke-virtual {v6, v10, v10, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v6           #drawable2:Landroid/graphics/drawable/Drawable;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    if-nez v2, :cond_0

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    .line 264
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 269
    .local v1, nNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0           #i:I
    .end local v1           #nNum:I
    :cond_0
    new-instance v2, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;-><init>(Lcom/android/settings/HtcCreateShortcut;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v2}, Lcom/htc/app/HtcListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    return-void
.end method
