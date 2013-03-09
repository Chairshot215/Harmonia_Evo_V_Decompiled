.class public Leu/chainfire/supersu/MainActivity$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;

# interfaces
.implements Landroid/support/v4/view/ac;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/actionbarsherlock/app/ActionBar;

.field private final d:Landroid/support/v4/view/ViewPager;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/MainActivity;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, p2

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->b:Landroid/content/Context;

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    iput-object p3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/i;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ac;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public final a(IF)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, p2}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;-><init>(Leu/chainfire/supersu/MainActivity$TabsAdapter;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity$TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->a(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->b(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/AppsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/AppsFragment;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/LogsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/LogsFragment;)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/SettingsFragment;)V

    :cond_2
    return-object v1
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-static {v0, v2}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;I)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->a:Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->a()V

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    return-void
.end method
