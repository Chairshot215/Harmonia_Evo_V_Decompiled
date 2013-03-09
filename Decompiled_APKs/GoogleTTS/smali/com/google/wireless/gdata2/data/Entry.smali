.class public Lcom/google/wireless/gdata2/data/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private author:Ljava/lang/String;

.field private batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

.field private category:Ljava/lang/String;

.field private categoryScheme:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentSource:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private deleted:Z

.field private eTagValue:Ljava/lang/String;

.field private editUri:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fields:Ljava/lang/String;

.field private htmlUri:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private publicationDate:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 34
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .line 35
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 359
    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_0
    return-void
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 375
    const-string v0, "ID"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "TITLE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "EDIT URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "HTML URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "CONTENT"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "AUTHOR"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "CATEGORY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "CATEGORY SCHEME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "PUBLICATION DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "UPDATE DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "DELETED"

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "ETAG"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "BATCH"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method
