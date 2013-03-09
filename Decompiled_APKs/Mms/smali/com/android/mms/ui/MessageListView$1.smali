.class Lcom/android/mms/ui/MessageListView$1;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$1;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$1;->this$0:Lcom/android/mms/ui/MessageListView;

    #getter for: Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$1;->this$0:Lcom/android/mms/ui/MessageListView;

    #getter for: Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$1;->this$0:Lcom/android/mms/ui/MessageListView;

    #getter for: Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 506
    :cond_0
    return-void
.end method
