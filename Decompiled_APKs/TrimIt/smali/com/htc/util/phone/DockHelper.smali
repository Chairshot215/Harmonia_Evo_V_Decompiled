.class public Lcom/htc/util/phone/DockHelper;
.super Ljava/lang/Object;
.source "DockHelper.java"


# static fields
.field public static final ACTION_HTCNAVI_BACKGROUND:Ljava/lang/String; = "com.htc.laputa.navi.action.HTCNAVI_BACKGROUND"

.field public static final ACTION_HTCNAVI_FOREGROUND:Ljava/lang/String; = "com.htc.laputa.navi.action.HTCNAVI_FOREGROUND"

#the value of this static final field might be set in the static constructor
.field private static final DEVICE_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_ENABLED:Z = false

.field public static final NAVIGATING:I = 0x1

.field public static final NO_NAVIGATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROJECT_ENABLED:Z = false

.field public static final PROP_NAVI_MODE:Ljava/lang/String; = "com.htc.laputa.NaviMode"

.field private static final TAG:Ljava/lang/String; = "DockHelper"

.field private static mInstance:Lcom/htc/util/phone/DockHelper;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/util/phone/DockHelper;->DEVICE_ENABLED:Z

    .line 45
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/util/phone/DockHelper;->PROJECT_ENABLED:Z

    .line 51
    sget-boolean v0, Lcom/htc/util/phone/DockHelper;->DEVICE_ENABLED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/htc/util/phone/DockHelper;->PROJECT_ENABLED:Z

    if-eqz v0, :cond_3

    :goto_2
    sput-boolean v2, Lcom/htc/util/phone/DockHelper;->FEATURE_ENABLED:Z

    return-void

    :cond_1
    move v0, v1

    .line 40
    goto :goto_0

    :cond_2
    move v0, v1

    .line 45
    goto :goto_1

    :cond_3
    move v2, v1

    .line 51
    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/htc/util/phone/DockHelper;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/htc/util/phone/DockHelper;

    invoke-direct {v0}, Lcom/htc/util/phone/DockHelper;-><init>()V

    sput-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    .line 85
    :cond_0
    sget-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    return-object v0
.end method


# virtual methods
.method public getOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 119
    .local v0, resultOrientation:I
    invoke-virtual {p0}, Lcom/htc/util/phone/DockHelper;->isDockMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    move v0, p1

    .line 123
    :cond_0
    return v0
.end method

.method public isDockMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    :try_start_0
    const-string v4, "TAG"

    const-string v5, "isDockMode() start getting navi setting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/htc/util/phone/DockHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com.htc.laputa.NaviMode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 98
    .local v1, isDockMode:Z
    :goto_0
    const-string v4, "TAG"

    const-string v5, "isDockMode() finish getting navi setting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-boolean v4, Lcom/htc/util/phone/DockHelper;->FEATURE_ENABLED:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 105
    .end local v1           #isDockMode:Z
    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 97
    goto :goto_0

    .restart local v1       #isDockMode:Z
    :cond_1
    move v2, v3

    .line 99
    goto :goto_1

    .line 100
    .end local v1           #isDockMode:Z
    :catch_0
    move-exception v0

    .line 101
    .local v0, exception:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDockMode() get setting fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #exception:Landroid/provider/Settings$SettingNotFoundException;
    :goto_2
    move v2, v3

    .line 105
    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, exception:Ljava/lang/NullPointerException;
    const-string v2, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDockMode() not set content resolver."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/util/phone/DockHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 132
    iput p1, p0, Lcom/htc/util/phone/DockHelper;->mMode:I

    .line 133
    return-void
.end method
