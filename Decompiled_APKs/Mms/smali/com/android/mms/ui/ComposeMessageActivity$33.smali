.class Lcom/android/mms/ui/ComposeMessageActivity$33;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->updateStatusNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7154
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7158
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 7161
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 7164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 7166
    return-void
.end method
