.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASMeetingResp"
.end annotation


# instance fields
.field public calendarEventId:J

.field public collId:Ljava/lang/String;

.field public meetResp:I

.field public requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 656
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
