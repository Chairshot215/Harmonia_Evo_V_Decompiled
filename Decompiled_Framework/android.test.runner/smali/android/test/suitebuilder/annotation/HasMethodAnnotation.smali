.class Landroid/test/suitebuilder/annotation/HasMethodAnnotation;
.super Ljava/lang/Object;
.source "HasMethodAnnotation.java"

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
.field private final annotationClass:Ljava/lang/Class;
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

    iput-object p1, p0, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;->annotationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 1

    iget-object v0, p0, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/test/suitebuilder/TestMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

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

    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/annotation/HasMethodAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v0

    return v0
.end method
