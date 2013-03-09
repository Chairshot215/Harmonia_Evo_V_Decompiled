.class public Lcom/google/android/finsky/library/LibraryAppEntry;
.super Lcom/google/android/finsky/library/LibraryEntry;
.source "LibraryAppEntry.java"


# static fields
.field public static final ANY_CERTIFICATE_HASHES:[Ljava/lang/String;


# instance fields
.field public final certificateHash:Ljava/lang/String;

.field public final refundPostDeliveryWindowMs:J

.field public final refundPreDeliveryEndtimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJ)V
    .locals 11
    .parameter "accountName"
    .parameter "docId"
    .parameter "offerType"
    .parameter "documentHash"
    .parameter "certificateHash"
    .parameter "refundPreDeliveryEndtimeMs"
    .parameter "refundPostDeliveryWindowMs"

    .prologue
    .line 61
    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v8, p3

    move-wide v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    .line 63
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    .line 64
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    .line 65
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/LibraryEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 99
    :cond_0
    instance-of v1, p1, Lcom/google/android/finsky/library/LibraryAppEntry;

    if-nez v1, :cond_1

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    .line 105
    .local v0, libraryAppEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hasMatchingCertificateHash([Ljava/lang/String;)Z
    .locals 6
    .parameter "certificateHashes"

    .prologue
    const/4 v4, 0x1

    .line 79
    sget-object v5, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    if-ne p1, v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v4

    .line 82
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 83
    .local v1, hash:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v1           #hash:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "{package=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryAppEntry;->docId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
