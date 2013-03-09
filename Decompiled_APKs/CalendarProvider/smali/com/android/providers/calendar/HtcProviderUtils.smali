.class public Lcom/android/providers/calendar/HtcProviderUtils;
.super Ljava/lang/Object;
.source "HtcProviderUtils.java"


# static fields
.field public static final ACTION_CALENDARS_PICKER_CHANGED:Ljava/lang/String; = "action.calendars.picker.changed"

.field public static final ACTION_EVENT_CHANGED:Ljava/lang/String; = "com.htc.calendar.event_changed"

.field public static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGoogleEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 30
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHTCExchangeEvent(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHTCPCSyncEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 26
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHtcBirthdayEvents(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 34
    const-string v0, "HTC_BirthdayEvent"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
