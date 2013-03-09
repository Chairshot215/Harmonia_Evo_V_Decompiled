.class Lcom/google/android/gm/GmailAnimatedAdapter$1;
.super Ljava/lang/Object;
.source "GmailAnimatedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/GmailAnimatedAdapter;->swapMailCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

.field final synthetic val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GmailAnimatedAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gm/GmailAnimatedAdapter$1;->this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

    iput-object p2, p0, Lcom/google/android/gm/GmailAnimatedAdapter$1;->val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/GmailAnimatedAdapter$1;->this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

    iget-object v1, p0, Lcom/google/android/gm/GmailAnimatedAdapter$1;->val$conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    #calls: Lcom/google/android/gm/GmailAnimatedAdapter;->diff(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    invoke-static {v0, v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->access$000(Lcom/google/android/gm/GmailAnimatedAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 40
    return-void
.end method
