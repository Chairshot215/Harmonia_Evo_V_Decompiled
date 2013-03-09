.class Lcom/htc/sunny/SPresentation$3;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunny/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->openingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$3;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$3;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation;->openingAnimation2()V

    .line 548
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    const-string v0, "3DGlideMode"

    const-string v1, "start openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$3;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 543
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$3;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 544
    return-void
.end method
