.class Lcom/google/android/talk/AlertNotificationActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AlertNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AlertNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 57
    .local v0, km:Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationActivity;

    #calls: Lcom/google/android/talk/AlertNotificationActivity;->handleScreenOff(Landroid/app/KeyguardManager;)V
    invoke-static {v1, v0}, Lcom/google/android/talk/AlertNotificationActivity;->access$000(Lcom/google/android/talk/AlertNotificationActivity;Landroid/app/KeyguardManager;)V

    .line 58
    return-void
.end method
