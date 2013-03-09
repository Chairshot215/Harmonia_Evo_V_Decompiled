.class public Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadScreenDetailList"
.end annotation


# instance fields
.field mIsTagListType:Z

.field mReceiverList:Lcom/htc/android/mail/ReceiverList;

.field mTagList:Lcom/htc/android/mail/ReadScreen$TagList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen$TagList;)V
    .locals 1
    .parameter "tagList"

    .prologue
    .line 1424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    .line 1426
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mTagList:Lcom/htc/android/mail/ReadScreen$TagList;

    .line 1427
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/ReceiverList;)V
    .locals 1
    .parameter "receiverList"

    .prologue
    .line 1429
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    .line 1431
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mReceiverList:Lcom/htc/android/mail/ReceiverList;

    .line 1432
    return-void
.end method
