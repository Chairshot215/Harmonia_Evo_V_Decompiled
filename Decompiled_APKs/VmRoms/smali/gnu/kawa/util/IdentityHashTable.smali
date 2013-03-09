.class public Lgnu/kawa/util/IdentityHashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "IdentityHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/GeneralHashTable",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lgnu/kawa/util/IdentityHashTable;,"Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 16
    .local p0, this:Lgnu/kawa/util/IdentityHashTable;,"Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 21
    .local p0, this:Lgnu/kawa/util/IdentityHashTable;,"Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "value2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lgnu/kawa/util/IdentityHashTable;,"Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    .local p1, value1:Ljava/lang/Object;,"TK;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
