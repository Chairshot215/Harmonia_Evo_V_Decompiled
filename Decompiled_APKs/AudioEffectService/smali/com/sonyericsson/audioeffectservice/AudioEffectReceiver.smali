.class public Lcom/sonyericsson/audioeffectservice/AudioEffectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectReceiver.java"


# static fields
.field public static final AUDIOEFFECT_SERVICE_LOG_DEBUG:Z = false

.field public static final AUDIOEFFECT_SERVICE_LOG_ERROR:Z = true

.field public static final AUDIOEFFECT_SERVICE_LOG_INFO:Z = true

.field public static final AUDIOEFFECT_SERVICE_LOG_VERBOSE:Z = false

.field public static final AUDIOEFFECT_SERVICE_LOG_WARN:Z = true

.field private static final TAG:Ljava/lang/String; = "AudioEffectReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method
