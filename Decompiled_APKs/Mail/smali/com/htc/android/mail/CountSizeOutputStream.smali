.class public Lcom/htc/android/mail/CountSizeOutputStream;
.super Ljava/io/OutputStream;
.source "CountSizeOutputStream.java"


# instance fields
.field private mCheckPoint:I

.field private mSize:I

.field private mSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 8
    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 9
    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mCheckPoint:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSizeList:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public getCheckPoint()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSizeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mCheckPoint:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mCheckPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    return v0
.end method

.method public setCheckPoint()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSizeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 41
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 32
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 17
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CountSizeOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 22
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CountSizeOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CountSizeOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/CountSizeOutputStream;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
