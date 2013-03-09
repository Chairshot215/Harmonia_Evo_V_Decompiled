.class public Lcom/htc/idlescreen/base/util/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MyUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 35
    if-gtz p2, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 40
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/idlescreen/base/util/MyUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 41
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 45
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MyUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconFromPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKT()Z
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :cond_0
    return v0
.end method

.method public static isSBM()Z
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 54
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 55
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 58
    :cond_0
    return v0
.end method

.method public static isShowEmergencyHint(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 103
    .local v0, isAUS:Z
    :cond_1
    goto :goto_0
.end method

.method public static isVZWLTE()Z
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 73
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 24
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 25
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    move-object v0, p0

    .line 27
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 29
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method public static removeMessage(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static safe_parseInt(Ljava/lang/String;)I
    .locals 4
    .parameter "intStr"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, iRet:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safe_parseInt~ parse error e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 108
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 124
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 2
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
