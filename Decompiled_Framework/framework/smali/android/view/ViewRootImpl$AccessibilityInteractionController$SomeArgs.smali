.class public Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SomeArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
        ">;"
    }
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field private mIsPooled:Z

.field private mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

.field final synthetic this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    return-void
.end method


# virtual methods
.method public getNextPoolable()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->getNextPoolable()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    return v0
.end method

.method public setNextPoolable(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->setNextPoolable(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    return-void
.end method
