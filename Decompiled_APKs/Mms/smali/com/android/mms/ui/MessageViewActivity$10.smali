.class Lcom/android/mms/ui/MessageViewActivity$10;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity;->updateStatusNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 2014
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 2015
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 2017
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$10;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;)V

    .line 2019
    return-void
.end method
