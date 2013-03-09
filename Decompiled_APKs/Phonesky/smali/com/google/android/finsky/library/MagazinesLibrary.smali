.class public Lcom/google/android/finsky/library/MagazinesLibrary;
.super Lcom/google/android/finsky/library/HashMapLibrary;
.source "MagazinesLibrary.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .locals 0
    .parameter "hasher"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 8
    .parameter "docId"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    const/4 v3, 0x6

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/MagazinesLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 24
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method
