.class public Lcom/htc/sunny2/view/animation/SAnimationController$Layout;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/animation/SAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Layout"
.end annotation


# instance fields
.field public mAlpha:I

.field public mRotation:Lcom/htc/sunny2/view/Vector3F;

.field public mScale:Lcom/htc/sunny2/view/Vector3F;

.field public mTranslation:Lcom/htc/sunny2/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny2/view/animation/SAnimationController;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2

    const/high16 v1, 0x3f80

    iput-object p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->this$0:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    return-void
.end method
