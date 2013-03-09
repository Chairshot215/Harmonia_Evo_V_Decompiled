.class Lcom/android/internal/telephony/SMSDispatcher$8$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SMSDispatcher$8;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$8$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->syncCmasServiceTable()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "SMS"

    const-string v4, "Cannot get BCSMS service number"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.message.CMAS_SYNC_SERVICE_TABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "cmas_service_table"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$8$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$8;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
