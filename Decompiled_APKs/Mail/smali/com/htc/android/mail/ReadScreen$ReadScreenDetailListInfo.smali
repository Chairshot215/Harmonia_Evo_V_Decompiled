.class public Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadScreenDetailListInfo"
.end annotation


# instance fields
.field mIsTagListType:Z

.field mRecipientListInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

.field mTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 1
    .parameter "recipientListInfo"

    .prologue
    const/4 v0, 0x0

    .line 1408
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    .line 1409
    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    .line 1410
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mRecipientListInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1411
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/ReadScreen$TagListInfo;)V
    .locals 1
    .parameter "tagListInfo"

    .prologue
    .line 1403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    .line 1405
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    .line 1406
    return-void
.end method
