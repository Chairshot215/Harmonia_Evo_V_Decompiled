.class Lcom/htc/dockmode/saver/ScreenSaver$1;
.super Ljava/lang/Object;
.source "ScreenSaver.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/saver/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/saver/ScreenSaver;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/saver/ScreenSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/dockmode/saver/ScreenSaver$1;->this$0:Lcom/htc/dockmode/saver/ScreenSaver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver$1;->this$0:Lcom/htc/dockmode/saver/ScreenSaver;

    #getter for: Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/saver/ScreenSaver;->access$000(Lcom/htc/dockmode/saver/ScreenSaver;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver$1;->this$0:Lcom/htc/dockmode/saver/ScreenSaver;

    #getter for: Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/saver/ScreenSaver;->access$000(Lcom/htc/dockmode/saver/ScreenSaver;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 81
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 84
    return-void
.end method
