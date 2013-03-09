.class Lcom/google/android/talk/fragments/ChatScreenFragment$13;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$13;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1691
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 1692
    .local v0, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onActivityPause()V

    .line 1693
    const/4 v1, 0x1

    return v1
.end method
