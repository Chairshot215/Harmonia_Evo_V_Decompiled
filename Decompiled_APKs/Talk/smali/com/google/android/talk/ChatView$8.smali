.class Lcom/google/android/talk/ChatView$8;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 3032
    iput-object p1, p0, Lcom/google/android/talk/ChatView$8;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/google/android/talk/ChatView$8;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$8;->this$0:Lcom/google/android/talk/ChatView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    .line 3036
    const/4 v0, 0x1

    return v0
.end method
