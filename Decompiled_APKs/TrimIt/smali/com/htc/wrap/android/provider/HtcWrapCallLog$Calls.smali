.class public Lcom/htc/wrap/android/provider/HtcWrapCallLog$Calls;
.super Ljava/lang/Object;
.source "HtcWrapCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final BEARER_HD_VOICE:I = 0x3

.field public static final BEARER_NO_SPECIFIED:I = 0x0

.field public static final BEARER_VIDEO:I = 0x2

.field public static final BEARER_VOICE:I = 0x1

.field public static final CALL_TYPE:Ljava/lang/String; = "callType"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CNAME:Ljava/lang/String; = "cname"

.field public static final CONTENT_URI_WITH_PHOTO:Landroid/net/Uri; = null

.field public static final CS_LOCAL_UUID:Ljava/lang/String; = "cs_local_uuid"

.field public static final CS_TIMESTAMP:Ljava/lang/String; = "cs_timestamp"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "calls"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapCallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;
    .locals 1
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "bearer"

    .prologue
    .line 84
    invoke-static/range {p0 .. p8}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
