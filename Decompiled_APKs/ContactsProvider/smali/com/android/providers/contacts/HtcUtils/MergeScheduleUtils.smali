.class public final Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;
.super Ljava/lang/Object;
.source "MergeScheduleUtils.java"


# static fields
.field public static final HTC_SYNC_COMPLETE:Ljava/lang/String; = "psclient.intent.action.sync_end"

.field public static final HTC_SYNC_START:Ljava/lang/String; = "psclient.intent.action.sync_begin"

.field public static final HTC_SYNC_STOP:Ljava/lang/String; = "psclient.intent.action.stop_sync"

.field private static isHTCSyncEnd:Z

.field private static isHTCSyncStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncStart:Z

    .line 34
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncEnd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHTCSyncEnd()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncEnd:Z

    return v0
.end method

.method public static getHTCSyncStart()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncStart:Z

    return v0
.end method

.method public static setHTCSyncEnd(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 49
    sput-boolean p0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncEnd:Z

    .line 50
    return-void
.end method

.method public static setHTCSyncStart(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->isHTCSyncStart:Z

    .line 46
    return-void
.end method
