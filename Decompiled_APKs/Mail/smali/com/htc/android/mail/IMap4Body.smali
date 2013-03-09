.class public Lcom/htc/android/mail/IMap4Body;
.super Ljava/lang/Object;
.source "IMap4Body.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/IMap4Body$Part;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IMap4BodyParser"


# instance fields
.field alternativeNum:I

.field attachment:I

.field bodyType:Ljava/lang/String;

.field public bodycontenttype:I

.field htmlbody:I

.field index:Ljava/lang/String;

.field infoString:Ljava/lang/StringBuilder;

.field inlineNum:I

.field public mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/IMap4Body$Part;",
            ">;"
        }
    .end annotation
.end field

.field mTotalParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/IMap4Body$Part;",
            ">;"
        }
    .end annotation
.end field

.field mixAttachment:I

.field mixedNum:I

.field parsingStr:Ljava/lang/String;

.field related:I

.field relatedNum:I

.field public table:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/android/mail/Imap4InfoObject;",
            ">;"
        }
    .end annotation
.end field

.field textbody:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->parsingStr:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->infoString:Ljava/lang/StringBuilder;

    .line 18
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v0, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    .line 21
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->mixAttachment:I

    .line 22
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->attachment:I

    .line 23
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->textbody:I

    .line 24
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->htmlbody:I

    .line 25
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->mixedNum:I

    .line 26
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->alternativeNum:I

    .line 27
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->related:I

    .line 28
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->relatedNum:I

    .line 29
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->inlineNum:I

    .line 32
    iput-object p1, p0, Lcom/htc/android/mail/IMap4Body;->parsingStr:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/android/mail/IMap4Body;->parseParts(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->parsingStr:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->infoString:Ljava/lang/StringBuilder;

    .line 18
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v0, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    .line 21
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->mixAttachment:I

    .line 22
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->attachment:I

    .line 23
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->textbody:I

    .line 24
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->htmlbody:I

    .line 25
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->mixedNum:I

    .line 26
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->alternativeNum:I

    .line 27
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->related:I

    .line 28
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->relatedNum:I

    .line 29
    iput v1, p0, Lcom/htc/android/mail/IMap4Body;->inlineNum:I

    .line 38
    iput-object p2, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/htc/android/mail/IMap4Body;->parsingStr:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/android/mail/IMap4Body;->parseParts(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private addToTotalParts(Lcom/htc/android/mail/IMap4Body;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 144
    iget-object v2, p1, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v2, v2, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p1, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v1, v2, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    .line 146
    .local v1, tmp:Lcom/htc/android/mail/IMap4Body;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/IMap4Body;->addToTotalParts(Lcom/htc/android/mail/IMap4Body;)V

    .line 143
    .end local v1           #tmp:Lcom/htc/android/mail/IMap4Body;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "IMap4BodyParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bodycontenttype is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    iget-object v2, p1, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/IMap4Body$Part;

    iget v3, p1, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    iput v3, v2, Lcom/htc/android/mail/IMap4Body$Part;->contenttype:I

    .line 151
    iget-object v2, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_2
    return-void
.end method

.method private parseParts(Ljava/lang/String;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 44
    const-string v6, "("

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/android/mail/IMap4Body;->seperateParts(Ljava/lang/String;)V

    .line 56
    :goto_0
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_15

    .line 58
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/IMap4Body;->setValueByBodyType(Ljava/lang/String;I)V

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 60
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    if-eqz v6, :cond_2

    .line 62
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v5, v6, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    .line 63
    .local v5, tmp:Lcom/htc/android/mail/IMap4Body;
    iget-object v6, v5, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    iget-object v7, v5, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/IMap4Body;->setValueByBodyType(Ljava/lang/String;I)V

    .line 64
    invoke-direct {p0, v5}, Lcom/htc/android/mail/IMap4Body;->addToTotalParts(Lcom/htc/android/mail/IMap4Body;)V

    .line 59
    .end local v5           #tmp:Lcom/htc/android/mail/IMap4Body;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1           #i:I
    :cond_0
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "IMap4BodyParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " single part info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    new-instance v3, Lcom/htc/android/mail/IMap4Body$Part;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-direct {v3, p0, v6, v7}, Lcom/htc/android/mail/IMap4Body$Part;-><init>(Lcom/htc/android/mail/IMap4Body;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v3, part:Lcom/htc/android/mail/IMap4Body$Part;
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v3           #part:Lcom/htc/android/mail/IMap4Body$Part;
    .restart local v1       #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget v7, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    iput v7, v6, Lcom/htc/android/mail/IMap4Body$Part;->contenttype:I

    .line 68
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_15

    .line 73
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "report-type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 78
    :cond_5
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_6

    const-string v7, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " #### type:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v9, "type"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_6
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v7, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " #### index:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "TEXT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "subtype"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "PLAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f

    .line 85
    iput v10, p0, Lcom/htc/android/mail/IMap4Body;->textbody:I

    .line 86
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "IMap4BodyParser"

    const-string v7, "we have text"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_8
    :goto_5
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v0, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    .line 101
    .local v0, field:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "type"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v6, "type"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 102
    const-string v6, "subtype"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v6, "subtype"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "rfc822"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 103
    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, suggestFilename:Ljava/lang/String;
    const-string v6, "bodyline"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 106
    const-string v6, "bodyline"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/IMap4Body;->parseRfc822FileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    :cond_9
    const-string v7, "filename"

    if-eqz v4, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v4           #suggestFilename:Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/htc/android/mail/Imap4InfoObject;

    invoke-direct {v2}, Lcom/htc/android/mail/Imap4InfoObject;-><init>()V

    .line 113
    .local v2, obj:Lcom/htc/android/mail/Imap4InfoObject;
    const-string v6, "type"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->type:Ljava/lang/String;

    .line 114
    const-string v6, "subtype"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->subtype:Ljava/lang/String;

    .line 115
    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12

    const-string v6, "charset"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->typename:Ljava/lang/String;

    .line 116
    const-string v6, "bodyid"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "<"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ">"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->cid:Ljava/lang/String;

    .line 117
    const-string v6, "bodydesc"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->cidfname:Ljava/lang/String;

    .line 118
    const-string v6, "bodyencoding"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->encode:Ljava/lang/String;

    .line 119
    const-string v6, "bodysize"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->size:Ljava/lang/String;

    .line 120
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->index:Ljava/lang/String;

    .line 121
    const-string v6, "inline"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v6, "0"

    :goto_8
    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->inline:Ljava/lang/String;

    .line 122
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->contenttype:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->contenttype:Ljava/lang/String;

    .line 123
    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_14

    :cond_b
    const-string v6, "1"

    :goto_9
    iput-object v6, v2, Lcom/htc/android/mail/Imap4InfoObject;->isfile:Ljava/lang/String;

    .line 125
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->contenttype:I

    sget v7, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    if-ne v6, v7, :cond_d

    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 130
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "subtype"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Mime;->dropAttach(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 131
    iget v6, p0, Lcom/htc/android/mail/IMap4Body;->mixAttachment:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/android/mail/IMap4Body;->mixAttachment:I

    .line 133
    :cond_d
    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e

    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 134
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "subtype"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Mime;->dropAttach(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 135
    iget v6, p0, Lcom/htc/android/mail/IMap4Body;->attachment:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/android/mail/IMap4Body;->attachment:I

    goto/16 :goto_4

    .line 88
    .end local v0           #field:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #obj:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_f
    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "TEXT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "subtype"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "HTML"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/mail/IMap4Body;->mTotalParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/IMap4Body$Part;

    iget-object v6, v6, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 92
    iput v10, p0, Lcom/htc/android/mail/IMap4Body;->htmlbody:I

    .line 93
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "IMap4BodyParser"

    const-string v7, "we have html"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 108
    .restart local v0       #field:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #suggestFilename:Ljava/lang/String;
    :cond_10
    const-string v6, "Message.msg"

    goto/16 :goto_6

    .line 115
    .end local v4           #suggestFilename:Ljava/lang/String;
    .restart local v2       #obj:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_11
    const-string v6, "charset"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_7

    :cond_12
    const-string v6, "filename"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 121
    :cond_13
    const-string v6, "1"

    goto/16 :goto_8

    .line 123
    :cond_14
    const-string v6, "0"

    goto/16 :goto_9

    .line 140
    .end local v0           #field:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #obj:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_15
    return-void
.end method

.method private parseRfc822FileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "value"

    .prologue
    const/16 v10, 0x22

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x20

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, fieldCount:I
    const/4 v4, 0x2

    .line 704
    .local v4, targetField:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .local v5, tmp:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 706
    .local v3, mode:I
    const/4 v0, 0x0

    .line 708
    .local v0, endToken:C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 709
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_4

    .line 710
    if-ne v3, v9, :cond_1

    .line 708
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_1
    if-ne v3, v8, :cond_2

    .line 714
    const/16 v0, 0x22

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .restart local v5       #tmp:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 717
    goto :goto_1

    .line 719
    :cond_2
    if-nez v3, :cond_0

    .line 720
    add-int/lit8 v1, v1, 0x1

    .line 721
    if-ne v1, v4, :cond_3

    .line 722
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 760
    :goto_2
    return-object v6

    .line 724
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .restart local v5       #tmp:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 726
    const/4 v0, 0x0

    .line 727
    goto :goto_1

    .line 730
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_5

    .line 731
    if-ne v3, v9, :cond_6

    .line 756
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 733
    :cond_6
    if-ne v3, v8, :cond_7

    .line 734
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_0

    .line 737
    const/16 v0, 0x20

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .restart local v5       #tmp:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 740
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 742
    :cond_7
    if-nez v3, :cond_5

    .line 743
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_5

    if-ne v0, v7, :cond_5

    .line 744
    add-int/lit8 v1, v1, 0x1

    .line 745
    if-ne v1, v4, :cond_8

    .line 746
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 748
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    .restart local v5       #tmp:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 750
    const/4 v0, 0x0

    .line 751
    goto :goto_1

    .line 760
    :cond_9
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private seperateParts(Ljava/lang/String;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 157
    const/4 v2, -0x1

    .line 158
    .local v2, mode:I
    const/4 v0, 0x0

    .line 160
    .local v0, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v4, tmp:Ljava/lang/StringBuilder;
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "############ seperateParts :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_5

    .line 164
    if-ne v2, v9, :cond_2

    .line 166
    const/4 v2, 0x1

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 162
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    if-nez v2, :cond_3

    .line 171
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "IMap4BodyParser"

    const-string v6, "should not happened 1."

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_3
    if-ne v2, v10, :cond_4

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 260
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_f

    .line 179
    if-ne v2, v9, :cond_6

    .line 180
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "IMap4BodyParser"

    const-string v6, "should not happened 2."

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_6
    if-ne v2, v10, :cond_e

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    if-gtz v0, :cond_4

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\"BOUNDARY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\"TYPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 192
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######## seperateParts:parts type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_7
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######## seperateParts:parts done:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_8
    new-instance v3, Lcom/htc/android/mail/IMap4Body$Part;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/IMap4Body;->index:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v6, v5}, Lcom/htc/android/mail/IMap4Body$Part;-><init>(Lcom/htc/android/mail/IMap4Body;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v3, part:Lcom/htc/android/mail/IMap4Body$Part;
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 200
    goto/16 :goto_1

    .line 196
    .end local v3           #part:Lcom/htc/android/mail/IMap4Body$Part;
    :cond_9
    const-string v5, ""

    goto :goto_3

    .line 203
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\"BOUNDARY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 204
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######## seperateParts:parts boundary:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 262
    :cond_c
    return-void

    .line 210
    :cond_d
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "IMap4BodyParser"

    const-string v6, "########### xxxxxxxxxxxx"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 214
    :cond_e
    if-nez v2, :cond_4

    .line 215
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "IMap4BodyParser"

    const-string v6, "should not happened 3."

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 218
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_17

    .line 219
    if-ne v2, v9, :cond_10

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 222
    goto/16 :goto_1

    .line 224
    :cond_10
    if-nez v2, :cond_16

    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    .line 226
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$$$$ bodyType is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_11
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    const-string v6, "mixed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 228
    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    iput v5, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    .line 234
    :cond_12
    :goto_4
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "body:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bodycontenttype:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_13
    const/4 v2, -0x1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 229
    :cond_14
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    const-string v6, "related"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 230
    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    iput v5, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    goto :goto_4

    .line 231
    :cond_15
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->bodyType:Ljava/lang/String;

    const-string v6, "alternative"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 232
    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_ALTERNATIVE:I

    iput v5, p0, Lcom/htc/android/mail/IMap4Body;->bodycontenttype:I

    goto :goto_4

    .line 239
    :cond_16
    if-ne v2, v10, :cond_4

    goto/16 :goto_2

    .line 243
    :cond_17
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    .line 244
    if-eqz v2, :cond_4

    .line 247
    if-eq v2, v10, :cond_4

    .line 250
    if-ne v2, v9, :cond_19

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    .line 251
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_18

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sperate save value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 254
    goto/16 :goto_1

    .line 256
    :cond_19
    if-ne v2, v9, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    goto/16 :goto_1
.end method

.method private setValueByBodyType(Ljava/lang/String;I)V
    .locals 4
    .parameter "bodyType"
    .parameter "size"

    .prologue
    const/4 v3, 0x1

    .line 265
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IMap4BodyParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValueByBodyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iput p2, p0, Lcom/htc/android/mail/IMap4Body;->mixedNum:I

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iput v3, p0, Lcom/htc/android/mail/IMap4Body;->related:I

    .line 276
    iput p2, p0, Lcom/htc/android/mail/IMap4Body;->relatedNum:I

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALTERNATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 279
    iput v3, p0, Lcom/htc/android/mail/IMap4Body;->textbody:I

    .line 280
    iput v3, p0, Lcom/htc/android/mail/IMap4Body;->htmlbody:I

    .line 281
    iput p2, p0, Lcom/htc/android/mail/IMap4Body;->alternativeNum:I

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 284
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IMap4BodyParser"

    const-string v1, "It\'s a single field, no bodyType."

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IMap4BodyParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandle bodyType... call rOy now -_-|||,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final alternativeNum()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->alternativeNum:I

    return v0
.end method

.method public final get(Ljava/lang/String;)Lcom/htc/android/mail/Imap4InfoObject;
    .locals 4
    .parameter "index"

    .prologue
    .line 687
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 688
    iget-object v2, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Imap4InfoObject;

    .line 689
    .local v0, check:Lcom/htc/android/mail/Imap4InfoObject;
    iget-object v2, v0, Lcom/htc/android/mail/Imap4InfoObject;->index:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    .end local v0           #check:Lcom/htc/android/mail/Imap4InfoObject;
    :goto_1
    return-object v0

    .line 687
    .restart local v0       #check:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v0           #check:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRelated()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->related:I

    return v0
.end method

.method public final getRelatedNum()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->relatedNum:I

    return v0
.end method

.method public final getTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/android/mail/Imap4InfoObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTextHtmlIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/Imap4InfoObject;
    .locals 7
    .parameter "type"
    .parameter "contenttype"

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 666
    iget-object v5, p0, Lcom/htc/android/mail/IMap4Body;->table:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Imap4InfoObject;

    .line 667
    .local v0, check:Lcom/htc/android/mail/Imap4InfoObject;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 682
    .end local v0           #check:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_0
    :goto_1
    return-object v0

    .line 669
    .restart local v0       #check:Lcom/htc/android/mail/Imap4InfoObject;
    :cond_1
    const/4 v3, 0x0

    .line 671
    .local v3, size:I
    :try_start_0
    iget-object v5, v0, Lcom/htc/android/mail/Imap4InfoObject;->size:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 676
    :goto_2
    iget-object v5, v0, Lcom/htc/android/mail/Imap4InfoObject;->type:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/htc/android/mail/Imap4InfoObject;->subtype:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/htc/android/mail/Imap4InfoObject;->isfile:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-gtz v3, :cond_0

    .line 665
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    const/4 v3, 0x0

    goto :goto_2

    .end local v0           #check:Lcom/htc/android/mail/Imap4InfoObject;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #size:I
    :cond_3
    move-object v0, v4

    .line 682
    goto :goto_1
.end method

.method public final includeAttach()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->attachment:I

    return v0
.end method

.method public final includeHtml()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->htmlbody:I

    return v0
.end method

.method public final includeMixAttach()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->mixAttachment:I

    return v0
.end method

.method public final includeText()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->textbody:I

    return v0
.end method

.method public final mixedNum()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/htc/android/mail/IMap4Body;->mixedNum:I

    return v0
.end method
