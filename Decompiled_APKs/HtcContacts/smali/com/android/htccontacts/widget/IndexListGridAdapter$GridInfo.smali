.class public Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;
.super Ljava/lang/Object;
.source "IndexListGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/IndexListGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridInfo"
.end annotation


# instance fields
.field mIndex:I

.field mIndexList:[I

.field mType:I

.field position:I

.field final synthetic this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/IndexListGridAdapter;II)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "p"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 234
    iput-object p1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->this$0:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    .line 230
    iput v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndex:I

    .line 231
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    .line 232
    iput v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    .line 235
    iput p3, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->position:I

    .line 236
    iput p2, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mType:I

    .line 237
    iput v1, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndex:I

    .line 238
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListGridAdapter$GridInfo;->mIndexList:[I

    .line 239
    return-void

    .line 231
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 238
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
