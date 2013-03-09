.class public Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
.super Ljava/lang/Object;
.source "MultipartMimeContentImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/message/MultipartMimeContent;


# static fields
.field public static BOUNDARY:Ljava/lang/String;


# instance fields
.field private boundary:Ljava/lang/String;

.field private contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation
.end field

.field private multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "boundary"

    sput-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/sip/header/ContentTypeHeader;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    iput-object p1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    sget-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lgov/nist/javax/sip/message/Content;)Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    check-cast p1, Lgov/nist/javax/sip/message/ContentImpl;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addContent(Lgov/nist/javax/sip/message/Content;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    return-void
.end method

.method public createContentList(Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    new-instance v12, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {v12}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v23

    sget-object v24, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    invoke-interface/range {v23 .. v24}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    new-instance v5, Lgov/nist/javax/sip/message/ContentImpl;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    array-length v0, v3

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v18, v3, v15

    if-eqz v18, :cond_0

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    if-lez v23, :cond_3

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v23

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "Invalid Multipart mime format"

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_3
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    if-nez v23, :cond_5

    :cond_4
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_0

    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v23, "\r\n\r\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v19, 0x4

    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const-string v23, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v19, 0x2

    :cond_6
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    new-instance v23, Ljava/text/ParseException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "no content type header found in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_7
    add-int v23, v20, v19

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_8

    new-instance v23, Ljava/text/ParseException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No content ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_8
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v5, Lgov/nist/javax/sip/message/ContentImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    array-length v0, v4

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    aget-object v9, v4, v14

    invoke-interface {v12, v9}, Lgov/nist/javax/sip/header/HeaderFactoryExt;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v10

    instance-of v0, v10, Ljavax/sip/header/ContentTypeHeader;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    check-cast v10, Ljavax/sip/header/ContentTypeHeader;

    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    instance-of v0, v10, Ljavax/sip/header/ContentDispositionHeader;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    check-cast v10, Ljavax/sip/header/ContentDispositionHeader;

    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/ContentImpl;->setContentDispositionHeader(Ljavax/sip/header/ContentDispositionHeader;)V

    goto :goto_3

    :cond_a
    new-instance v23, Ljava/text/ParseException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected header type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v10}, Ljavax/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getContentByType(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/message/Content;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/Content;

    invoke-interface {v0}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public getContentCount()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    return-object v0
.end method

.method public getContents()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/Content;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
