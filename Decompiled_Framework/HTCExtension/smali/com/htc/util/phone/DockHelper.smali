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

    const/4 v1, 0x0

    const/4 v2, 0x1

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

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/util/phone/DockHelper;->PROJECT_ENABLED:Z

    sget-boolean v0, Lcom/htc/util/phone/DockHelper;->DEVICE_ENABLED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/htc/util/phone/DockHelper;->PROJECT_ENABLED:Z

    if-eqz v0, :cond_3

    :goto_2
    sput-boolean v2, Lcom/htc/util/phone/DockHelper;->FEATURE_ENABLED:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/util/phone/DockHelper;
    .locals 1

    sget-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/util/phone/DockHelper;

    invoke-direct {v0}, Lcom/htc/util/phone/DockHelper;-><init>()V

    sput-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    :cond_0
    sget-object v0, Lcom/htc/util/phone/DockHelper;->mInstance:Lcom/htc/util/phone/DockHelper;

    return-object v0
.end method


# virtual methods
.method public getOrientation(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/util/phone/DockHelper;->isDockMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public isDockMode()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "TAG"

    const-string v5, "isDockMode() start getting navi setting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/util/phone/DockHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com.htc.laputa.NaviMode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "TAG"

    const-string v5, "isDockMode() finish getting navi setting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/htc/util/phone/DockHelper;->FEATURE_ENABLED:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

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

    :goto_2
    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v0

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

    iput-object p1, p0, Lcom/htc/util/phone/DockHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/phone/DockHelper;->mMode:I

    return-void
.end method
