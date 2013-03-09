.class public Lcom/htc/htcsettingwidgets/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Widget.SettingUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 11
    goto :goto_0
.end method
