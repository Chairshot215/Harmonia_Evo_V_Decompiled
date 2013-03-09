.class public Lcom/android/browser/ComboViewActivity;
.super Landroid/app/Activity;
.source "ComboViewActivity.java"

# interfaces
.implements Lcom/android/browser/CombinedBookmarksCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ComboViewActivity$1;,
        Lcom/android/browser/ComboViewActivity$TabsAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_COMBO_ARGS:Ljava/lang/String; = "combo_args"

.field public static final EXTRA_CURRENT_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_INITIAL_VIEW:Ljava/lang/String; = "initial_view"

.field public static final EXTRA_OPEN_ALL:Ljava/lang/String; = "open_all"

.field public static final EXTRA_OPEN_SNAPSHOT:Ljava/lang/String; = "snapshot_id"

.field private static final STATE_SELECTED_TAB:Ljava/lang/String; = "tab"


# instance fields
.field private mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 163
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v8}, Lcom/android/browser/ComboViewActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 52
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "combo_args"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "initial_view"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, svStr:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/browser/UI$ComboViews;->valueOf(Ljava/lang/String;)Lcom/android/browser/UI$ComboViews;

    move-result-object v3

    .line 57
    .local v3, startingView:Lcom/android/browser/UI$ComboViews;
    :goto_0
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v6, 0x7f0d0003

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 59
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v5}, Lcom/android/browser/ComboViewActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 62
    .local v1, bar:Landroid/app/ActionBar;
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 63
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 70
    :goto_1
    new-instance v5, Lcom/android/browser/ComboViewActivity$TabsAdapter;

    iget-object v6, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0, v6}, Lcom/android/browser/ComboViewActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v5, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    .line 71
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f0c0006

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 73
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f0c0008

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 75
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f0c0009

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    const-class v7, Lcom/android/browser/BrowserSnapshotPage;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_2

    .line 79
    const-string v5, "tab"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 94
    :goto_2
    return-void

    .line 54
    .end local v1           #bar:Landroid/app/ActionBar;
    .end local v3           #startingView:Lcom/android/browser/UI$ComboViews;
    :cond_0
    sget-object v3, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    goto :goto_0

    .line 67
    .restart local v1       #bar:Landroid/app/ActionBar;
    .restart local v3       #startingView:Lcom/android/browser/UI$ComboViews;
    :cond_1
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_1

    .line 82
    :cond_2
    sget-object v5, Lcom/android/browser/ComboViewActivity$1;->$SwitchMap$com$android$browser$UI$ComboViews:[I

    invoke-virtual {v3}, Lcom/android/browser/UI$ComboViews;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 84
    :pswitch_0
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 87
    :pswitch_1
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 90
    :pswitch_2
    iget-object v5, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 149
    :goto_0
    return v2

    .line 142
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0d00b1

    if-ne v3, v4, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "currentPage"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/ComboViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 149
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .locals 2
    .parameter "urls"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, i:Landroid/content/Intent;
    const-string v1, "open_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 116
    return-void
.end method

.method public openSnapshot(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, i:Landroid/content/Intent;
    const-string v1, "snapshot_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 129
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 108
    return-void
.end method
