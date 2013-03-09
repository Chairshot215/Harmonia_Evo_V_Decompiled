.class Lcom/google/android/talk/fragments/SearchChatResultFragment$2;
.super Ljava/lang/Object;
.source "SearchChatResultFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;->showRetryAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->retry()V

    .line 663
    return-void
.end method
