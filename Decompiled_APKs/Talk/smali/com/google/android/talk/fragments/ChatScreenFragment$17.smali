.class Lcom/google/android/talk/fragments/ChatScreenFragment$17;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$cv:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$17;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$17;->val$cv:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$17;->val$cv:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2330
    return-void
.end method
