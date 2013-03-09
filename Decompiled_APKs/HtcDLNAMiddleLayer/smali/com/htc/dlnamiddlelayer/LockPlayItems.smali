.class public Lcom/htc/dlnamiddlelayer/LockPlayItems;
.super Ljava/lang/Object;
.source "LockPlayItems.java"


# instance fields
.field public mContainerID:Ljava/lang/String;

.field public mFileType:I

.field public mIsBrowsingDown:Z

.field public mServerID:Ljava/lang/String;

.field public mStartIndex:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 2
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "isBrowsingDown"
    .parameter "fileType"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mServerID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mContainerID:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mFileType:I

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mStartIndex:J

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mIsBrowsingDown:Z

    .line 13
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mServerID:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mContainerID:Ljava/lang/String;

    .line 15
    iput-wide p3, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mStartIndex:J

    .line 16
    iput-boolean p5, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mIsBrowsingDown:Z

    .line 17
    iput p6, p0, Lcom/htc/dlnamiddlelayer/LockPlayItems;->mFileType:I

    .line 18
    return-void
.end method
