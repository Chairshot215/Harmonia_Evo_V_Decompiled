.class Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->handleMessage_Debug(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

.field final synthetic val$counts:[I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;->val$counts:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;->this$1:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;->val$counts:[I

    invoke-static {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts([I)V

    .line 2015
    :cond_0
    return-void
.end method
