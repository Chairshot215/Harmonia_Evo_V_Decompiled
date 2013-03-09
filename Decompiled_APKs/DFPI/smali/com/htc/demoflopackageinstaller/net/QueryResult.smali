.class public Lcom/htc/demoflopackageinstaller/net/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"


# instance fields
.field private mApkID:Ljava/lang/String;

.field private mDownloadAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "addr"
    .parameter "id"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mDownloadAddress:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mApkID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mDownloadAddress:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mApkID:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mDownloadAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getApkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mApkID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/QueryResult;->mName:Ljava/lang/String;

    return-object v0
.end method
