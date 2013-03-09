.class public Landroid/test/suitebuilder/TestPredicates;
.super Ljava/lang/Object;
.source "TestPredicates.java"


# static fields
.field public static final REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_LARGE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_MEDIUM:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_SMALL:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_SMOKE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/test/suitebuilder/AssignableFrom;

    const-class v1, Landroid/test/InstrumentationTestCase;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/AssignableFrom;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    invoke-static {v0}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v1, Landroid/test/suitebuilder/annotation/Smoke;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMOKE:Lcom/android/internal/util/Predicate;

    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v1, Landroid/test/suitebuilder/annotation/SmallTest;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v1, Landroid/test/suitebuilder/annotation/MediumTest;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v1, Landroid/test/suitebuilder/annotation/LargeTest;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    const-class v1, Landroid/test/suitebuilder/annotation/Suppress;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
