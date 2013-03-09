.class public abstract Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;
.super Landroid/app/LauncherActivity;
.source "HtcAbsCreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendIconToShortcutIntent(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v1

    iget-object v0, v1, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 68
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const-string v1, "android.intent.extra.shortcut.ICON"

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected reviseActionBar()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/16 v12, 0x21c

    const/16 v11, 0x48

    const/4 v10, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 28
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 31
    const v9, 0x1020226

    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 32
    .local v8, upView:Landroid/view/View;
    const v9, 0x10202e9

    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 34
    .local v2, actionBarView:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 35
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    if-eqz v2, :cond_1

    .line 37
    const/16 v9, 0xe

    invoke-virtual {v2, v9, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .end local v2           #actionBarView:Landroid/view/View;
    .end local v8           #upView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, PackageName:Ljava/lang/String;
    const-string v9, "com.android.settings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 43
    .local v7, res:Landroid/content/res/Resources;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v4, canvas:Landroid/graphics/Canvas;
    const v9, 0x20807c7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 46
    .local v5, drawable1:Landroid/graphics/drawable/Drawable;
    const v9, 0x2080085

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 48
    .local v6, drawable2:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v10, v10, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    invoke-virtual {v6, v10, v10, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v6           #drawable2:Landroid/graphics/drawable/Drawable;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_2
    return-void
.end method
