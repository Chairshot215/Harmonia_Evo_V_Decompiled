.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;
.super Landroid/database/ContentObserver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NationRoamingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "national_roaming_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingDisabled()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingEnabled()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto :goto_0
.end method
