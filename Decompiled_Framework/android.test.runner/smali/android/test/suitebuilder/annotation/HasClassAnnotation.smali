.class Landroid/test/suitebuilder/annotation/HasClassAnnotation;
.super Ljava/lang/Object;
.source "HasClassAnnotation.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/test/suitebuilder/TestMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->annotationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/annotation/HasClassAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v0

    return v0
.end method
