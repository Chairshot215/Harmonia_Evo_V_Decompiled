.class Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "HtcDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const/4 v3, 0x2

    #calls: Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const/4 v3, 0x3

    #calls: Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming setting has been updated, \"allow domestic\" is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"allow international\" is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->access$100(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    #calls: Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamAllowSettingsChange(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->access$300(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V

    return-void
.end method
