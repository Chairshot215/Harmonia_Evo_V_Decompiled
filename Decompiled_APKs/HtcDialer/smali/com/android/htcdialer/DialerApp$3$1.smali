.class Lcom/android/htcdialer/DialerApp$3$1;
.super Ljava/lang/Object;
.source "DialerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/DialerApp$3;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/DialerApp$3;

.field final synthetic val$roaming:Z


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerApp$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/htcdialer/DialerApp$3$1;->this$1:Lcom/android/htcdialer/DialerApp$3;

    iput-boolean p2, p0, Lcom/android/htcdialer/DialerApp$3$1;->val$roaming:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v2, p0, Lcom/android/htcdialer/DialerApp$3$1;->this$1:Lcom/android/htcdialer/DialerApp$3;

    iget-object v2, v2, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v2}, Lcom/android/htcdialer/DialerApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 243
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "home_dialing_roaming_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    .local v0, lastRoaming:Z
    const-string v2, "home_dialing_roaming_state"

    iget-boolean v3, p0, Lcom/android/htcdialer/DialerApp$3$1;->val$roaming:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 251
    iget-boolean v2, p0, Lcom/android/htcdialer/DialerApp$3$1;->val$roaming:Z

    if-eq v2, v0, :cond_0

    .line 252
    iget-boolean v2, p0, Lcom/android/htcdialer/DialerApp$3$1;->val$roaming:Z

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "home_dialing_should_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v2, "home_dialing_pref"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 257
    const-string v2, "home_dialing_country_code"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    const-string v2, "home_dialing_trunk_code"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
