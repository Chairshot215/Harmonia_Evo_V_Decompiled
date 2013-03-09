.class public Landroid/test/TestRunner;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Landroid/test/PerformanceTestCase$Intermediates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TestRunner$Listener;,
        Landroid/test/TestRunner$IntermediateTime;,
        Landroid/test/TestRunner$JunitTestSuite;
    }
.end annotation


# static fields
.field public static final CLEARSCREEN:I = 0x0

.field public static final PERFORMANCE:I = 0x1

.field public static final PROFILING:I = 0x2

.field public static final REGRESSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TestHarness"

.field private static mJUnitClass:Ljava/lang/Class;

.field private static mRunnableClass:Ljava/lang/Class;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mFailed:I

.field mIntermediates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalIterations:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPassed:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "java.lang.Runnable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    const-string v1, "junit.framework.TestCase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/test/TestRunner;->mMode:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    iput-object p1, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/test/TestRunner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/test/TestRunner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    return-void
.end method

.method public static countJunitTests(Ljava/lang/Class;)I
    .locals 2

    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    return v1
.end method

.method public static countTests(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v0, v2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    invoke-static {p0, v1}, Landroid/test/TestRunner;->countTests(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v10, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    :cond_1
    :goto_1
    return v8

    :cond_2
    sget-object v10, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v3}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    :catch_0
    move-exception v4

    move v8, v9

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private finished(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->finished(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, v0

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    new-array v8, v7, [Ljava/lang/reflect/Method;

    move-object v1, v0

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_2

    aput-object v5, v8, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v8
.end method

.method public static getChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p0, p1}, Landroid/test/TestRunner;->getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    move v6, v4

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t get children method for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_3

    array-length v4, v3

    array-length v6, v1

    add-int/2addr v4, v6

    new-array v0, v4, [Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    array-length v6, v3

    invoke-static {v3, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    move-object v0, v3

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "children method is not static"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "children"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/test/TestRunner;->getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "TestHarness"

    const-string v3, "No class found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, v5

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le v2, v1, :cond_1

    move v0, v2

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isTestMethod(Ljava/lang/reflect/Method;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private performance(Ljava/lang/String;JILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/TestRunner$Listener;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/test/TestRunner$Listener;->performance(Ljava/lang/String;JILjava/util/List;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private started(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->started(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addIntermediate(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/test/TestRunner;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/test/TestRunner;->addIntermediate(Ljava/lang/String;J)V

    return-void
.end method

.method public addIntermediate(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    new-instance v1, Landroid/test/TestRunner$IntermediateTime;

    invoke-direct {v1, p1, p2, p3}, Landroid/test/TestRunner$IntermediateTime;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Landroid/test/TestRunner$Listener;)V
    .locals 1

    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget v2, p0, Landroid/test/TestRunner;->mFailed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mFailed:I

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1, p2}, Landroid/test/TestRunner$Listener;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public failedCount()I
    .locals 1

    iget v0, p0, Landroid/test/TestRunner;->mFailed:I

    return v0
.end method

.method public finishProfiling()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    return-void
.end method

.method public finishTiming(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    goto :goto_0
.end method

.method public isJunitTest(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public passed(Ljava/lang/String;)V
    .locals 3

    iget v2, p0, Landroid/test/TestRunner;->mPassed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mPassed:I

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->passed(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public passedCount()I
    .locals 1

    iget v0, p0, Landroid/test/TestRunner;->mPassed:I

    return v0
.end method

.method public run(Ljava/lang/String;)V
    .locals 24

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-static {v15}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/test/TestRunner;->run([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v21, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/TestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    check-cast v0, Landroid/test/TestCase;

    move-object/from16 v20, v0

    :cond_2
    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v20, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/test/TestCase;->setUp(Landroid/content/Context;)V

    const/4 v8, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    if-eqz v20, :cond_4

    if-eqz v8, :cond_4

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/test/TestCase;->tearDown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    if-nez v9, :cond_7

    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ClassNotFoundException for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->isJunitTest(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->runSingleJunitTest(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto :goto_1

    :catch_1
    move-exception v10

    move-object v9, v10

    goto :goto_1

    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_2
    move-exception v9

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InstantiationException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_3
    move-exception v10

    move-object v9, v10

    goto :goto_2

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v9

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IllegalAccessException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_6
    sget-object v21, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/4 v9, 0x0

    new-instance v17, Landroid/test/TestRunner$JunitTestSuite;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    invoke-static {v7}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v5, v16

    array-length v13, v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v13, :cond_a

    aget-object v14, v5, v11

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljunit/framework/TestCase;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/AndroidTestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, v18

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object/from16 v20, v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :goto_4
    :try_start_8
    invoke-virtual/range {v17 .. v18}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_5
    move-exception v10

    const-string v21, "TestHarness"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/test/TestRunner$JunitTestSuite;->testCount()I

    move-result v19

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/test/TestRunner$JunitTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4

    const/16 v21, 0x1

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    if-nez v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :catch_6
    move-exception v10

    move-object v9, v10

    goto :goto_6

    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    goto/16 :goto_0

    :cond_e
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Test wasn\'t Runnable and didn\'t have a children method: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public run([Ljava/lang/String;)V
    .locals 4

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Landroid/test/TestRunner;->run(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/test/TestRunner;->mInternalIterations:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    instance-of v1, v14, Landroid/test/PerformanceTestCase;

    if-eqz v1, :cond_1

    move-object v15, v14

    check-cast v15, Landroid/test/PerformanceTestCase;

    move-object/from16 v0, p0

    iget v1, v0, Landroid/test/TestRunner;->mMode:I

    if-nez v1, :cond_1

    invoke-interface {v15}, Landroid/test/PerformanceTestCase;->isPerformanceOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    if-eqz v15, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/test/PerformanceTestCase;->startPerformance(Landroid/test/PerformanceTestCase$Intermediates;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v13, 0x0

    :cond_2
    :goto_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :goto_2
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mEndTime:J

    if-eqz v13, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    :goto_3
    if-eqz p3, :cond_5

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_6

    move-object/from16 v1, p1

    check-cast v1, Ljunit/framework/Test;

    invoke-static {v1}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_3

    :cond_5
    move-object/from16 v16, p1

    check-cast v16, Ljava/lang/Runnable;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v5, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/test/TestRunner;->mEndTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    :cond_7
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/test/TestRunner;->mStartTime:J

    sub-long v8, v10, v1

    if-nez v13, :cond_9

    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/test/TestRunner;->mInternalIterations:I

    mul-int/2addr v5, v1

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, v8

    int-to-long v3, v5

    div-long v3, v1, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Landroid/test/TestRunner;->performance(Ljava/lang/String;JILjava/util/List;)V

    goto/16 :goto_0

    :cond_9
    const-wide/16 v1, 0x1

    cmp-long v1, v8, v1

    if-gtz v1, :cond_a

    mul-int/lit16 v5, v5, 0x3e8

    goto :goto_2

    :cond_a
    const-wide/16 v1, 0xa

    cmp-long v1, v8, v1

    if-gtz v1, :cond_b

    mul-int/lit8 v5, v5, 0x64

    goto :goto_2

    :cond_b
    const-wide/16 v1, 0x64

    cmp-long v1, v8, v1

    if-gez v1, :cond_c

    mul-int/lit8 v5, v5, 0xa

    goto/16 :goto_2

    :cond_c
    const-wide/16 v1, 0x3e8

    cmp-long v1, v8, v1

    if-gez v1, :cond_8

    const-wide/16 v1, 0x3e8

    div-long/2addr v1, v8

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v5, v1

    goto/16 :goto_2
.end method

.method public runSingleJunitTest(Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v4, 0x0

    const/16 v11, 0x24

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const-string v9, ""

    move-object v7, p1

    if-ltz v5, :cond_0

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    :try_start_0
    iget-object v11, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v11, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v11, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljunit/framework/TestCase;

    new-instance v6, Landroid/test/TestRunner$JunitTestSuite;

    invoke-direct {v6, p0}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    invoke-virtual {v8, v9}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    instance-of v11, v8, Landroid/test/AndroidTestCase;

    if-eqz v11, :cond_1

    move-object v0, v8

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v11, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v6, v8}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    iget v11, p0, Landroid/test/TestRunner;->mMode:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    if-ne v11, v13, :cond_4

    :try_start_3
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v8, p1, v11, v12}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    if-nez v4, :cond_3

    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    :try_start_4
    const-string v11, "TestHarness"

    const-string v12, "Exception encountered while trying to set the context."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v11, "TestHarness"

    const-string v12, "No test case to run"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-virtual {v8}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v4}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v3

    goto :goto_1

    :cond_4
    :try_start_6
    iget v11, p0, Landroid/test/TestRunner;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    invoke-virtual {p0}, Landroid/test/TestRunner;->startProfiling()V

    invoke-static {v6}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    invoke-virtual {p0}, Landroid/test/TestRunner;->finishProfiling()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v11, "TestHarness"

    const-string v12, "Illegal Access Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    :try_start_7
    invoke-static {v6}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    const-string v11, "TestHarness"

    const-string v12, "Instantiation Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setInternalIterations(I)V
    .locals 0

    iput p1, p0, Landroid/test/TestRunner;->mInternalIterations:I

    return-void
.end method

.method public setPerformanceMode(I)V
    .locals 0

    iput p1, p0, Landroid/test/TestRunner;->mMode:I

    return-void
.end method

.method public startProfiling()V
    .locals 4

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/trace"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/tmp/trace/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dmtrace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x80

    invoke-static {v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    return-void
.end method

.method public startTiming(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_0
.end method
