.class public Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
.super Ljava/lang/Object;
.source "DisplayLinkedListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowInfo"
.end annotation


# instance fields
.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field final mListPosition:I

.field final mParentPosition:I

.field private mPhotoId:I

.field final mPosition:I

.field final mType:I


# direct methods
.method constructor <init>(IIII)V
    .locals 2
    .parameter "type"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    .line 292
    iput p2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPosition:I

    .line 293
    iput p3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mListPosition:I

    .line 294
    iput p4, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPhotoId:I

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mContactId:J

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPhotoId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mContactId:J

    return-wide v0
.end method


# virtual methods
.method public setContactInfo(Ljava/lang/String;IJ)V
    .locals 0
    .parameter "name"
    .parameter "pid"
    .parameter "id"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mDisplayName:Ljava/lang/String;

    .line 302
    iput p2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mPhotoId:I

    .line 303
    iput-wide p3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mContactId:J

    .line 304
    return-void
.end method
