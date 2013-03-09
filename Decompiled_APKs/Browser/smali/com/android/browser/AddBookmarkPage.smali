.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/browser/BreadCrumbView$Controller;
.implements Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;,
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;,
        Lcom/android/browser/AddBookmarkPage$BookmarkAccount;,
        Lcom/android/browser/AddBookmarkPage$AccountsLoader;,
        Lcom/android/browser/AddBookmarkPage$CustomListView;,
        Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;,
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;,
        Lcom/android/browser/AddBookmarkPage$FolderAdapter;,
        Lcom/android/browser/AddBookmarkPage$Folder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final BOOKMARK_DELETED:I = 0x66

.field public static final CHECK_FOR_DUPE:Ljava/lang/String; = "check_for_dupe"

.field public static final DEFAULT_FOLDER_ID:J = -0x1L

.field static final EXTRA_EDIT_BOOKMARK:Ljava/lang/String; = "bookmark"

.field static final EXTRA_IS_FOLDER:Ljava/lang/String; = "is_folder"

.field private static final MAX_CRUMBS_SHOWN:I = 0x2

.field public static final REMOVE_THUMBNAIL:Ljava/lang/String; = "remove_thumbnail"

.field private static final SAVE_BOOKMARK:I = 0x64

.field private static final TOUCH_ICON_DOWNLOADED:I = 0x65

.field public static final TOUCH_ICON_URL:Ljava/lang/String; = "touch_icon_url"

.field public static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private final LOADER_ID_ACCOUNTS:I

.field private final LOADER_ID_EDIT_INFO:I

.field private final LOADER_ID_FOLDER_CONTENTS:I

.field private final LOGTAG:Ljava/lang/String;

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

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

.field private mAddNewFolder:Landroid/view/View;

.field private mAddSeparator:Landroid/view/View;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCrumbHolder:Landroid/view/View;

.field private mCrumbs:Lcom/android/browser/BreadCrumbView;

.field private mCurrentFolder:J

.field private mDefaultView:Landroid/view/View;

.field private mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEditingExisting:Z

.field private mEditingFolder:Z

.field private mFakeTitle:Landroid/widget/TextView;

.field private mFakeTitleHolder:Landroid/view/View;

.field private mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

.field private mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

.field private mFolderCancel:Landroid/view/View;

.field private mFolderNamer:Landroid/widget/EditText;

.field private mFolderNamerHolder:Landroid/view/View;

.field private mFolderSelector:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private mIsFolderNamerShowing:Z

.field private mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mRemoveLink:Landroid/view/View;

.field private mRootFolder:J

.field private mSaveToHomeScreen:Z

.field private mTitle:Landroid/widget/EditText;

.field private mTopLevelLabel:Landroid/widget/TextView;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_ACCOUNTS:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FOLDER_CONTENTS:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_EDIT_INFO:I

    .line 381
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1059
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/AddBookmarkPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/AddBookmarkPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/AddBookmarkPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/browser/AddBookmarkPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/AddBookmarkPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/AddBookmarkPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    return-wide v0
.end method

.method private addFolderToCurrent(Ljava/lang/String;)J
    .locals 7
    .parameter "name"

    .prologue
    .line 340
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "folder"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v2

    .line 346
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 347
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v2           #data:Ljava/lang/Object;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 351
    .local v0, currentFolder:J
    :goto_0
    const-string v5, "parent"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 354
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 355
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 357
    :goto_1
    return-wide v5

    .line 349
    .end local v0           #currentFolder:J
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v2       #data:Ljava/lang/Object;
    :cond_0
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v0       #currentFolder:J
    goto :goto_0

    .line 357
    .end local v2           #data:Ljava/lang/Object;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    const-wide/16 v5, -0x1

    goto :goto_1
.end method

.method private completeOrCancelFolderNaming(Z)V
    .locals 6
    .parameter "cancel"

    .prologue
    const/4 v5, 0x0

    .line 326
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/AddBookmarkPage;->addFolderToCurrent(Ljava/lang/String;)J

    move-result-wide v0

    .line 329
    .local v0, id:J
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 331
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 332
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v4}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 829
    :cond_0
    return-void
.end method

