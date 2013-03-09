.class public Lcom/android/phone/notification/PhoneNotification;
.super Ljava/lang/Object;
.source "PhoneNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/notification/PhoneNotification$1;,
        Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;,
        Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
    }
.end annotation


# static fields
.field private static final DIAL_PACKAGE_NAME:Ljava/lang/String; = "com.android.htccontacts"

.field private static final SELECT_ARG_DIALER_LAUNCH:Ljava/lang/String; = "%com.android.htccontacts/.DialerTabActivity%"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static updatePhoneShortcutWithMissedCall(Landroid/content/Context;I)V
    .locals 4
    .parameter "ctx"
    .parameter "missedNumber"

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;

    invoke-direct {v0, v2}, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;-><init>(Lcom/android/phone/notification/PhoneNotification$1;)V

    .line 58
    .local v0, params:Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
    iput-object p0, v0, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;->context:Landroid/content/Context;

    .line 59
    iput p1, v0, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;->missedCount:I

    .line 61
    new-instance v1, Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;

    invoke-direct {v1, v2}, Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;-><init>(Lcom/android/phone/notification/PhoneNotification$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method
