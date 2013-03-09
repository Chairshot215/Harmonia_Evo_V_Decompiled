.class public Lcom/android/browser/BookmarkDragHandler;
.super Ljava/lang/Object;
.source "BookmarkDragHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;,
        Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;,
        Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;
    }
.end annotation


# static fields
.field static final BOOKMARK_DRAG_LABEL:Ljava/lang/String; = "com.android.browser.BOOKMARK_LABEL"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeDragListener:Landroid/view/View$OnDragListener;

.field private mActivity:Landroid/app/Activity;

.field private mBookmarkDragListener:Landroid/view/View$OnDragListener;

.field private mDragAdapter:Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

.field private mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

.field private mDragState:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;)V
    .locals 1
    .parameter "activity"
    .parameter "controller"
    .parameter "adapter"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/browser/BookmarkDragHandler$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkDragHandler$1;-><init>(Lcom/android/browser/BookmarkDragHandler;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mBookmarkDragListener:Landroid/view/View$OnDragListener;

    .line 126
    new-instance v0, Lcom/android/browser/BookmarkDragHandler$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkDragHandler$2;-><init>(Lcom/android/browser/BookmarkDragHandler;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mActionModeDragListener:Landroid/view/View$OnDragListener;

    .line 66
    iput-object p1, p0, Lcom/android/browser/BookmarkDragHandler;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/android/browser/BookmarkDragHandler;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    .line 68
    iput-object p3, p0, Lcom/android/browser/BookmarkDragHandler;->mDragAdapter:Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    .line 69
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mDragAdapter:Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    invoke-interface {v0, p0}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;->setBookmarkDragHandler(Lcom/android/browser/BookmarkDragHandler;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BookmarkDragHandler;)Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mDragAdapter:Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BookmarkDragHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BookmarkDragHandler;)Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/BookmarkDragHandler;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/BookmarkDragHandler;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static isFolder(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 149
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 154
    iget-object v3, p0, Lcom/android/browser/BookmarkDragHandler;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    iget-object v4, p0, Lcom/android/browser/BookmarkDragHandler;->mDragState:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;

    invoke-interface {v3, p1, v4}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;->getActionModeView(Landroid/view/ActionMode;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 155
    .local v2, view:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 156
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/BookmarkDragHandler;->mActionModeDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 160
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 175
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public registerBookmarkDragHandler(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/BookmarkDragHandler;->mBookmarkDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 91
    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/database/Cursor;JLjava/lang/Object;)Z
    .locals 6
    .parameter "view"
    .parameter "item"
    .parameter "id"
    .parameter "extraState"

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v4, p0, Lcom/android/browser/BookmarkDragHandler;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    invoke-interface {v4, p2}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;->startDrag(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    :goto_0
    return v3

    .line 76
    :cond_0
    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 78
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "com.android.browser.BOOKMARK_LABEL"

    invoke-static {v4, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 79
    .local v0, data:Landroid/content/ClipData;
    new-instance v1, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;

    invoke-direct {v1}, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;-><init>()V

    .line 80
    .local v1, state:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;
    iput-wide p3, v1, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->id:J

    .line 81
    const/16 v4, 0x8

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->parent:J

    .line 82
    iput-object p5, v1, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->extraState:Ljava/lang/Object;

    .line 83
    iput-object v1, p0, Lcom/android/browser/BookmarkDragHandler;->mDragState:Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;

    .line 84
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BookmarkDragHandler;->mActionMode:Landroid/view/ActionMode;

    .line 86
    const/4 v3, 0x1

    goto :goto_0
.end method
