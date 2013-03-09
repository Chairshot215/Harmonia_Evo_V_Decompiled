.class public final Lcom/sonyericsson/audioeffectservice/XLoudAdapter;
.super Ljava/lang/Object;
.source "XLoudAdapter.java"


# static fields
.field public static final INTENT_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_EXTRA_XLOUD_STATUS:Ljava/lang/String; = "com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS"

.field private static final INTENT_XLOUD_REQUEST:Ljava/lang/String; = "com.sonyericsson.audioeffectservice.intent.action.XLOUD_REQUEST"

.field private static final INTENT_XLOUD_STATUS:Ljava/lang/String; = "com.sonyericsson.audioeffectservice.intent.action.XLOUD_STATUS"

.field private static final TAG:Ljava/lang/String; = "XLoudAdapter"

#the value of this static final field might be set in the static constructor
.field private static final XLOUD_DEFAULT:Z = false

.field private static final XLOUD_ENABLED:Ljava/lang/String; = "com.sonyericsson.xloud_enabled"

.field private static final XLOUD_PARAMETER:Ljava/lang/String; = "xloud_enabled="

.field private static final XLOUD_PRODUCT_DEFAULT:Ljava/lang/String; = "ro.semc.xloud.default_setting"


# instance fields
.field private mXLoud:Lcom/sonyericsson/audioeffect/XLoud;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "ro.semc.xloud.default_setting"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->XLOUD_DEFAULT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->createXLoud()V

    .line 73
    return-void
.end method

.method private createXLoud()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    invoke-virtual {v1}, Lcom/sonyericsson/audioeffect/XLoud;->release()V

    .line 180
    iput-object v4, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sonyericsson/audioeffect/XLoud;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/audioeffect/XLoud;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "XLoudAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createXLoud : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object v4, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    goto :goto_0
.end method

.method private loadFromSystemSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 107
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "com.sonyericsson.xloud_enabled"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 113
    .local v1, enabled:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    if-nez v3, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->createXLoud()V

    .line 117
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->setEnabledAndParameters(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->saveToSystemSettings(Landroid/content/Context;Z)V

    .line 120
    :cond_1
    return-void

    .end local v1           #enabled:Z
    :cond_2
    move v1, v4

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v1, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->XLOUD_DEFAULT:Z

    .line 110
    .restart local v1       #enabled:Z
    const-string v5, "com.sonyericsson.xloud_enabled"

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private saveToSystemSettings(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sonyericsson.xloud_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendXLoudBroadcast(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.audioeffectservice.intent.action.XLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 152
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEnabledAndParameters(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 200
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/audioeffect/XLoud;->setEnabled(Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xloud_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->sendXLoudBroadcast(Landroid/content/Context;Z)V

    .line 203
    const/4 v1, 0x1

    .line 211
    :goto_0
    return v1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    invoke-virtual {v2}, Lcom/sonyericsson/audioeffect/XLoud;->release()V

    .line 207
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    .line 209
    :cond_1
    const-string v2, "xloud_enabled=false"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->sendXLoudBroadcast(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private setEnabledAndSaveToSystemSettings(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->mXLoud:Lcom/sonyericsson/audioeffect/XLoud;

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->createXLoud()V

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->setEnabledAndParameters(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->saveToSystemSettings(Landroid/content/Context;Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->saveToSystemSettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->loadFromSystemSettings(Landroid/content/Context;)V

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonyericsson.audioeffectservice.intent.action.XLOUD_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    const-string v2, "com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, status:I
    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_3

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->setEnabledAndSaveToSystemSettings(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_3
    const-string v1, "XLoudAdapter"

    const-string v2, "Illegal intent extra value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0           #status:I
    :cond_4
    const-string v1, "XLoudAdapter"

    const-string v2, "Illegal intent action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recreateObject(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "com.sonyericsson.xloud_enabled"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 168
    .local v1, enabled:Z
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->createXLoud()V

    .line 169
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->setEnabledAndParameters(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->saveToSystemSettings(Landroid/content/Context;Z)V

    .line 172
    :cond_0
    return-void

    .end local v1           #enabled:Z
    :cond_1
    move v1, v3

    .line 161
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v1, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->XLOUD_DEFAULT:Z

    .line 164
    .restart local v1       #enabled:Z
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->saveToSystemSettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method
