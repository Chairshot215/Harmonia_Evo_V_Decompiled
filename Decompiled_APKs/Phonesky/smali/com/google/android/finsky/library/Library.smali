.class public interface abstract Lcom/google/android/finsky/library/Library;
.super Ljava/lang/Object;
.source "Library.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/finsky/library/LibraryEntry;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
.end method

.method public abstract remove(Lcom/google/android/finsky/library/LibraryEntry;)V
.end method

.method public abstract size()I
.end method
