.class public Lcom/android/phone/ToggleCfuQueryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToggleCfuQueryBroadcastReceiver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cfu_query_when_campon"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move v1, v2

    .line 44
    .local v1, toggleCFU:Z
    :goto_0
    const-string v5, "Phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggle CFU query to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cfu_query_when_campon"

    if-nez v1, :cond_4

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    const v0, 0x7f0e0078

    .line 49
    .local v0, toState:I
    if-nez v1, :cond_0

    .line 50
    const v0, 0x7f0e0077

    .line 52
    :cond_0
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v0           #toState:I
    .end local v1           #toggleCFU:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 42
    goto :goto_0

    .restart local v1       #toggleCFU:Z
    :cond_3
    move v4, v3

    .line 44
    goto :goto_1

    :cond_4
    move v2, v3

    .line 45
    goto :goto_2
.end method
