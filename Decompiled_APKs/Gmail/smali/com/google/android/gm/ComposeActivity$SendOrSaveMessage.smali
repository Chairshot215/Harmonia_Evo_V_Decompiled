.class Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendOrSaveMessage"
.end annotation


# instance fields
.field final mAccount:Ljava/lang/String;

.field final mRefMessageId:J

.field final mRequestId:I

.field final mSave:Z

.field final mSelectedAccount:Ljava/lang/String;

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;JZ)V
    .locals 2
    .parameter "account"
    .parameter "selectedAccount"
    .parameter "values"
    .parameter "refMessageId"
    .parameter "save"

    .prologue
    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    .line 1679
    iput-object p2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSelectedAccount:Ljava/lang/String;

    .line 1680
    iput-object p3, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    .line 1681
    iput-wide p4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mRefMessageId:J

    .line 1682
    iput-boolean p6, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSave:Z

    .line 1683
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mRequestId:I

    .line 1684
    return-void
.end method


# virtual methods
.method requestId()I
    .locals 1

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mRequestId:I

    return v0
.end method
