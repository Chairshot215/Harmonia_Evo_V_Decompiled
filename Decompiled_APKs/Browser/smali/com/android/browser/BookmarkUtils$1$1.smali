.class Lcom/android/browser/BookmarkUtils$1$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BookmarkUtils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkUtils$1;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkUtils$1;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/browser/BookmarkUtils$1$1;->this$0:Lcom/android/browser/BookmarkUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/BookmarkUtils$1$1;->this$0:Lcom/android/browser/BookmarkUtils$1;

    iget-wide v2, v2, Lcom/android/browser/BookmarkUtils$1;->val$id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 254
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$1$1;->this$0:Lcom/android/browser/BookmarkUtils$1;

    iget-object v1, v1, Lcom/android/browser/BookmarkUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    return-void
.end method
