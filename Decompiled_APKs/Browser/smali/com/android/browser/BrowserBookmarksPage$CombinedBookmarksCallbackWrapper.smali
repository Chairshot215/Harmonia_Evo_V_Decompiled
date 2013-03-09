.class Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Lcom/android/browser/BookmarksPageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedBookmarksCallbackWrapper"
.end annotation


# instance fields
.field private mCombinedCallback:Lcom/android/browser/CombinedBookmarksCallbacks;


# direct methods
.method private constructor <init>(Lcom/android/browser/CombinedBookmarksCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/CombinedBookmarksCallbacks;Lcom/android/browser/BrowserBookmarksPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;-><init>(Lcom/android/browser/CombinedBookmarksCallbacks;)V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .locals 2
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 364
    if-eqz p2, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .locals 1
    .parameter "urls"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    invoke-interface {v0, p1}, Lcom/android/browser/CombinedBookmarksCallbacks;->openInNewTab([Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method
