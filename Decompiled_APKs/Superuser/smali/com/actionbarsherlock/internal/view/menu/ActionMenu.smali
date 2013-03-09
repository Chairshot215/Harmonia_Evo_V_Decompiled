.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private findItemIndex(I)I
    .locals 4

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    .locals 6

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mIsQwerty:Z

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v1

    :goto_1
    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public add(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 7

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Lcom/actionbarsherlock/view/MenuItem;)I
    .locals 9

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    :goto_0
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->removeGroup(I)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    return v3

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_4

    move-object v1, p6

    :goto_2
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/actionbarsherlock/view/MenuItem;->setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    if-eqz p8, :cond_3

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_3

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2
.end method

.method public addSubMenu(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public findItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v0

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v0

    goto :goto_0
.end method

.method public removeGroup(I)V
    .locals 4

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setGroupEnabled(IZ)V
    .locals 5

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mIsQwerty:Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
