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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 64
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .line 65
    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setBatchInfo(Lcom/google/wireless/gdata2/data/batch/BatchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .line 327
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setContentSource(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 280
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setEditUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setFields(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setHtmlUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    const-string v0, "ID"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "TITLE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "EDIT URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "HTML URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "CONTENT"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "AUTHOR"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "CATEGORY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "CATEGORY SCHEME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "PUBLICATION DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "UPDATE DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "DELETED"

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "ETAG"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "BATCH"

    iget-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 400
    return-void
.end method
