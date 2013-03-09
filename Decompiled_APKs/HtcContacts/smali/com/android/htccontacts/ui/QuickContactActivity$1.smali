.class Lcom/android/htccontacts/ui/QuickContactActivity$1;
.super Landroid/os/Handler;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactActivity$1;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 65
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    .line 78
    .local v2, lookupUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactActivity$1;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "email"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, email:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, phone:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 82
    const-string v4, "QuickContactActivity"

    const-string v5, "lookupUri, email and phone data are empty, close QuickContactActivity!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactActivity$1;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    const v5, 0x7f0a02e5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactActivity$1;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/QuickContactActivity;->finish()V

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactActivity$1;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    #calls: Lcom/android/htccontacts/ui/QuickContactActivity;->processOnNewIntentAfterLookupFixed(Landroid/net/Uri;)V
    invoke-static {v4, v2}, Lcom/android/htccontacts/ui/QuickContactActivity;->access$000(Lcom/android/htccontacts/ui/QuickContactActivity;Landroid/net/Uri;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
