.class public final enum Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
.super Ljava/lang/Enum;
.source "RateReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/RateReviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentRating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

.field public static final enum HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

.field public static final enum NOT_HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

.field public static final enum SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# instance fields
.field private mDisplayStringId:I

.field private mIndex:I

.field private mRpcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 34
    new-instance v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    const-string v1, "SPAM"

    const v5, 0x7f07018b

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 35
    new-instance v5, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    const-string v6, "HELPFUL"

    const v10, 0x7f07018c

    move v8, v7

    move v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 36
    new-instance v8, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    const-string v9, "NOT_HELPFUL"

    const v13, 0x7f07018d

    move v10, v4

    move v11, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->NOT_HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 33
    new-array v0, v3, [Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->NOT_HELPFUL:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->$VALUES:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "rpcId"
    .parameter "index"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mRpcId:I

    .line 60
    iput p4, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mIndex:I

    .line 61
    iput p5, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mDisplayStringId:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getTextResourceId()I

    move-result v0

    return v0
.end method

.method private getIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mIndex:I

    return v0
.end method

.method private getTextResourceId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mDisplayStringId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->$VALUES:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    return-object v0
.end method


# virtual methods
.method public getRpcId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->mRpcId:I

    return v0
.end method
