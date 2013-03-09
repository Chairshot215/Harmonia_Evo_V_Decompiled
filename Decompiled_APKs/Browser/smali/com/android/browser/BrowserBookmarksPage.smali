.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Fragment;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/browser/BreadCrumbView$Controller;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;,
        Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;,
        Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;,
        Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;,
        Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# static fields
.field static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field static final EXTRA_DISABLE_WINDOW:Ljava/lang/String; = "disable_new_window"

.field static final LOADER_ACCOUNTS:I = 0x1

.field static final LOADER_BOOKMARKS:I = 0x64

.field static final LOGTAG:Ljava/lang/String; = "browser"

.field static final PREF_GROUP_STATE:Ljava/lang/String; = "bbp_group_state"

.field public static final VIEW_LIST:I = 0x2

.field public static final VIEW_THUMBNAILS:I = 0x1


# instance fields
.field mBookmarkAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

.field private mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mDisableNewWindow:Z

.field private mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

.field mDragHandler:Lcom/android/browser/BookmarkDragHandler;

.field mEmptyView:Landroid/view/View;

.field mEnableContextMenu:Z

.field mGrid:Lcom/android/browser/view/BookmarkExpandableView;

.field mHeader:Landroid/view/View;

.field mRoot:Landroid/view/View;

.field mState:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    .line 246
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 601
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    .line 672
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;I)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 541
    .local v0, cm:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 542
    return-void
.end method

.method static createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 441
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, title:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 444
    .local v2, touchIcon:Landroid/graphics/Bitmap;
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, favicon:Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v4

    return-object v4
.end method

.method private displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 6
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 523
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 524
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 525
    .local v2, id:J
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 527
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    .line 528
    return-void
.end method

