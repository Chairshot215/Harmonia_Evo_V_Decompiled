.class Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcUtils/NotificationUtils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;->this$0:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    const-string v1, "TYPE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, type:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v1, "UnE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->clearNotification(I)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->clearNotification(I)V

    goto :goto_0
.end method
