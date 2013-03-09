.class public Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;
.super Ljava/lang/Object;
.source "DisplaySuggestListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowInfo"
.end annotation


# instance fields
.field private mContactId:J

.field final mListPosition:I

.field final mParentPosition:I

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
    .line 348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mType:I

    .line 350
    iput p2, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mPosition:I

    .line 351
    iput p3, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mListPosition:I

    .line 352
    iput p4, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mParentPosition:I

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mContactId:J

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mContactId:J

    return-wide v0
.end method


# virtual methods
.method public setContactInfo(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter$RowInfo;->mContactId:J

    .line 359
    return-void
.end method
