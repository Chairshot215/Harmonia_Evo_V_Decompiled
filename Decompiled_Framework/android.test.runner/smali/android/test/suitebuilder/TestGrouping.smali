.class public Landroid/test/suitebuilder/TestGrouping;
.super Ljava/lang/Object;
.source "TestGrouping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestGrouping$1;,
        Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;,
        Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;,
        Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;,
        Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestGrouping"

.field public static final SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field protected firstIncludedPackage:Ljava/lang/String;

.field testCaseClasses:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;

    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    return-void
.end method

.method private select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private selectTestClasses(Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    invoke-direct {p0, p1, v3}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2}, Landroid/test/PackageInfoSources;->forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/test/ClassPathPackageInfo;->getTopLevelClassesRecursive()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->selectTestClasses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public varargs addPackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .locals 8

    move-object v1, p1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-direct {p0, v4}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "TestGrouping"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' could not be found or has no tests"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    if-nez v5, :cond_1

    iput-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/test/suitebuilder/TestGrouping;

    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    iget-object v3, v0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, v0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFirstIncludedPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    return-object v0
.end method

.method getTestCaseClasses()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    return-object v0
.end method

.method protected getTestMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$1;)V

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTests()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->getTestMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    new-instance v5, Landroid/test/suitebuilder/TestMethod;

    invoke-direct {v5, v3, v2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs removePackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .locals 6

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-direct {p0, v3}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method
