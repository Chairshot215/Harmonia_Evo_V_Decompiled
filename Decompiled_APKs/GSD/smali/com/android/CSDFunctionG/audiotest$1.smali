.class Lcom/android/CSDFunctionG/audiotest$1;
.super Landroid/content/BroadcastReceiver;
.source "audiotest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/audiotest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/audiotest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/audiotest;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/CSDFunctionG/audiotest$1;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 273
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 275
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/CSDFunctionG/audiotest$1;->this$0:Lcom/android/CSDFunctionG/audiotest;

    #setter for: Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z
    invoke-static {v2, v3}, Lcom/android/CSDFunctionG/audiotest;->access$002(Lcom/android/CSDFunctionG/audiotest;Z)Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/android/CSDFunctionG/audiotest$1;->this$0:Lcom/android/CSDFunctionG/audiotest;

    const/4 v3, 0x1

    #setter for: Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z
    invoke-static {v2, v3}, Lcom/android/CSDFunctionG/audiotest;->access$002(Lcom/android/CSDFunctionG/audiotest;Z)Z

    goto :goto_0
.end method
