.class public Lcom/android/mms/ui/SMSNotificationPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SMSNotificationPreferenceActivity.java"


# static fields
.field private static sThis:Lcom/android/mms/ui/SMSNotificationPreferenceActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SMSNotificationPreferenceActivity;->sThis:Lcom/android/mms/ui/SMSNotificationPreferenceActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/SMSNotificationPreferenceActivity;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/mms/ui/SMSNotificationPreferenceActivity;->sThis:Lcom/android/mms/ui/SMSNotificationPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SMSNotificationPreferenceActivity;->addPreferencesFromResource(I)V

    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SMSNotificationPreferenceActivity;->sThis:Lcom/android/mms/ui/SMSNotificationPreferenceActivity;

    .line 25
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 30
    sput-object p0, Lcom/android/mms/ui/SMSNotificationPreferenceActivity;->sThis:Lcom/android/mms/ui/SMSNotificationPreferenceActivity;

    .line 31
    return-void
.end method
