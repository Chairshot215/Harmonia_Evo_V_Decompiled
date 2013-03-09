.class public Lcom/android/mms/util/DraftResult;
.super Ljava/lang/Object;
.source "DraftResult.java"


# instance fields
.field public mAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMsgBody:Ljava/lang/String;

.field public mMsgID:J

.field public mMsgType:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/DraftResult;->mMsgBody:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method
