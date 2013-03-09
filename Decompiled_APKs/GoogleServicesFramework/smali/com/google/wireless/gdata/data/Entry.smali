.class public Lcom/google/wireless/gdata/data/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private author:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private categoryScheme:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private deleted:Z

.field private editUri:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private htmlUri:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private publicationDate:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 233
    invoke-static {p3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    .line 52
    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "author"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryScheme"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    .line 221
    return-void
.end method

.method public setEditUri(Ljava/lang/String;)V
    .locals 0
    .parameter "editUri"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setHtmlUri(Ljava/lang/String;)V
    .locals 0
    .parameter "htmlUri"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 0
    .parameter "publicationDate"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .parameter "updateDate"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 249
    const-string v0, "ID"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "TITLE"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "EDIT URI"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "HTML URI"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "CONTENT"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "AUTHOR"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "CATEGORY"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "CATEGORY SCHEME"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "PUBLICATION DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "UPDATE DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "DELETED"

    iget-boolean v1, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method
