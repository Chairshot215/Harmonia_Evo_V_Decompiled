.class Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;
.super Landroid/os/AsyncTask;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateBookmarkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 780
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 781
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->mContext:Landroid/content/Context;

    .line 782
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->mId:Ljava/lang/Long;

    .line 783
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 776
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 787
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 788
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No ContentValues provided!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->mId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 791
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 794
    return-object v4
.end method
