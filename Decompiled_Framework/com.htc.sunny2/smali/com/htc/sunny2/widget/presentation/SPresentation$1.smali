.class Lcom/htc/sunny2/widget/presentation/SPresentation$1;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->openingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->openingAnimation2()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$1;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    return-void
.end method
