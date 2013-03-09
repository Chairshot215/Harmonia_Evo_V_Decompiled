.class public Lcom/android/phone/HtcCdmaGloableRoamingUtil;
.super Ljava/lang/Object;
.source "HtcCdmaGloableRoamingUtil.java"


# static fields
.field public static final GLOBAL_ROAMING_ALL_TRIPS:I = 0x1

.field public static final GLOBAL_ROAMING_DENY:I = 0x0

.field public static final GLOBAL_ROAMING_THIS_TRIPS:I = 0x2

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final NETWORK_STATE_HOME_NETWORK:I = 0x1

.field public static final NETWORK_STATE_INIT:I = 0x0

.field public static final NETWORK_STATE_NO_SERVICE:I = 0x3

.field public static final NETWORK_STATE_ROAMING_NETWORK:I = 0x2

.field public static final NETWORK_STATE_STR:[Ljava/lang/String; = null

.field public static final PREFER_AUTO_SET_DENY_KEY:Ljava/lang/String; = "prefer_auto_set_deny"

.field public static final PREFER_SHOW_ROAMING_OPTION_KEY:Ljava/lang/String; = "prefer_show_roaming_option"

.field private static bNeedAutoSetDeny:Z

.field private static bNeedShowRoamingOption:Z

.field public static nNetworkState:I


# instance fields
.field private DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    const-string v0, "HtcCdmaGloableRoamingUtil"

    sput-object v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    .line 23
    sput-boolean v3, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    .line 24
    sput-boolean v3, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NETWORK_STATE_INIT"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "HOME_NETWORK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ROAMING_NETWORK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NO_SERVICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->NETWORK_STATE_STR:[Ljava/lang/String;

    .line 31
    sput v3, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->DBG:Z

    return-void
.end method

.method public static InitPreference(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "prefer_show_roaming_option"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initial bNeedShowRoamingOption"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefer_show_roaming_option"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    sput-boolean v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    .line 147
    :cond_0
    const-string v1, "prefer_show_roaming_option"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    .line 149
    const-string v1, "prefer_auto_set_deny"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initial bNeedAutoSetDeny"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefer_auto_set_deny"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    sput-boolean v3, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    .line 155
    :cond_1
    const-string v1, "prefer_auto_set_deny"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    .line 156
    return-void
.end method

.method public static getMobileDataEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    .line 67
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public static getNeedAutoSetDeny()Z
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedAutoSetDeny():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-boolean v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    return v0
.end method

.method public static getNeedShowRoamingOption()Z
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedShowRoamingOption():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-boolean v0, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    return v0
.end method

.method public static localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I
    .locals 6
    .parameter "mPhone"

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getGlobalDataRoamingOption"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 40
    .local v2, result:I
    sget-object v3, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localGetGlobalRoamingOption:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #result:I
    :goto_0
    return v2

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter "mPhone"
    .parameter "value"

    .prologue
    .line 52
    :try_start_0
    sget-object v4, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localSetGlobalRoamingOption:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    .line 54
    .local v2, par:[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setGlobalDataRoamingOption"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    .line 57
    .local v3, parObj:[Ljava/lang/Object;
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #par:[Ljava/lang/Class;
    .end local v3           #parObj:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setNeedAutoSetDeny(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 178
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNeedAutoSetDeny():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sput-boolean p1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedAutoSetDeny:Z

    .line 180
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefer_auto_set_deny"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public static setNeedShowRoamingOption(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 165
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNeedShowRoamingOption():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sput-boolean p1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->bNeedShowRoamingOption:Z

    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefer_show_roaming_option"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method protected static triggerAllowDialog(Landroid/content/Context;Z)V
    .locals 3
    .parameter "mContext"
    .parameter "open"

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, roamingDialog:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const-class v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    if-eqz p1, :cond_0

    .line 113
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 114
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "show Allow charge dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "global_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void

    .line 129
    :cond_0
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close Allow charge dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v1, "global_dialog"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static triggerRoamingDialog(Landroid/content/Context;Z)V
    .locals 3
    .parameter "mContext"
    .parameter "open"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, roamingDialog:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-class v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    if-eqz p1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->setNeedShowRoamingOption(Landroid/content/Context;Z)V

    .line 81
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "show ROAMING Option dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "global_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void

    .line 97
    :cond_0
    sget-object v1, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close ROAMING Option dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "global_dialog"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
