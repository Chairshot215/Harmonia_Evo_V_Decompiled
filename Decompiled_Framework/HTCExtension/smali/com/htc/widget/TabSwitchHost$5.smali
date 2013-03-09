.class Lcom/htc/widget/TabSwitchHost$5;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$5;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$5;->this$0:Lcom/htc/widget/TabSwitchHost;

    #calls: Lcom/htc/widget/TabSwitchHost;->onChangeTab()V
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$1100(Lcom/htc/widget/TabSwitchHost;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "TabSwitchHost"

    const-string v1, " fade out onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
