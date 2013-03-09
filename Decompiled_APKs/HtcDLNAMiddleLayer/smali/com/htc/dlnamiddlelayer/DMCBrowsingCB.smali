.class public Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;
.super Ljava/lang/Object;
.source "DMCBrowsingCB.java"


# instance fields
.field public mContainer:Ljava/lang/String;

.field public mCookie:I

.field public mServerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cookie"
    .parameter "serverID"
    .parameter "container"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mCookie:I

    .line 14
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mServerID:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mContainer:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getConatiner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mCookie:I

    return v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mServerID:Ljava/lang/String;

    return-object v0
.end method
