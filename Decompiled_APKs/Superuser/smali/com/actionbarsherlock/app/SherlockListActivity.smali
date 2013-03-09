.class public Lcom/actionbarsherlock/app/SherlockListActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;


# instance fields
.field private final mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    invoke-static {p0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;ILjava/lang/Class;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/ListActivity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    return-void
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockListActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/app/SherlockListActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onPostResume()V

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/actionbarsherlock/app/SherlockListActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/ListActivity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockListActivity;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->invalidateOptionsMenu()V

    return-void
.end method
