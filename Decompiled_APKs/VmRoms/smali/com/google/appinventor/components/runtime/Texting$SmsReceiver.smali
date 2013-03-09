.class Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Texting;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/SmsMessage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-virtual {v2, v1, v0}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Simple"

    const-string v1, "Sms message suppposedly received but with no actual content."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
