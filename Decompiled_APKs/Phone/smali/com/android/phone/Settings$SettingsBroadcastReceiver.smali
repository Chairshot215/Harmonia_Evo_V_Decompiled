.class Lcom/android/phone/Settings$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method private constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/android/phone/Settings$SettingsBroadcastReceiver;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1632
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$SettingsBroadcastReceiver;-><init>(Lcom/android/phone/Settings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1634
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1636
    iget-object v2, p0, Lcom/android/phone/Settings$SettingsBroadcastReceiver;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v2}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1637
    .local v1, enabled:Z
    :cond_0
    iget-object v2, p0, Lcom/android/phone/Settings$SettingsBroadcastReceiver;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSwitch:Z
    invoke-static {v2, v1}, Lcom/android/phone/Settings;->access$1302(Lcom/android/phone/Settings;Z)Z

    .line 1639
    .end local v1           #enabled:Z
    :cond_1
    return-void
.end method
