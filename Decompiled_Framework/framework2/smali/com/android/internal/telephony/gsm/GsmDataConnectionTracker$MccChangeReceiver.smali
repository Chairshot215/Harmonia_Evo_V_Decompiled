.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MccChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "roamingOn"

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingDisabled()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto :goto_0
.end method