.method private descendInto(Ljava/lang/String;J)V
    .locals 2
    .parameter "foldername"
    .parameter "id"

    .prologue
    .line 375
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$Folder;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 377
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 379
    :cond_0
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 144
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getUriForFolder(J)Landroid/net/Uri;
    .locals 1
    .parameter "folder"

    .prologue
    .line 148
    invoke-static {p1, p2}, Landroid/provider/BrowserContract$Bookmarks;->buildFolderUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onCurrentFolderFound()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 720
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 721
    .local v0, manager:Landroid/app/LoaderManager;
    iget-wide v3, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 725
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 736
    :cond_0
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 737
    return-void

    .line 725
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 727
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    .line 728
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1
.end method

.method private onRootFolderFound(J)V
    .locals 2
    .parameter "root"

    .prologue
    .line 704
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .line 705
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 706
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 707
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    .line 708
    return-void
.end method

.method private setShowBookmarkIcon(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, v1

    .line 172
    goto :goto_0
.end method

.method private setShowFolderNamer(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eq p1, v0, :cond_0

    .line 543
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    .line 544
    if-eqz p1, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addFooterView(Landroid/view/View;)V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 557
    :cond_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private setupTopCrumb()V
    .locals 6

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->clear()V

    .line 712
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lcom/android/browser/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    invoke-direct {v3, v0, v4, v5}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    .line 716
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 717
    return-void
.end method

.method private showRemoveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    .line 698
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    return-void
.end method

.method private switchToDefaultView(Z)V
    .locals 9
    .parameter "changedFolder"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    if-eqz p1, :cond_3

    .line 199
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 201
    check-cast v1, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 202
    .local v1, folder:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v5, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iput-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 203
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 238
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #data:Ljava/lang/Object;
    .restart local v1       #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_1
    move v3, v4

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-object v4, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_1

    .line 215
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_3
    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v5, :cond_4

    .line 216
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    .line 218
    :cond_4
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 219
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    .line 221
    :cond_6
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v3}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .restart local v0       #data:Ljava/lang/Object;
    if-eqz v0, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v5, v3, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_7

    .line 226
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v0           #data:Ljava/lang/Object;
    iget-object v4, v0, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    .restart local v0       #data:Ljava/lang/Object;
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 232
    .local v2, manager:Landroid/app/LoaderManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method private switchToFolderSelector()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 364
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 372
    return-void
.end method


# virtual methods
.method moveCursorToFolder(Landroid/database/Cursor;JI)V
    .locals 5
    .parameter "cursor"
    .parameter "folderToFind"
    .parameter "idIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 520
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No folders in the database!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 525
    :cond_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 526
    .local v0, folder:J
    cmp-long v2, v0, p2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") holding this bookmark does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 531
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 242
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 245
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_1

    .line 246
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 250
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->save()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    if-ne p1, v4, :cond_6

    .line 256
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_4

    .line 257
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 258
    :cond_4
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 259
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 263
    :cond_6
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    if-ne p1, v4, :cond_7

    .line 264
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 265
    :cond_7
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    if-ne p1, v4, :cond_8

    .line 266
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 267
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    const v5, 0x7f0c002d

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(I)V

    .line 268
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 274
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 275
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 276
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 277
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v4, :cond_9

    .line 278
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Remove button should not be shown for new bookmarks"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 281
    :cond_9
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    .local v0, id:J
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 283
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 284
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, p0, v3}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 592
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 593
    invoke-virtual {p0, v8}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 595
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 597
    const v7, 0x7f040011

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 601
    .local v6, window:Landroid/view/Window;
    const/4 v4, 0x0

    .line 602
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 604
    .local v5, url:Ljava/lang/String;
    const v7, 0x7f0d002a

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    .line 606
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 607
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "bookmark"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 609
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "is_folder"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    .line 610
    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 611
    iput-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 612
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    const v10, 0x7f0c0039

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v7, :cond_3

    .line 614
    const v7, 0x7f0d002f

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "title"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 627
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #url:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 628
    .restart local v5       #url:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "touch_icon_url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 629
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "parent"

    const-wide/16 v11, -0x1

    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 632
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    const v7, 0x7f0d0005

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 633
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const v7, 0x7f0d0031

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 636
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const v7, 0x7f0d0038

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 639
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v7, 0x7f0d0037

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 642
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v7, 0x7f0d0033

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/addbookmark/FolderSpinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    .line 645
    new-instance v10, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    invoke-direct {v10, p0, v7}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    .line 646
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v7, v10}, Lcom/android/browser/addbookmark/FolderSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 647
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v7, p0}, Lcom/android/browser/addbookmark/FolderSpinner;->setOnSetSelectionListener(Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;)V

    .line 649
    const v7, 0x7f0d002d

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    .line 650
    const v7, 0x7f0d0034

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    .line 652
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f040021

    invoke-virtual {v7, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    .line 653
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d005a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    .line 654
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 655
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d005b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    .line 656
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const v7, 0x7f0d0028

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    .line 659
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    const v7, 0x7f0d0027

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    .line 662
    const v7, 0x7f0d0023

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/BreadCrumbView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 663
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 664
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 666
    const v7, 0x7f0d0015

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    .line 667
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 669
    new-instance v7, Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-direct {v7, p0, p0}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    .line 670
    const v7, 0x7f0d0035

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/AddBookmarkPage$CustomListView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    .line 671
    const v7, 0x7f0d0036

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, empty:Landroid/view/View;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setEmptyView(Landroid/view/View;)V

    .line 673
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, p0}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 675
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addEditText(Landroid/widget/EditText;)V

    .line 677
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 679
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 681
    const v7, 0x7f0d0032

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    .line 682
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 683
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 686
    const v7, 0x7f0d0029

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    .line 688
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 689
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9, v13, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 693
    return-void

    .line 616
    .end local v1           #empty:Landroid/view/View;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    goto/16 :goto_0

    .line 619
    :cond_4
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "gravity"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 620
    .local v2, gravity:I
    if-eq v2, v11, :cond_0

    .line 621
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 622
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 623
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #gravity:I
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v7, v9

    .line 645
    goto/16 :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
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
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 480
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Asking for nonexistant loader!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 452
    :pswitch_0
    new-instance v0, Lcom/android/browser/AddBookmarkPage$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 473
    :goto_0
    return-object v0

    .line 454
    :pswitch_1
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "title"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string v1, "folder"

    aput-object v1, v3, v0

    .line 459
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "folder != 0"

    .line 460
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 461
    .local v5, whereArgs:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    new-array v5, v6, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 467
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v9

    .line 468
    .local v9, data:Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 469
    check-cast v9, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v9           #data:Ljava/lang/Object;
    iget-wide v7, v9, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 473
    .local v7, currentFolder:J
    :goto_1
    new-instance v0, Landroid/content/CursorLoader;

    invoke-direct {p0, v7, v8}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "_id ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v7           #currentFolder:J
    .restart local v9       #data:Ljava/lang/Object;
    :cond_1
    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v7       #currentFolder:J
    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 183
    invoke-direct {p0, v1}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 190
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 538
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 539
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    if-ne v2, p1, :cond_0

    .line 961
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    .line 962
    .local v0, root:J
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 963
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 964
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->clearRecentFolder()V

    .line 967
    .end local v0           #root:J
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 486
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 488
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 489
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 497
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 503
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSetSelection(J)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    long-to-int v0, p1

    .line 294
    .local v0, intId:I
    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 297
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 301
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->switchToFolderSelector()V

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->recentFolderId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 308
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 313
    .local v1, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .locals 7
    .parameter "view"
    .parameter "level"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 153
    if-nez p3, :cond_0

    .line 165
    :goto_0
    return-void

    :cond_0
    move-object v2, p3

    .line 154
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 155
    .local v2, folderData:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 156
    .local v0, folder:J
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 157
    .local v4, manager:Landroid/app/LoaderManager;
    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    .line 159
    .local v3, loader:Landroid/content/CursorLoader;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 160
    invoke-virtual {v3}, Landroid/content/CursorLoader;->forceLoad()V

    .line 161
    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v6, :cond_1

    .line 162
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 164
    :cond_1
    if-ne p2, v5, :cond_2

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method save()Z
    .locals 27

    .prologue
    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 839
    .local v17, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 841
    .local v18, unfilteredUrl:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_3

    const/4 v7, 0x1

    .line 842
    .local v7, emptyTitle:Z
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_4

    const/4 v8, 0x1

    .line 843
    .local v8, emptyUrl:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 844
    .local v13, r:Landroid/content/res/Resources;
    if-nez v7, :cond_0

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 845
    :cond_0
    if-eqz v7, :cond_1

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const v24, 0x7f0c0043

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 848
    :cond_1
    if-eqz v8, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const v24, 0x7f0c0044

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 851
    :cond_2
    const/16 v23, 0x0

    .line 954
    :goto_2
    return v23

    .line 841
    .end local v7           #emptyTitle:Z
    .end local v8           #emptyUrl:Z
    .end local v13           #r:Landroid/content/res/Resources;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 842
    .restart local v7       #emptyTitle:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 854
    .restart local v8       #emptyUrl:Z
    .restart local v13       #r:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 855
    .local v20, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 860
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "javascript:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 861
    new-instance v19, Ljava/net/URI;

    invoke-direct/range {v19 .. v20}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 862
    .local v19, uriObj:Ljava/net/URI;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 863
    .local v14, scheme:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 867
    if-eqz v14, :cond_6

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const v24, 0x7f0c0046

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    const/16 v23, 0x0

    goto :goto_2

    .line 873
    :cond_6
    :try_start_1
    new-instance v4, Landroid/net/WebAddress;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    .local v4, address:Landroid/net/WebAddress;
    :try_start_2
    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_7

    .line 878
    new-instance v23, Ljava/net/URISyntaxException;

    const-string v24, ""

    const-string v25, ""

    invoke-direct/range {v23 .. v25}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v23
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 883
    .end local v4           #address:Landroid/net/WebAddress;
    .end local v14           #scheme:Ljava/lang/String;
    .end local v19           #uriObj:Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 884
    .local v6, e:Ljava/net/URISyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const v24, 0x7f0c0045

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 885
    const/16 v23, 0x0

    goto :goto_2

    .line 874
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v14       #scheme:Ljava/lang/String;
    .restart local v19       #uriObj:Ljava/net/URI;
    :catch_1
    move-exception v6

    .line 875
    .local v6, e:Landroid/net/ParseException;
    :try_start_3
    new-instance v23, Ljava/net/URISyntaxException;

    const-string v24, ""

    const-string v25, ""

    invoke-direct/range {v23 .. v25}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v23

    .line 880
    .end local v6           #e:Landroid/net/ParseException;
    .restart local v4       #address:Landroid/net/WebAddress;
    :cond_7
    invoke-virtual {v4}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v20

    .line 889
    .end local v4           #address:Landroid/net/WebAddress;
    .end local v14           #scheme:Ljava/lang/String;
    .end local v19           #uriObj:Ljava/net/URI;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 890
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 893
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 895
    .local v21, urlUnmodified:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "_id"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 897
    .local v11, id:Ljava/lang/Long;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v23, "parent"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 901
    const-string v23, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-nez v21, :cond_a

    .line 903
    const-string v23, "thumbnail"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 906
    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->size()I

    move-result v23

    if-lez v23, :cond_b

    .line 907
    new-instance v23, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-direct/range {v23 .. v26}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 909
    :cond_b
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 954
    .end local v11           #id:Ljava/lang/Long;
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_3
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 913
    :cond_c
    if-eqz v21, :cond_d

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "thumbnail"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 916
    .local v16, thumbnail:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "favicon"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 923
    .local v9, favicon:Landroid/graphics/Bitmap;
    :goto_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 924
    .local v5, bundle:Landroid/os/Bundle;
    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v23, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v23, "favicon"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 928
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    if-eqz v21, :cond_e

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x65

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 932
    .local v12, msg:Landroid/os/Message;
    invoke-virtual {v12, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 933
    new-instance v10, Lcom/android/browser/DownloadTouchIcon;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "user_agent"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v12, v1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 935
    .local v10, icon:Lcom/android/browser/DownloadTouchIcon;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 951
    .end local v10           #icon:Lcom/android/browser/DownloadTouchIcon;
    .end local v12           #msg:Landroid/os/Message;
    :goto_5
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 952
    const-string v23, "bookmarkview"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 919
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #favicon:Landroid/graphics/Bitmap;
    .end local v16           #thumbnail:Landroid/graphics/Bitmap;
    :cond_d
    const/16 v16, 0x0

    .line 920
    .restart local v16       #thumbnail:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .restart local v9       #favicon:Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 937
    .restart local v5       #bundle:Landroid/os/Bundle;
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v9}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 941
    :cond_f
    const-string v23, "thumbnail"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 942
    const-string v24, "remove_thumbnail"

    if-nez v21, :cond_10

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    const-string v23, "touch_icon_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 946
    .restart local v12       #msg:Landroid/os/Message;
    invoke-virtual {v12, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 948
    new-instance v15, Ljava/lang/Thread;

    new-instance v23, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v12}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 949
    .local v15, t:Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 942
    .end local v12           #msg:Landroid/os/Message;
    .end local v15           #t:Ljava/lang/Thread;
    :cond_10
    const/16 v23, 0x0

    goto :goto_6
.end method

.method setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 436
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    .line 438
    .local v0, account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountType:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    iget-wide v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    invoke-direct {p0, v2, v3}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 441
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 445
    .end local v0           #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_0
    return-void

    .line 436
    .restart local v0       #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
