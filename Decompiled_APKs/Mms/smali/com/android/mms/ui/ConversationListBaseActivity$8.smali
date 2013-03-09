.class Lcom/android/mms/ui/ConversationListBaseActivity$8;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->updateStatusNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$8;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$8;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 2596
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$8;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 2599
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$8;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 2601
    return-void
.end method
