.class Landroid/webkit/BasicActions;
.super Ljava/lang/Object;
.source "BasicActions.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# static fields
.field private static final BUTTON_ID_COPY:I = 0x1020021

.field private static final BUTTON_ID_QUICKLOOKUP:I = 0x1

.field private static final BUTTON_ID_SHARE:I = 0x102033f

.field private static final BUTTON_ID_WEBSEARCH:I = 0x1020341

.field private static final G_DEFAULT:I = 0x1140000


# instance fields
.field copyButtonOnly:Z

.field focusedView:Landroid/view/View;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_lookup:Landroid/graphics/drawable/Drawable;

.field icon_share:Landroid/graphics/drawable/Drawable;

.field icon_websearch:Landroid/graphics/drawable/Drawable;

.field mActionMenu:Landroid/view/Menu;

.field mActionMode:Landroid/view/ActionMode;

.field mWebView:Landroid/webkit/WebView;

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private resLoaded:Z

.field showQuickLookup:Z

.field showWebSearch:Z

.field str_copy:Ljava/lang/String;

.field str_lookup:Ljava/lang/String;

.field str_share:Ljava/lang/String;

.field str_websearch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showQuickLookup:Z

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    iput-object p1, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method private handleItemAction(I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :sswitch_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copySelection()Z

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_1

    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getQuickSearch()Landroid/webkit/HTCQuickSearch;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "new_search"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "query"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "BasicActions"

    const-string v7, "ERROR!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403a6

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->selectAll()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4, v8}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x102033e -> :sswitch_3
        0x102033f -> :sswitch_1
        0x1020340 -> :sswitch_4
        0x1020341 -> :sswitch_2
    .end sparse-switch
.end method

.method private loadResource()V
    .locals 8

    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v6, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const/high16 v6, 0x114

    iget-object v7, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    invoke-virtual {v2, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v6, 0x20805f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020021

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    const v6, 0x20805f8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x102033f

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    :cond_0
    const v6, 0x20805f4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020341

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    move-result v1

    const v2, 0x102033e

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v4, :cond_0

    iput-boolean v5, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    :cond_0
    iget-object v4, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v7, 0x114

    invoke-virtual {v4, v7, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110031

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v4, 0x1040397

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x1020340

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    move v4, v5

    :goto_1
    return v4

    :catch_0
    move-exception v2

    move v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 4

    const/high16 v3, 0x114

    iget-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    :cond_0
    const v0, 0x1020021

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    const v0, 0x1020341

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    const v0, 0x102033f

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    iput-object v1, p0, Landroid/webkit/BasicActions;->menuQuikckLookup:Landroid/view/MenuItem;

    iput-object v1, p0, Landroid/webkit/BasicActions;->menuCopy:Landroid/view/MenuItem;

    iput-object v1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x1020021

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v5, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v7

    :goto_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v5, :cond_3

    const v5, 0x1020341

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return v7
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x114

    iget-boolean v1, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v1, :cond_2

    invoke-interface {p1, v2, v3}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    const v1, 0x1020021

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v4}, Lcom/htc/textselection/Action;->setVisible(Z)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v1, :cond_1

    const v1, 0x1020341

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_lookup:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    return-void
.end method
