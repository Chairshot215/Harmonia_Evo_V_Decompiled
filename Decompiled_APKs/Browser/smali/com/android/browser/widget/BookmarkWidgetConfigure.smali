.class public Lcom/android/browser/widget/BookmarkWidgetConfigure;
.super Landroid/app/ListActivity;
.source "BookmarkWidgetConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/widget/BookmarkWidgetConfigure$AccountsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final LOADER_ACCOUNTS:I = 0x1


# instance fields
.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/browser/AddBookmarkPage$BookmarkAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    .line 117
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->finish()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setResult(I)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setVisible(Z)V

    .line 51
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setContentView(I)V

    .line 52
    const v2, 0x7f0d0037

    invoke-virtual {p0, v2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 55
    iget-object v2, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 59
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    .line 63
    :cond_0
    iget v2, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->finish()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/android/browser/widget/BookmarkWidgetConfigure$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    .line 78
    .local v0, account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    iget-wide v1, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    .line 79
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x1

    .line 96
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 98
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 110
    return-void

    .line 99
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 100
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->pickAccount(J)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 104
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method pickAccount(J)V
    .locals 3
    .parameter "rootId"

    .prologue
    .line 87
    iget v1, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v1, p1, p2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->setupWidgetState(Landroid/content/Context;IJ)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, result:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/browser/widget/BookmarkWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetConfigure;->finish()V

    .line 92
    return-void
.end method
