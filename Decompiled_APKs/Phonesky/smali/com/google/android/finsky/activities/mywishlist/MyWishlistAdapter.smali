.class public Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "MyWishlistAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "cellLayoutId"
    .parameter "currentPageUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-direct/range {p0 .. p9}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->ignoreCustomTiles()V

    .line 21
    return-void
.end method
