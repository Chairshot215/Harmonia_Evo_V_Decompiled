.class Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;
.super Lcom/googlecode/eyesfree/widget/SimpleOverlay$SilentFrameLayout;
.source "SimpleOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/eyesfree/widget/SimpleOverlay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/eyesfree/widget/SimpleOverlay;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/widget/SimpleOverlay;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;->this$0:Lcom/googlecode/eyesfree/widget/SimpleOverlay;

    .line 55
    invoke-direct {p0, p2}, Lcom/googlecode/eyesfree/widget/SimpleOverlay$SilentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;->this$0:Lcom/googlecode/eyesfree/widget/SimpleOverlay;

    #getter for: Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->access$0(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;->this$0:Lcom/googlecode/eyesfree/widget/SimpleOverlay;

    #getter for: Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->access$0(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;->this$0:Lcom/googlecode/eyesfree/widget/SimpleOverlay;

    #getter for: Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->access$1(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/googlecode/eyesfree/widget/SimpleOverlay$SilentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
