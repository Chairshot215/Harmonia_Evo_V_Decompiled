.class Lcom/google/android/talk/fragments/ChatScreenFragment$12;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onResume()V
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
    .line 1644
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$12;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1647
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 1648
    .local v0, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onActivityResume()V

    .line 1649
    const/4 v1, 0x1

    return v1
.end method
