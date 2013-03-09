.class public Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;
.super Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;
.source "WidgetScreenTimeout.java"


# instance fields
.field private final mnTimeOutSetting:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->mnTimeOutSetting:[I

    return-void

    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getCurrentSetting()I
    .locals 8

    .prologue
    .line 22
    const/4 v3, 0x2

    .line 23
    .local v3, nRet:I
    iget-object v5, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 25
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    const-string v5, "screen_off_timeout"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 31
    .local v4, nSetting:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->mnTimeOutSetting:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 33
    iget-object v5, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->mnTimeOutSetting:[I

    aget v5, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    .line 35
    move v3, v2

    .line 46
    .end local v2           #i:I
    .end local v4           #nSetting:I
    :cond_0
    :goto_1
    const-string v5, "HtcScreenTimeoutWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCurrentSetting: nRet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->mnTimeOutSetting:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v3

    .line 31
    .restart local v2       #i:I
    .restart local v4       #nSetting:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2           #i:I
    .end local v4           #nSetting:I
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 0
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    .line 17
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public pressIcon()V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v1

    .line 54
    .local v1, n_Setting:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 58
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v2, 0x3

    .line 59
    const-string v2, "screen_off_timeout"

    iget-object v3, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->mnTimeOutSetting:[I

    aget v3, v3, v1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    :cond_0
    return-void
.end method
