.class public Lcom/android/providers/applications/ApplicationLauncher;
.super Landroid/app/ListActivity;
.source "ApplicationLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private launchApplication(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 89
    invoke-static {p1}, Landroid/provider/Applications;->uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    .line 90
    .local v0, componentName:Landroid/content/ComponentName;
    const-string v3, "ApplicationLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, launchIntent:Landroid/content/Intent;
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/providers/applications/ApplicationLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v2       #launchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 99
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSearchResults(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/providers/applications/ApplicationLauncher;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Applications;->search(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    .line 64
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/providers/applications/ApplicationLauncher;->startManagingCursor(Landroid/database/Cursor;)V

    .line 66
    new-instance v0, Lcom/android/providers/applications/ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/applications/ApplicationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 67
    .local v0, adapter:Lcom/android/providers/applications/ApplicationsAdapter;
    invoke-virtual {p0, v0}, Lcom/android/providers/applications/ApplicationLauncher;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->finish()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, contentUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/providers/applications/ApplicationLauncher;->launchApplication(Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->finish()V

    goto :goto_0

    .line 54
    .end local v1           #contentUri:Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, query:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/providers/applications/ApplicationLauncher;->showSearchResults(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 73
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got click on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but there is no cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got click on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but the cursor is closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "uri"

    invoke-static {v1, v2}, Lcom/android/providers/applications/ApplicationsAdapter;->getColumnUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, uri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/providers/applications/ApplicationLauncher;->launchApplication(Landroid/net/Uri;)V

    goto :goto_0
.end method
