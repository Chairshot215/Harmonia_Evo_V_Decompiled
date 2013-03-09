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
