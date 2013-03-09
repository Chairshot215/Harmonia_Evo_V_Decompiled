.class public Lcom/htc/android/mail/RelatedInfo;
.super Ljava/lang/Object;
.source "RelatedInfo.java"


# instance fields
.field mCid:Ljava/lang/String;

.field mFileName:Ljava/lang/String;

.field mFilePath:Ljava/lang/String;

.field mMimetype:Ljava/lang/String;

.field mPartId:J

.field mSize:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "cid"
    .parameter "filepath"
    .parameter "filename"
    .parameter "partid"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mCid:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/htc/android/mail/RelatedInfo;->mFilePath:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/htc/android/mail/RelatedInfo;->mFileName:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/htc/android/mail/RelatedInfo;->mPartId:J

    .line 16
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "cid"
    .parameter "filepath"
    .parameter "filename"
    .parameter "partid"
    .parameter "mimetype"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mCid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/htc/android/mail/RelatedInfo;->mFilePath:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/htc/android/mail/RelatedInfo;->mFileName:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcom/htc/android/mail/RelatedInfo;->mPartId:J

    .line 23
    iput-object p6, p0, Lcom/htc/android/mail/RelatedInfo;->mMimetype:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/mail/RelatedInfo;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/mail/RelatedInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/android/mail/RelatedInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/RelatedInfo;->mMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getPartId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/htc/android/mail/RelatedInfo;->mPartId:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/android/mail/RelatedInfo;->mSize:I

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mCid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mFileName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mFilePath:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMimetype(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/mail/RelatedInfo;->mMimetype:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/android/mail/RelatedInfo;->mSize:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/RelatedInfo;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/RelatedInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/RelatedInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/RelatedInfo;->mPartId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/RelatedInfo;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/RelatedInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
