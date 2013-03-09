.class Lcom/android/mms/ui/ComposeMessageScrollView$3;
.super Ljava/lang/Object;
.source "ComposeMessageScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageScrollView;->reLayoutComposeModeScrollView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

.field final synthetic val$h:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageScrollView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->val$h:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$200(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->val$h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$200(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$3;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$200(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 289
    return-void
.end method
