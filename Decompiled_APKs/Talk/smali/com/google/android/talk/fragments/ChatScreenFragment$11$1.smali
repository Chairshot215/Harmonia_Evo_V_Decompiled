.class Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$11;->onDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1593
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v8

    .line 1594
    .local v8, cv:Lcom/google/android/talk/ChatView;
    if-eqz v8, :cond_0

    .line 1595
    invoke-virtual {v8}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, contact:Ljava/lang/String;
    new-instance v0, Lcom/google/android/videochat/CallState;

    const/16 v2, 0xd

    sget-object v6, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/videochat/CallState;-><init>(Ljava/lang/String;IZZZLcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    .line 1600
    .local v0, c:Lcom/google/android/videochat/CallState;
    const/4 v2, 0x0

    invoke-virtual {v8, v1, v0, v3, v2}, Lcom/google/android/talk/ChatView;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 1602
    .end local v0           #c:Lcom/google/android/videochat/CallState;
    .end local v1           #contact:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1603
    return-void
.end method
