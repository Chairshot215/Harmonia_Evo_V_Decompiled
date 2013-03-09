.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bitmask"
.end annotation


# instance fields
.field private mBitmask:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->mBitmask:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->checkBits(I)Z

    move-result v0

    return v0
.end method

.method private checkBits(I)Z
    .locals 1
    .parameter "bits"

    .prologue
    .line 666
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->mBitmask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addBits(I)V
    .locals 1
    .parameter "bit"

    .prologue
    .line 654
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->mBitmask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->mBitmask:I

    .line 655
    return-void
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->mBitmask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
