.class public final Lcom/google/android/syncadapters/contacts/IteratorJoiner;
.super Ljava/lang/Object;
.source "IteratorJoiner.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/IteratorJoiner$1;,
        Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,
        Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
        "<TT;>.Result;>;"
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mItemLeft:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mItemRight:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIterator:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
            "<TT;>.MyIterator;"
        }
    .end annotation
.end field

.field private final mIteratorLeft:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIteratorRight:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
            "<TT;>.Result;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>;"
    .local p1, left:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p2, right:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;

    .line 73
    iput-object p2, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;

    .line 74
    iput-object p3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mComparator:Ljava/util/Comparator;

    .line 76
    new-instance v0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;-><init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    .line 77
    new-instance v0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;-><init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Lcom/google/android/syncadapters/contacts/IteratorJoiner$1;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIterator:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
            "<TT;>.Result;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>;"
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIterator:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;

    return-object v0
.end method
