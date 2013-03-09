.class Lcom/android/htccontacts/HtcViewContactDetailActivity$6;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->createCompositeSendMsgDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3869
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3872
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #getter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v7, "number"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3874
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v4, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3875
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3877
    move v0, p2

    .line 3878
    .local v0, finalWhich:I
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$6;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->getCompositeSendMsgRunnable(I)Ljava/lang/Runnable;
    invoke-static {v4, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1200(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)Ljava/lang/Runnable;

    move-result-object v2

    .line 3879
    .local v2, r:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3880
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3881
    return-void
.end method
