.class Lcom/android/providers/contacts/HtcUtils/NotificationUtils$2;
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
    .line 160
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$2;->this$0:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->updateNotification(I)V

    .line 163
    return-void
.end method
