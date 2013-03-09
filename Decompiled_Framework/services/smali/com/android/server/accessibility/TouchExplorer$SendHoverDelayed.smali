.class final Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SendHoverDelayed"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SendHoverEnterOrExitDelayed"


# instance fields
.field private mAction:I

.field private mEvent:Landroid/view/MotionEvent;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPenidng()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    goto :goto_0
.end method

.method private isPenidng()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public forceSendAndRemove()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPenidng()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->run()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;IIIJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    return-void
.end method
