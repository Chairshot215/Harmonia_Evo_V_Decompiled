.class public Lcom/google/android/finsky/library/LibraryEntry;
.super Ljava/lang/Object;
.source "LibraryEntry.java"


# static fields
.field public static final UNKNOWN_ACCOUNT:Ljava/lang/String;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final backendId:I

.field public final docId:Ljava/lang/String;

.field public final docType:I

.field public final documentHash:J

.field public final libraryId:Ljava/lang/String;

.field public final offerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 9
    .parameter "accountName"
    .parameter "libraryId"
    .parameter "backendId"
    .parameter "docId"
    .parameter "docType"
    .parameter "offerType"

    .prologue
    .line 43
    const-wide/high16 v7, -0x8000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V
    .locals 1
    .parameter "accountName"
    .parameter "libraryId"
    .parameter "backendId"
    .parameter "docId"
    .parameter "docType"
    .parameter "offerType"
    .parameter "documentHash"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    .line 55
    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    .line 57
    iput p6, p0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    .line 58
    iput-wide p7, p0, Lcom/google/android/finsky/library/LibraryEntry;->documentHash:J

    .line 59
    return-void
.end method

.method public static fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 7
    .parameter "accountName"
    .parameter "libraryId"
    .parameter "document"
    .parameter "offerType"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/library/LibraryEntry;

    if-nez v3, :cond_2

    move v1, v2

    .line 73
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    .line 78
    .local v0, that:Lcom/google/android/finsky/library/LibraryEntry;
    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    iget v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    iget v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, v0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x0

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    add-int v0, v1, v2

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    add-int v0, v1, v2

    .line 114
    return v0

    :cond_1
    move v1, v2

    .line 110
    goto :goto_0
.end method
