.class public Lcom/muvee/video/trimer/MVideoTrimer;
.super Landroid/app/Application;
.source "MVideoTrimer.java"


# instance fields
.field private mSeqments:[Lcom/muvee/video/trimer/Seqment;

.field private mVideoFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeqments()[Lcom/muvee/video/trimer/Seqment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muvee/video/trimer/MVideoTrimer;->mSeqments:[Lcom/muvee/video/trimer/Seqment;

    return-object v0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/muvee/video/trimer/MVideoTrimer;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setSeqments([Lcom/muvee/video/trimer/Seqment;)V
    .locals 0
    .parameter "seqments"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/muvee/video/trimer/MVideoTrimer;->mSeqments:[Lcom/muvee/video/trimer/Seqment;

    .line 35
    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "videoFileName"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/muvee/video/trimer/MVideoTrimer;->mVideoFileName:Ljava/lang/String;

    .line 20
    return-void
.end method
