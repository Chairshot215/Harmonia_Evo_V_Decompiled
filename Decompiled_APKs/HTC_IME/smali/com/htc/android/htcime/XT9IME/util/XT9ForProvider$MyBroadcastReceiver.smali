.class Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XT9ForProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;->this$0:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;-><init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    const-string v1, "XT9ForProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MyBroadcastReceiver.onReceive] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;->this$0:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    #calls: Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->unregisterAll()V
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->access$200(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;)V

    .line 136
    :cond_0
    return-void
.end method
