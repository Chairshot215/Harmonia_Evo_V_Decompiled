.class Lcom/google/android/talk/ChatView$PhoneMessageBar$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$PhoneMessageBar;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$PhoneMessageBar;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$PhoneMessageBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3557
    iput-object p1, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar$1;->this$1:Lcom/google/android/talk/ChatView$PhoneMessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar$1;->this$1:Lcom/google/android/talk/ChatView$PhoneMessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->mMessageBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 3561
    return-void
.end method
