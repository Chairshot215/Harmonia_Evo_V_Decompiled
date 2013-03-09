.class public abstract Lcom/google/android/finsky/library/HashingLibrary;
.super Ljava/lang/Object;
.source "HashingLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# instance fields
.field final mHasher:Lcom/google/android/finsky/library/LibraryHasher;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .locals 0
    .parameter "hasher"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    .line 15
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    iget-wide v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->documentHash:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryHasher;->add(J)V

    .line 22
    :cond_0
    return-void
.end method

.method public abstract dumpState(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
.end method

.method public getHash()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-interface {v0}, Lcom/google/android/finsky/library/LibraryHasher;->compute()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    .line 41
    .local v0, existingEntry:Lcom/google/android/finsky/library/LibraryEntry;
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    iget-wide v2, v0, Lcom/google/android/finsky/library/LibraryEntry;->documentHash:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/library/LibraryHasher;->remove(J)V

    .line 44
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-interface {v0}, Lcom/google/android/finsky/library/LibraryHasher;->reset()V

    .line 56
    return-void
.end method
