.class Lcom/android/browser/BrowserBookmarksPage$1;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksPage;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
