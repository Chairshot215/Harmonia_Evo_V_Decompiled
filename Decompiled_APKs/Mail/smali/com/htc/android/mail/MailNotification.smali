.class public abstract Lcom/htc/android/mail/MailNotification;
.super Ljava/lang/Object;
.source "MailNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailNotification$NotificationType;
    }
.end annotation


# instance fields
.field protected mAccountId:I

.field protected mCurrTime:J

.field protected mDesc:Ljava/lang/String;

.field protected mIconResource:I

.field protected mNotifyContext:Landroid/content/Context;

.field protected mNotifyUri:Landroid/net/Uri;

.field protected mRowId:J

.field protected mTarget:Landroid/content/Intent;

.field protected mTicker:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected static flashOnJogball()Z
    .locals 1

    .prologue
    .line 69
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x39 -> :sswitch_0
        0xa8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static flashOnLed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static insertDatabase(JLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "id"
    .parameter "values"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    invoke-interface {v1, v2, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public abstract showNotification(J)I
.end method
