.class public Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibrarySubscriptionEntry.java"


# instance fields
.field public final initiationTimestampMs:J

.field public final isAutoRenewing:Z

.field public final trialUntilTimestampMs:J

.field public final validUntilTimestampMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJZJ)V
    .locals 11
    .parameter "accountName"
    .parameter "libraryId"
    .parameter "backend"
    .parameter "docId"
    .parameter "offerType"
    .parameter "initiationTimestampMs"
    .parameter "validUntilTimestampMs"
    .parameter "trialUntilTimestampMs"
    .parameter "autoRenewing"
    .parameter "documentHash"

    .prologue
    .line 23
    const/16 v7, 0xf

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v8, p5

    move-wide/from16 v9, p13

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    .line 25
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->initiationTimestampMs:J

    .line 26
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    .line 27
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    .line 28
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    .line 29
    return-void
.end method
