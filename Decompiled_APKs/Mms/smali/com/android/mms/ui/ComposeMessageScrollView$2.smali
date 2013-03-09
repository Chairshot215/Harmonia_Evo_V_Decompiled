.class Lcom/android/mms/ui/ComposeMessageScrollView$2;
.super Ljava/lang/Object;
.source "ComposeMessageScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageScrollView;
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
    .line 125
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageScrollView$2;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$2;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$100(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView$2;->this$0:Lcom/android/mms/ui/ComposeMessageScrollView;

    #getter for: Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->access$100(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    :cond_0
    return-void
.end method
