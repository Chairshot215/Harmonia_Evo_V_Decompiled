.class Lcom/google/android/talk/ChatView$17;
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
    .line 3176
    iput-object p1, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3179
    iget-object v1, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v0, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/talk/ChatView;->goOffTheRecord(Z)V

    .line 3180
    return-void

    .line 3179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
