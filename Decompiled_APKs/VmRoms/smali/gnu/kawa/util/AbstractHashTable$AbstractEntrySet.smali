.class Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/util/AbstractHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TEntry;>;"
    }
.end annotation


# instance fields
.field htable:Lgnu/kawa/util/AbstractHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/kawa/util/AbstractHashTable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;,"Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    .local p1, htable:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 243
    iput-object p1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    .line 244
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TEntry;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;,"Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    new-instance v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;

    invoke-direct {v0, p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;-><init>(Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 248
    .local p0, this:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;,"Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    invoke-virtual {v0}, Lgnu/kawa/util/AbstractHashTable;->size()I

    move-result v0

    return v0
.end method
