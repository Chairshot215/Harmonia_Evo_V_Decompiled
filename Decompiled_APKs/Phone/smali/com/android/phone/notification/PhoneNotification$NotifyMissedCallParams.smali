.class Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
.super Ljava/lang/Object;
.source "PhoneNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/notification/PhoneNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyMissedCallParams"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field missedCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/notification/PhoneNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;-><init>()V

    return-void
.end method
