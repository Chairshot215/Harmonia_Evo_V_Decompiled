.class Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRemovedDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SIMRemovedDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SIMRemovedDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/SIMRemovedDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;->this$0:Lcom/android/phone/SIMRemovedDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SIMRemovedDialogActivity;Lcom/android/phone/SIMRemovedDialogActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;-><init>(Lcom/android/phone/SIMRemovedDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, state:Ljava/lang/String;
    const-string v2, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;->this$0:Lcom/android/phone/SIMRemovedDialogActivity;

    invoke-virtual {v2}, Lcom/android/phone/SIMRemovedDialogActivity;->finish()V

    .line 100
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    return-void
.end method
