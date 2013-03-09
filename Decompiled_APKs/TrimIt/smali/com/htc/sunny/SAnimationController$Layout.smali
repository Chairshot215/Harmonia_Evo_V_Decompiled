.class Lcom/htc/sunny/SAnimationController$Layout;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Layout"
.end annotation


# instance fields
.field public mAlpha:I

.field public mRotation:Lcom/htc/sunny/Vector3F;

.field public mScale:Lcom/htc/sunny/Vector3F;

.field public mTranslation:Lcom/htc/sunny/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny/SAnimationController;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SAnimationController;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 417
    iput-object p1, p0, Lcom/htc/sunny/SAnimationController$Layout;->this$0:Lcom/htc/sunny/SAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 426
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 431
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 437
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    return-void
.end method
