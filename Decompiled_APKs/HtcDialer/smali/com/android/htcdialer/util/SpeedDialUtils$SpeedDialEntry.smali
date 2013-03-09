.class public final Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
.super Ljava/lang/Object;
.source "SpeedDialUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/SpeedDialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDialEntry"
.end annotation


# instance fields
.field public _id:J

.field public data_id:J

.field public displayString:Ljava/lang/String;

.field public location:I

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public raw_contact_id:J

.field public record_location:J

.field public record_number:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method
