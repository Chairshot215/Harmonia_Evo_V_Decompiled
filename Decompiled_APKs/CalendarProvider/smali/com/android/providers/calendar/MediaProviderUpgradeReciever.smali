.class public Lcom/android/providers/calendar/MediaProviderUpgradeReciever;
.super Landroid/content/BroadcastReceiver;
.source "MediaProviderUpgradeReciever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;,
        Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;
    }
.end annotation


# static fields
.field private static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field private static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field private static final MEDIA_TYPE_AUDIO:I = 0x2

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_NONE:I = 0x0

.field private static final MEDIA_TYPE_PLAYLIST:I = 0x4

.field private static final MEDIA_TYPE_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaProviderUpgradeReciever"

.field private static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"

.field private static final where:Ljava/lang/String; = "alerts_ringtone IS NOT NULL  and alerts_ringtone like \'content://media%\'"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 60
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v2, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;-><init>(Lcom/android/providers/calendar/MediaProviderUpgradeReciever;Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 64
    .local v2, thread:Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;
    invoke-virtual {v2}, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->start()V

    .line 91
    .end local v2           #thread:Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v3, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v2, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;-><init>(Lcom/android/providers/calendar/MediaProviderUpgradeReciever;Landroid/content/ContentResolver;Landroid/content/Intent;)V

    .line 76
    .local v2, thread:Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;
    invoke-virtual {v2}, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->start()V

    goto :goto_0
.end method
