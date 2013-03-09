.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Predicates$1;,
        Lcom/google/common/base/Predicates$CompositionPredicate;,
        Lcom/google/common/base/Predicates$InPredicate;,
        Lcom/google/common/base/Predicates$NotNullPredicate;,
        Lcom/google/common/base/Predicates$IsNullPredicate;,
        Lcom/google/common/base/Predicates$InstanceOfPredicate;,
        Lcom/google/common/base/Predicates$IsEqualToPredicate;,
        Lcom/google/common/base/Predicates$OrPredicate;,
        Lcom/google/common/base/Predicates$AndPredicate;,
        Lcom/google/common/base/Predicates$NotPredicate;,
        Lcom/google/common/base/Predicates$AlwaysFalsePredicate;,
        Lcom/google/common/base/Predicates$AlwaysTruePredicate;
    }
.end annotation


# static fields
.field private static final commaJoiner:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->commaJoiner:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Lcom/google/common/base/Joiner;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/common/base/Predicates;->commaJoiner:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method public static alwaysFalse()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method

.method public static alwaysTrue()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method

.method public static and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, first:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, second:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    new-instance v2, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v2
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, components:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/base/Predicate<-TT;>;>;"
    new-instance v0, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, components:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<-TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, first:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, second:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<TB;>;",
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;)",
            "Lcom/google/common/base/Predicate",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TB;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TA;+TB;>;"
    new-instance v0, Lcom/google/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Predicates$CompositionPredicate;-><init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method static defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 551
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v2
.end method

.method private static varargs defensiveCopy([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, target:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/base/Predicates;->isNull()Lcom/google/common/base/Predicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lcom/google/common/base/Predicates$1;)V

    goto :goto_0
.end method

.method public static in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, target:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/common/base/Predicates$InstanceOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/common/base/Predicates$IsNullPredicate;->INSTANCE:Lcom/google/common/base/Predicates$IsNullPredicate;

    return-object v0
.end method

.method private static iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, iterable1:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, iterable2:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v2, 0x0

    .line 525
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 526
    .local v0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    .local v1, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 535
    :cond_1
    :goto_0
    return v2

    .line 531
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 535
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static notNull()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/google/common/base/Predicates$NotNullPredicate;->INSTANCE:Lcom/google/common/base/Predicates$NotNullPredicate;

    return-object v0
.end method

.method public static or(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, first:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, second:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    new-instance v2, Lcom/google/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v2
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, components:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/base/Predicate<-TT;>;>;"
    new-instance v0, Lcom/google/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs or([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, components:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<-TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method
