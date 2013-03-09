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

.method public constructor <init>(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 2
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 45
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

    .line 46
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 60
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 63
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

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .line 85
    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "author"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->author:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setBatchInfo(Lcom/google/wireless/gdata2/data/batch/BatchInfo;)V
    .locals 0
    .parameter "batchInfo"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->batchInfo:Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .line 347
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->category:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryScheme"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->content:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setContentSource(Ljava/lang/String;)V
    .locals 0
    .parameter "contentSource"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentSource:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->contentType:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/data/Entry;->deleted:Z

    .line 300
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .parameter "eTag"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->eTagValue:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setEditUri(Ljava/lang/String;)V
    .locals 0
    .parameter "editUri"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->editUri:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->email:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setFields(Ljava/lang/String;)V
    .locals 0
    .parameter "fields"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->fields:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setHtmlUri(Ljava/lang/String;)V
    .locals 0
    .parameter "htmlUri"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->htmlUri:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->id:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 0
    .parameter "publicationDate"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->publicationDate:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->summary:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->title:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .parameter "updateDate"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Entry;->updateDate:Ljava/lang/String;

    .line 286
    return-void
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

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 420
    return-void
.end method
