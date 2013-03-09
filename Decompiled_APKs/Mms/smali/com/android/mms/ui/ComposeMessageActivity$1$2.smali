.class Lcom/android/mms/ui/ComposeMessageActivity$1$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

.field final synthetic val$tid:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->val$tid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 1331
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->val$tid:I

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity$1;->removeMessages(I)V

    .line 1333
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->val$tid:I

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->val$tid:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1334
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1336
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method
