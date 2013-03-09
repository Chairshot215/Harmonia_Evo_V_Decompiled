.class public Lcom/htc/wrap/android/media/HtcWrapRingtoneManager;
.super Landroid/media/RingtoneManager;
.source "HtcWrapRingtoneManager.java"


# static fields
.field public static final ACTION_HTC_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method
