.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedListIterator;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$CopiesList;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Collections$1;

    invoke-direct {v0}, Ljava/util/Collections$1;-><init>()V

    sput-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    new-instance v0, Ljava/util/Collections$2;

    invoke-direct {v0}, Ljava/util/Collections$2;-><init>()V

    sput-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v0, Ljava/util/Collections$EmptySet;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, -0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_6

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-gtz v4, :cond_3

    if-nez v4, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    const/4 v4, -0x1

    :goto_1
    if-gt v2, v0, :cond_8

    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_7

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_8
    neg-int v6, v3

    if-gez v4, :cond_9

    const/4 v5, 0x1

    :goto_2
    sub-int v3, v6, v5

    goto :goto_0

    :cond_9
    const/4 v5, 0x2

    goto :goto_2
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_5

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-gtz v4, :cond_2

    if-nez v4, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    const/4 v4, -0x1

    :goto_1
    if-gt v2, v0, :cond_7

    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_6

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_0

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_7
    neg-int v6, v3

    if-gez v4, :cond_8

    const/4 v5, 0x1

    :goto_2
    sub-int v3, v6, v5

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_2
.end method

.method static checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to insert element of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into collection of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CheckedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$1;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination.size() < source.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fit into destination"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_1
    move-object v1, p0

    move-object p0, p1

    move-object p1, v1

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static final emptyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/util/Collections$3;

    invoke-direct {v1, v0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_1
    return v2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    move v3, v8

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v7, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v8, :cond_3

    move v3, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    if-ge v3, v5, :cond_9

    sub-int v9, v5, v3

    if-lt v9, v7, :cond_9

    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    if-nez v2, :cond_5

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    :goto_1
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    const/4 v0, 0x0

    :cond_4
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    move v3, v8

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    :goto_2
    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_2

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_9
    move v3, v8

    goto :goto_0
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    const/4 v8, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v7, v5, :cond_1

    move v5, v8

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-eqz v7, :cond_0

    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_1
    if-le v2, v8, :cond_9

    add-int/lit8 v9, v2, 0x1

    if-lt v9, v7, :cond_9

    add-int/lit8 v9, v2, 0x1

    invoke-interface {p0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    if-nez v3, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    :cond_2
    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    const/4 v0, 0x0

    :cond_3
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v8

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    :goto_2
    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_9
    move v5, v8

    goto :goto_0
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections$ReverseComparator;->access$400()Ljava/util/Collections$ReverseComparator;

    move-result-object v0

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    #getter for: Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;
    invoke-static {p0}, Ljava/util/Collections$ReverseComparator2;->access$500(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static rotate(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v4, p0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_3

    rem-int v5, p1, v6

    :goto_1
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    instance-of v10, v4, Ljava/util/RandomAccess;

    if-eqz v10, :cond_4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_0

    add-int v10, v3, v5

    rem-int v3, v10, v6

    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v3, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    rem-int v10, p1, v6

    mul-int/lit8 v10, v10, -0x1

    sub-int v5, v6, v10

    goto :goto_1

    :cond_4
    sub-int v10, v6, v5

    rem-int v1, v10, v6

    invoke-interface {v4, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static shuffle(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    move-object v5, p0

    instance-of v7, p0, Ljava/util/RandomAccess;

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v6, v0, v1

    aget-object v7, v0, v3

    aput-object v7, v0, v1

    aput-object v6, v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    aget-object v7, v0, v1

    invoke-interface {v4, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    if-lt p2, v1, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    if-ne p1, p2, :cond_3

    :goto_0
    return-void

    :cond_3
    move-object v0, p0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
