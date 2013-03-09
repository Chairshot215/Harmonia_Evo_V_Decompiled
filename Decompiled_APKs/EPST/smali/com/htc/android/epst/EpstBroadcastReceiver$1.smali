.class Lcom/htc/android/epst/EpstBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "EpstBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/EpstBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EpstBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EpstBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/android/epst/EpstBroadcastReceiver$1;->this$0:Lcom/htc/android/epst/EpstBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 36
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 37
    const-string v4, "EpstBroadcastReceiver"

    const-string v5, "MSG_INITIATE_RECEIVER"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, i:Landroid/content/Intent;
    sget-object v4, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-class v5, Lcom/htc/android/epst/EntryEPSTInfo;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    const/high16 v4, 0x1080

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-static {}, Lcom/htc/android/epst/EpstBroadcastReceiver;->access$000()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, host:Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, allowResetRefurbishData:Z
    const-string v4, "cdma733"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_RESET_REFURBISH_DATE_AND_STATUS:Z

    if-eqz v4, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_0
    const-string v4, "EpstBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcFeatureList.FEATURE_RESET_REFURBISH_DATE_AND_STATUS ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_RESET_REFURBISH_DATE_AND_STATUS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, "cdma"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "cdma33284"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cdma3424"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cdma733"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    .line 58
    :cond_2
    const-string v4, "cdma"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    sget-object v4, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v0           #allowResetRefurbishData:Z
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 60
    .restart local v0       #allowResetRefurbishData:Z
    .restart local v1       #data:Landroid/net/Uri;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #i:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/htc/android/epst/EpstBroadcastReceiver$1;->this$0:Lcom/htc/android/epst/EpstBroadcastReceiver;

    #getter for: Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z
    invoke-static {v4}, Lcom/htc/android/epst/EpstBroadcastReceiver;->access$100(Lcom/htc/android/epst/EpstBroadcastReceiver;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "EpstBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " this is not cdma secret id."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_5
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v4, p0, Lcom/htc/android/epst/EpstBroadcastReceiver$1;->this$0:Lcom/htc/android/epst/EpstBroadcastReceiver;

    #getter for: Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z
    invoke-static {v4}, Lcom/htc/android/epst/EpstBroadcastReceiver;->access$100(Lcom/htc/android/epst/EpstBroadcastReceiver;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "EpstBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after host id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0           #allowResetRefurbishData:Z
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    :cond_6
    const-string v4, "EpstBroadcastReceiver"

    const-string v5, "No thie message handler!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
