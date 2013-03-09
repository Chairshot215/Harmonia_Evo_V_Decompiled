.class public Lcom/htc/android/mail/meeting/MeetingRequest$BusyStatus;
.super Ljava/lang/Object;
.source "MeetingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusyStatus"
.end annotation


# static fields
.field public static final Busy:I = 0x0

.field public static final Free:I = 0x1

.field public static final OutOfOffice:I = 0x3

.field public static final Tentative:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
