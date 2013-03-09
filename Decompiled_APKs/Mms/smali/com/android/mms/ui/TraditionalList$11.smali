.class Lcom/android/mms/ui/TraditionalList$11;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2080
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty folder is clicked and unlock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z
    invoke-static {v2}, Lcom/android/mms/ui/TraditionalList;->access$1300(Lcom/android/mms/ui/TraditionalList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/16 v2, 0x4e93

    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$11;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z
    invoke-static {v3}, Lcom/android/mms/ui/TraditionalList;->access$1300(Lcom/android/mms/ui/TraditionalList;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2086
    return-void
.end method
