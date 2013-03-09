.class public Landroid/test/TestCaseUtil;
.super Ljava/lang/Object;
.source "TestCaseUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTestSuite(Ljava/lang/Class;)Ljunit/framework/TestSuite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)",
            "Ljunit/framework/TestSuite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljunit/framework/TestSuite;

    invoke-direct {v1, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    const-class v2, Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    goto :goto_0

    :cond_1
    check-cast v0, Ljunit/framework/TestSuite;

    move-object v1, v0

    goto :goto_0
.end method

.method public static getTestAtIndex(Ljunit/framework/TestSuite;I)Ljunit/framework/Test;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/Test;

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTestCaseNames(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    invoke-static {v0}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getTestName(Ljunit/framework/Test;)Ljava/lang/String;
    .locals 5

    instance-of v4, p0, Ljunit/framework/TestCase;

    if-eqz v4, :cond_1

    move-object v2, p0

    check-cast v2, Ljunit/framework/TestCase;

    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v4, p0, Ljunit/framework/TestSuite;

    if-eqz v4, :cond_2

    move-object v3, p0

    check-cast v3, Ljunit/framework/TestSuite;

    invoke-virtual {v3}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getTests(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p0, :cond_4

    const/4 v4, 0x0

    instance-of v5, p0, Ljunit/framework/TestCase;

    if-eqz v5, :cond_0

    move-object v5, p0

    check-cast v5, Ljunit/framework/TestCase;

    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    move-object v4, p0

    :cond_1
    instance-of v5, v4, Ljunit/framework/TestSuite;

    if-eqz v5, :cond_3

    move-object v3, v4

    check-cast v3, Ljunit/framework/TestSuite;

    invoke-virtual {v3}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    if-eqz p1, :cond_2

    invoke-static {v0, p1, p2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v2
.end method

.method private static invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "suite"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_1
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
