.class public Ljava/util/LinkedHashSet;
.super Ljava/util/HashSet;
.source "LinkedHashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x279328a56a22d5e2L


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method createBackingMap(IF)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method
