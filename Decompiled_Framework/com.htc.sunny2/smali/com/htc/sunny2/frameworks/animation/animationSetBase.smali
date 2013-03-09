.class public Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.super Ljava/lang/Object;
.source "animationSetBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;"
    }
.end annotation


# instance fields
.field protected mAnimationState:I

.field protected mBundle:Landroid/os/Bundle;

.field protected mMainView:Lcom/htc/sunny2/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVIEW;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunny2/view/SView;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
