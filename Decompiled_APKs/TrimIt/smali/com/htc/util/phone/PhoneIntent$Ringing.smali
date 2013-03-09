.class public Lcom/htc/util/phone/PhoneIntent$Ringing;
.super Ljava/lang/Object;
.source "PhoneIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/PhoneIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ringing"
.end annotation


# static fields
.field public static final ACTION_LOCKSCREEN_PHONE_STATE_CHANGE:Ljava/lang/String; = "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

.field public static final KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final KEY_CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final KEY_DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final KEY_DUE_DATE:Ljava/lang/String; = "due_date"

.field public static final KEY_EVENT_DESCRIPTION:Ljava/lang/String; = "event_descriptioin"

.field public static final KEY_EVENT_ICON:Ljava/lang/String; = "event_icon"

.field public static final KEY_HINT:Ljava/lang/String; = "hint"

.field public static final KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field public static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field public static final KEY_SN_ICON:Ljava/lang/String; = "sn_icon"

.field public static final KEY_SN_STATUS:Ljava/lang/String; = "sn_status"

.field public static final KEY_TASK_NAME:Ljava/lang/String; = "task_name"

.field public static final VALUE_CALL_STATE_IDLE:I = 0x0

.field public static final VALUE_CALL_STATE_OFFHOOK:I = 0x2

.field public static final VALUE_CALL_STATE_RINGING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/phone/PhoneIntent$Ringing;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
