.class public Lcom/htc/wrap/android/media/HtcWrapRingtone;
.super Landroid/media/Ringtone;
.source "HtcWrapRingtone.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getUri(Landroid/media/Ringtone;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setLooping(Landroid/media/Ringtone;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->setLooping(Z)V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setLooping(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/media/Ringtone;->setLooping(Z)V

    return-void
.end method
