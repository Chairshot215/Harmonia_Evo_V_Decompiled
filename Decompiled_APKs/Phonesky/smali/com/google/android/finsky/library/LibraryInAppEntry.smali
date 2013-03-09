.class public Lcom/google/android/finsky/library/LibraryInAppEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibraryInAppEntry.java"


# instance fields
.field public final signature:Ljava/lang/String;

.field public final signedPurchaseData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "accountName"
    .parameter "libraryId"
    .parameter "docId"
    .parameter "offerType"
    .parameter "signedPurchaseData"
    .parameter "signature"
    .parameter "documentHash"

    .prologue
    .line 19
    const/4 v3, 0x3

    const/16 v5, 0xb

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    .line 21
    iput-object p5, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    .line 23
    return-void
.end method
