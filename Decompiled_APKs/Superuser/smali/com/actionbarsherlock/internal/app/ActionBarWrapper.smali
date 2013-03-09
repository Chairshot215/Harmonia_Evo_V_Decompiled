.class public Lcom/actionbarsherlock/internal/app/ActionBarWrapper;
.super Lcom/actionbarsherlock/app/ActionBar;

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mMenuVisibilityListeners:Ljava/util/Set;

.field private mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$Tab;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$Tab;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;-><init>(Landroid/app/ActionBar$Tab;)V

    return-object v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mMenuVisibilityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeTabAt(I)V

    return-void
.end method

.method public selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    iget v1, p2, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iput-object p2, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mNavigationListener:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, p1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    return-void
.end method
