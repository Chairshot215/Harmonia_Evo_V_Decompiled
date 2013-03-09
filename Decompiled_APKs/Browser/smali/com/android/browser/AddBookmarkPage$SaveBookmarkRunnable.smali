.class Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    .line 748
    iput-object p3, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 749
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 752
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 753
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, url:Ljava/lang/String;
    const-string v0, "remove_thumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 756
    .local v10, invalidateThumbnail:Z
    if-eqz v10, :cond_1

    const/4 v4, 0x0

    .line 758
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    const-string v0, "touch_icon_url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 762
    .local v11, touchIconUrl:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 763
    .local v8, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J
    invoke-static {v5}, Lcom/android/browser/AddBookmarkPage;->access$600(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    .line 765
    if-eqz v11, :cond_0

    .line 766
    new-instance v0, Lcom/android/browser/DownloadTouchIcon;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/browser/AddBookmarkPage;->access$1200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v8           #cr:Landroid/content/ContentResolver;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 773
    return-void

    .line 756
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v11           #touchIconUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 769
    .restart local v4       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v11       #touchIconUrl:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 770
    .local v9, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    iput v12, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
