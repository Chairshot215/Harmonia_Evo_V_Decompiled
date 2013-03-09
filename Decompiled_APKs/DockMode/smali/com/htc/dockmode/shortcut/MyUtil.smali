.class public Lcom/htc/dockmode/shortcut/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MyUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 32
    if-gtz p2, :cond_1

    .line 33
    const/4 v0, 0x0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 37
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/dockmode/shortcut/MyUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 38
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 41
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 50
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 51
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 54
    :cond_0
    return v0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 19
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 21
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 22
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 23
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 25
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
    .line 108
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/dockmode/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 79
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/dockmode/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 94
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 2
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