.method private editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 9
    .parameter "adapter"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 497
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 499
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v3, item:Landroid/os/Bundle;
    const-string v6, "title"

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v6, "url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 505
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 506
    const-string v6, "favicon"

    array-length v7, v1

    invoke-static {v1, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 509
    :cond_0
    const-string v6, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 511
    const-string v6, "parent"

    const/16 v7, 0x8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 513
    const-string v6, "bookmark"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 514
    const-string v6, "is_folder"

    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 517
    return-void

    :cond_1
    move v4, v5

    .line 514
    goto :goto_0
.end method

.method static getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 239
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 240
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v0

    return-object v0
.end method

.method private getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    return-object v0
.end method

.method static getUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "c"

    .prologue
    .line 535
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;
    .locals 1
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 531
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadFolder(ILandroid/net/Uri;)V
    .locals 3
    .parameter "groupPosition"
    .parameter "uri"

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 579
    .local v1, manager:Landroid/app/LoaderManager;
    add-int/lit8 v2, p1, 0x64

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarksLoader;

    .line 581
    .local v0, loader:Lcom/android/browser/BookmarksLoader;
    invoke-virtual {v0, p2}, Lcom/android/browser/BookmarksLoader;->setUri(Landroid/net/Uri;)V

    .line 582
    invoke-virtual {v0}, Lcom/android/browser/BookmarksLoader;->forceLoad()V

    .line 583
    return-void
.end method

.method private loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 3
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    .line 452
    :cond_0
    return-void
.end method

.method private openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 8
    .parameter "adapter"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 455
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v6, :cond_0

    .line 456
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 457
    .local v0, c:Landroid/database/Cursor;
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 458
    .local v3, isFolder:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 459
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 460
    .local v1, id:J
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;-><init>(Lcom/android/browser/BrowserBookmarksPage;J)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 465
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #id:J
    .end local v3           #isFolder:Z
    :cond_0
    :goto_1
    return-void

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    move v3, v5

    .line 457
    goto :goto_0

    .line 462
    .restart local v3       #isFolder:Z
    :cond_2
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-interface {v6, v4}, Lcom/android/browser/BookmarksPageCallbacks;->onOpenInNewWindow([Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V
    .locals 7
    .parameter "cursor"
    .parameter "item"
    .parameter "isFolder"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 293
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 294
    if-eqz p3, :cond_0

    .line 295
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020026

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 299
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;-><init>(Landroid/content/Context;Lcom/android/browser/BookmarkItem;)V

    new-array v3, v4, [Ljava/lang/Long;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    :goto_0
    return-void

    .line 302
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method canEdit(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 288
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, unique:Ljava/lang/String;
    const-string v1, "other_bookmarks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleContextItem(III)Z
    .locals 11
    .parameter "itemId"
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 186
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 188
    .local v1, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    sparse-switch p1, :sswitch_data_0

    .line 233
    const/4 v6, 0x0

    .line 235
    :goto_0
    return v6

    .line 190
    :sswitch_0
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 193
    :sswitch_1
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 197
    .local v2, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    .end local v2           #c:Landroid/database/Cursor;
    :sswitch_3
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 203
    :sswitch_4
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 206
    :sswitch_5
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 207
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v3, v9}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v3, v10}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 215
    .end local v3           #cursor:Landroid/database/Cursor;
    :sswitch_6
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :sswitch_7
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 219
    const v7, 0x7f0c0042

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :sswitch_8
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 225
    .restart local v3       #cursor:Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, name:Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0, v7, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0020 -> :sswitch_0
        0x7f0d0021 -> :sswitch_4
        0x7f0d0098 -> :sswitch_1
        0x7f0d0099 -> :sswitch_2
        0x7f0d009a -> :sswitch_5
        0x7f0d009b -> :sswitch_6
        0x7f0d009c -> :sswitch_3
        0x7f0d009d -> :sswitch_7
        0x7f0d00e2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 417
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 418
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0, p4}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 419
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v8, 0x6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    move v3, v6

    .line 420
    .local v3, isFolder:Z
    :goto_0
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v8, v2, v3}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 437
    :cond_0
    :goto_1
    return v6

    .end local v3           #isFolder:Z
    :cond_1
    move v3, v7

    .line 419
    goto :goto_0

    .line 425
    .restart local v3       #isFolder:Z
    :cond_2
    if-eqz v3, :cond_0

    .line 426
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, title:Ljava/lang/String;
    sget-object v8, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v8, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 429
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 430
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {v1, v4, v5}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 433
    invoke-virtual {v1, v7}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 435
    :cond_3
    invoke-direct {p0, p3, v5}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 546
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 548
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 549
    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 550
    .local v0, paddingTop:I
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 551
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 552
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 173
    .local v0, i:Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    iget v3, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/BrowserBookmarksPage;->handleContextItem(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 315
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 317
    .local v2, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "bbp_group_state"

    const-string v6, "{}"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 325
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->setHasOptionsMenu(Z)V

    .line 326
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    if-eqz v3, :cond_0

    .line 327
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;-><init>(Lcom/android/browser/CombinedBookmarksCallbacks;Lcom/android/browser/BrowserBookmarksPage$1;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 330
    :cond_0
    return-void

    .line 318
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Lorg/json/JSONException;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "bbp_group_state"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    goto :goto_0

    .line 324
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_1
    const-string v4, "disable_new_window"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 256
    move-object v7, p3

    check-cast v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 257
    .local v7, info:Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 258
    .local v1, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {v1, v11}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 259
    .local v3, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->canEdit(Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 285
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_3

    move v8, v9

    .line 265
    .local v8, isFolder:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 266
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 267
    .local v6, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f100001

    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    if-eqz v8, :cond_4

    .line 269
    const v10, 0x7f0d009e

    invoke-interface {p1, v10, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 276
    :cond_2
    :goto_1
    new-instance v4, Lcom/android/browser/BookmarkItem;

    invoke-direct {v4, v0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 277
    .local v4, header:Lcom/android/browser/BookmarkItem;
    invoke-virtual {v4, v9}, Lcom/android/browser/BookmarkItem;->setEnableScrolling(Z)V

    .line 278
    invoke-direct {p0, v3, v4, v8}, Lcom/android/browser/BrowserBookmarksPage;->populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V

    .line 279
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 281
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    .line 282
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_0

    .line 283
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #count:I
    .end local v4           #header:Lcom/android/browser/BookmarkItem;
    .end local v5           #i:I
    .end local v6           #inflater:Landroid/view/MenuInflater;
    .end local v8           #isFolder:Z
    :cond_3
    move v8, v10

    .line 262
    goto :goto_0

    .line 271
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v6       #inflater:Landroid/view/MenuInflater;
    .restart local v8       #isFolder:Z
    :cond_4
    const v11, 0x7f0d0097

    invoke-interface {p1, v11, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 272
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v11, :cond_2

    .line 273
    const v11, 0x7f0d0021

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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
    .line 112
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 113
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 119
    :goto_0
    return-object v2

    .line 114
    :cond_0
    const/16 v3, 0x64

    if-lt p1, v3, :cond_1

    .line 115
    const-string v3, "account_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/BookmarksLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/android/browser/BookmarksLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v2, bl:Lcom/android/browser/BookmarksLoader;
    goto :goto_0

    .line 121
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #bl:Lcom/android/browser/BookmarksLoader;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown loader id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 375
    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    .line 376
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 378
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/BookmarkExpandableView;

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    .line 379
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 380
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 381
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 382
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 383
    new-instance v1, Lcom/android/browser/BookmarkDragHandler;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v4}, Lcom/android/browser/view/BookmarkExpandableView;->getDragAdapter()Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/BookmarkDragHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;)V

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;

    .line 387
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 388
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 390
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 396
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 397
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v3}, Lcom/android/browser/view/BookmarkExpandableView;->clearAccounts()V

    .line 398
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 399
    .local v2, lm:Landroid/app/LoaderManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 400
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 401
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 403
    .end local v1           #id:I
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 404
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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
    const/4 v9, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    .line 129
    .local v6, lm:Landroid/app/LoaderManager;
    const/16 v5, 0x64

    .line 130
    .local v5, id:I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, accountType:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v3, args:Landroid/os/Bundle;
    const-string v7, "account_name"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v7, "account_type"

    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v2, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v9}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Landroid/content/Context;I)V

    .line 138
    .local v2, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v4, 0x1

    .line 141
    .local v4, expand:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v7, v0

    :goto_1
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 144
    :goto_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v7, v0, v2, v4}, Lcom/android/browser/view/BookmarkExpandableView;->addAccount(Ljava/lang/String;Lcom/android/browser/BrowserBookmarksAdapter;Z)V

    .line 145
    invoke-virtual {v6, v5, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    goto :goto_0

    .line 141
    :cond_0
    :try_start_1
    const-string v7, "local"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 155
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v4           #expand:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 160
    .end local v5           #id:I
    .end local v6           #lm:Landroid/app/LoaderManager;
    :cond_2
    :goto_3
    return-void

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_2

    .line 157
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 158
    .restart local v2       #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v2, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_3

    .line 143
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v3       #args:Landroid/os/Bundle;
    .restart local v4       #expand:Z
    .restart local v5       #id:I
    .restart local v6       #lm:Landroid/app/LoaderManager;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 164
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1}, Lcom/android/browser/view/BookmarkExpandableView;->saveGroupState()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    .line 338
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bbp_group_state"

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "level"
    .parameter "data"

    .prologue
    .line 559
    const/high16 v2, 0x7f0d

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, groupPosition:I
    move-object v1, p3

    .line 560
    check-cast v1, Landroid/net/Uri;

    .line 561
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 563
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 565
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    .line 566
    const/4 v2, 0x1

    if-gt p2, v2, :cond_1

    .line 567
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V
    .locals 0
    .parameter "callbackListener"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 587
    return-void
.end method

.method public setEnableContextMenu(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 591
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    if-eqz v0, :cond_0

    .line 592
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->registerForContextMenu(Landroid/view/View;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->unregisterForContextMenu(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/view/BookmarkExpandableView;->setLongClickable(Z)V

    goto :goto_0
.end method
