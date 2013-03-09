.class Lcom/google/android/talk/fragments/ChatScreenFragment$14;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onDestroy()V
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
    .line 1749
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 1752
    move-object v1, p1

    check-cast v1, Lcom/google/android/talk/ChatView;

    .line 1753
    .local v1, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1754
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1755
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1757
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
