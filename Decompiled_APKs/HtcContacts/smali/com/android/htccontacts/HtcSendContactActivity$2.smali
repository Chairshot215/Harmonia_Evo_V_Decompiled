.class Lcom/android/htccontacts/HtcSendContactActivity$2;
.super Ljava/lang/Thread;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/htccontacts/HtcSendContactActivity;->access$000(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->access$002(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$400(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    return-void
.end method
