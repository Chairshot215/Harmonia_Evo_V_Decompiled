.class public Lcom/htc/dlnamiddlelayer/NotificationItemInfo;
.super Ljava/lang/Object;
.source "NotificationItemInfo.java"


# instance fields
.field public mCookie:I

.field public mFilterCap:I

.field public mInfo:Ljava/lang/String;

.field public mPlayState:I

.field public mSlideShowState:I

.field public mThumbPath:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cookie"
    .parameter "filter"
    .parameter "slidestate"
    .parameter "playstate"
    .parameter "title"
    .parameter "info"
    .parameter "thumb"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 6
    iput v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 7
    iput v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    .line 8
    iput v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 9
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 17
    iput p2, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 18
    iput p3, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    .line 19
    iput p4, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 20
    if-eqz p5, :cond_0

    .line 21
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    .line 25
    :goto_0
    if-eqz p6, :cond_1

    .line 26
    iput-object p6, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 30
    :goto_1
    if-eqz p7, :cond_2

    .line 31
    iput-object p7, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    .line 34
    :goto_2
    return-void

    .line 23
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    goto :goto_2
.end method
