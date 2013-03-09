.class Lcom/google/android/finsky/providers/AppIconProvider$IconCache;
.super Lcom/google/android/finsky/utils/LruCache;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/AppIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/utils/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSize"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/LruCache;-><init>(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 145
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 146
    return-void
.end method

.method protected bridge synthetic entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->entryEvicted(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method protected entryEvicted(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->destroy(Ljava/lang/String;Ljava/io/File;)V

    .line 150
    return-void
.end method
