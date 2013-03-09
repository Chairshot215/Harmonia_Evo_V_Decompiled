.class Lcom/htc/widget/PopupBubbleWindow$2;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/PopupBubbleWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/PopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow$2;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$2;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #calls: Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$1000(Lcom/htc/widget/PopupBubbleWindow;)V

    .line 1492
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1496
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1500
    return-void
.end method
