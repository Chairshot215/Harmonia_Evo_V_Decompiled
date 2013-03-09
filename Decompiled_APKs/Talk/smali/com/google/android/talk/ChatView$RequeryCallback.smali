.class Lcom/google/android/talk/ChatView$RequeryCallback;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/google/android/talk/ChatView$RequeryCallback;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$RequeryCallback;-><init>(Lcom/google/android/talk/ChatView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/android/talk/ChatView$RequeryCallback;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->requeryForChatHistory()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3800(Lcom/google/android/talk/ChatView;)V

    .line 997
    return-void
.end method
