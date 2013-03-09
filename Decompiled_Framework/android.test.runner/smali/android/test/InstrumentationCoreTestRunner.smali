.class public Landroid/test/InstrumentationCoreTestRunner;
.super Landroid/test/InstrumentationTestRunner;
.source "InstrumentationCoreTestRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentationCoreTestRunner"


# instance fields
.field private singleTest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    return-void
.end method


# virtual methods
.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 2

    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v0

    new-instance v1, Landroid/test/InstrumentationCoreTestRunner$1;

    invoke-direct {v1, p0}, Landroid/test/InstrumentationCoreTestRunner$1;-><init>(Landroid/test/InstrumentationCoreTestRunner;)V

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v4, Ldalvik/annotation/BrokenTest;

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    if-nez v3, :cond_0

    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v4, Ldalvik/annotation/SideEffect;

    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/test/InstrumentationCoreTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "user.language"

    const-string v3, "en"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "user.region"

    const-string v3, "US"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "java.home"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "user.home"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "java.io.tmpdir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v2, "class"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/test/InstrumentationTestRunner;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
