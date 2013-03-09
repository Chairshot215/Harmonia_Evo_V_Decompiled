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

    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getButtonAction()Landroid/app/NotificationButtonAction;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    return-object v0
.end method

.method public getCharmMode()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->charmMode:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getJogMode()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->jogMode:I

    return v0
.end method

.method public setButtonAction(Landroid/app/NotificationButtonAction;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    return-void
.end method

.method public setCharmMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->charmMode:I

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setJogMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->jogMode:I

    return-void
.end method
