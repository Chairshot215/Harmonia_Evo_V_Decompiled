.class Lcom/android/mms/ui/ComposeMessageScrollView$1;
.super Ljava/lang/Object;
.source "ComposeMessageScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageScrollView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageScrollView$1;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$1;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$000(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$1;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$000(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 90
    :cond_0
    return-void
.end method
