.class public Lcom/android/phone/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final PHONE_UI_BUTTON_CLICK:I = 0x1129f

.field public static final PHONE_UI_ENTER:I = 0x1129d

.field public static final PHONE_UI_EXIT:I = 0x1129e

.field public static final PHONE_UI_MULTIPLE_QUERY:I = 0x112a1

.field public static final PHONE_UI_RINGER_QUERY_ELAPSED:I = 0x112a0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writePhoneUiButtonClick(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 37
    const v0, 0x1129f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 38
    return-void
.end method

.method public static writePhoneUiEnter()V
    .locals 2

    .prologue
    .line 29
    const v0, 0x1129d

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 30
    return-void
.end method

.method public static writePhoneUiExit()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x1129e

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 34
    return-void
.end method

.method public static writePhoneUiMultipleQuery()V
    .locals 2

    .prologue
    .line 45
    const v0, 0x112a1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 46
    return-void
.end method

.method public static writePhoneUiRingerQueryElapsed()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x112a0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 42
    return-void
.end method
