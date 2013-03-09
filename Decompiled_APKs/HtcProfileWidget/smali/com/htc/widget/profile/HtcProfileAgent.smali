.class public Lcom/htc/widget/profile/HtcProfileAgent;
.super Ljava/lang/Object;
.source "HtcProfileAgent.java"


# static fields
.field private static final VIBRATE_DURATION:I = 0x12c

.field private static mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileMode(Landroid/content/Context;)Lcom/htc/widget/profile/HtcProfileMode;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    sget-object v1, Lcom/htc/widget/profile/HtcProfileAgent;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/htc/widget/profile/HtcProfileAgent;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    :cond_0
    sget-object v1, Lcom/htc/widget/profile/HtcProfileAgent;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 42
    .local v0, ringerMode:I
    packed-switch v0, :pswitch_data_0

    .line 50
    :pswitch_0
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

    :goto_0
    return-object v1

    .line 44
    :pswitch_1
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->SILENT:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 48
    :pswitch_3
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static nextProfileMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/htc/widget/profile/HtcProfileAgent;->getProfileMode(Landroid/content/Context;)Lcom/htc/widget/profile/HtcProfileMode;

    move-result-object v1

    .line 81
    .local v1, profileMode:Lcom/htc/widget/profile/HtcProfileMode;
    invoke-virtual {v1}, Lcom/htc/widget/profile/HtcProfileMode;->getIndex()I

    move-result v0

    .line 84
    .local v0, index:I
    invoke-static {}, Lcom/htc/widget/profile/HtcProfileMode;->supportOutdoorMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v0, v2, 0x4

    .line 89
    :goto_0
    invoke-static {p0, v0}, Lcom/htc/widget/profile/HtcProfileAgent;->setProfileMode(Landroid/content/Context;I)Lcom/htc/widget/profile/HtcProfileMode;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/htc/widget/profile/HtcProfileMode;->getStringResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    return-void

    .line 87
    :cond_0
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v0, v2, 0x3

    goto :goto_0
.end method

.method public static setProfileMode(Landroid/content/Context;I)Lcom/htc/widget/profile/HtcProfileMode;
    .locals 4
    .parameter "context"
    .parameter "index"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/htc/widget/profile/HtcProfileMode;->getProfileMode(I)Lcom/htc/widget/profile/HtcProfileMode;

    move-result-object v0

    .line 65
    .local v0, profileMode:Lcom/htc/widget/profile/HtcProfileMode;
    sget-object v2, Lcom/htc/widget/profile/HtcProfileAgent;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcProfileMode;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 68
    sget-object v2, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    if-ne v0, v2, :cond_0

    .line 69
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 71
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 73
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_0
    return-object v0
.end method
