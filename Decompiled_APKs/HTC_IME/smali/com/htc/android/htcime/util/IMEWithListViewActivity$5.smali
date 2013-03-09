.class Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "IMEWithListViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/IMEWithListViewActivity;->receiverRegisterHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    #getter for: Lcom/htc/android/htcime/util/IMEWithListViewActivity;->WhoAmI:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->access$100(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->finish()V

    goto :goto_0
.end method
