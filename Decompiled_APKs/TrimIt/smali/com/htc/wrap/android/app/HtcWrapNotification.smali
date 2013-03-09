.class public Lcom/htc/wrap/android/app/HtcWrapNotification;
.super Landroid/app/Notification;
.source "HtcWrapNotification.java"


# static fields
.field public static final CHARM_INCOMING_CALL:I = 0x6

.field public static final CHARM_MISSED_CALL:I = 0x7

.field public static final CHARM_OFF:I = 0x0

.field public static final FLAG_CALL_FORWARD_EVENT:I = 0x200000

.field public static final FLAG_DLNA_GALLERY_EVENT:I = 0x100000

.field public static final FLAG_DLNA_MUSIC_EVENT:I = 0x80000

.field public static final FLAG_MSG_FORWARD_EVENT:I = 0x400000

.field public static final FLAG_MUSIC_EVENT:I = 0x40000

.field public static final FLAG_ONTOP_EVENT:I = 0x20000

.field public static final FLAG_SHOW_CHARMS:I = 0x2000000

.field public static final FLAG_SHOW_JOGS:I = 0x10000

.field public static final FLAG_SOUND_ONLY_PREFERRED:I = 0x1000000

.field public static final JOG_BREATHING:I = 0x7

.field public static final JOG_OFF:I = 0x0

.field public static final JOG_SHORT_FLASH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 0
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getButtonAction()Landroid/app/NotificationButtonAction;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    return-object v0
.end method

.method public getCharmMode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/app/Notification;->charmMode:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getJogMode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Landroid/app/Notification;->jogMode:I

    return v0
.end method

.method public setButtonAction(Landroid/app/NotificationButtonAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 88
    iput-object p1, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 89
    return-void
.end method

.method public setCharmMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 66
    iput p1, p0, Landroid/app/Notification;->charmMode:I

    .line 67
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 77
    iput-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method public setJogMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 55
    iput p1, p0, Landroid/app/Notification;->jogMode:I

    .line 56
    return-void
.end method
