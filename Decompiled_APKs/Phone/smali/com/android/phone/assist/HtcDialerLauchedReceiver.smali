.class public Lcom/android/phone/assist/HtcDialerLauchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDialerLauchedReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.htc.intent.action.LAUNCHDIALER"

.field public static final ENHANCED_PLUS_CODE_PREFIX_COUNTRY:Ljava/lang/String; = "enhanced_plus_code_prefix_country"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcDialerLauchedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 24
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 32
    .local v4, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, countryIso:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getCurrentPrefixCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPrefixDirectly(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 58
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v3, target:Landroid/content/Intent;
    const-class v5, Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const-string v5, "diagId"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "countryIso"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v5, "countryIso"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
