.class Lcom/google/android/talk/ChatView$15;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 3133
    iput-object p1, p0, Lcom/google/android/talk/ChatView$15;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/google/android/talk/ChatView$15;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mDispatcher:Lcom/google/android/talk/videochat/CallTaskDispatcher;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/CallTaskDispatcher;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$15$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$15$1;-><init>(Lcom/google/android/talk/ChatView$15;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    .line 3154
    return-void
.end method
