.class Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
.super Lcom/actionbarsherlock/view/ActionMode;


# instance fields
.field private final mActionMode:Landroid/view/ActionMode;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Landroid/view/ActionMode;)V
    .locals 1

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-direct {p0}, Lcom/actionbarsherlock/view/ActionMode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    return-object v0
.end method

.method public bridge synthetic getMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
