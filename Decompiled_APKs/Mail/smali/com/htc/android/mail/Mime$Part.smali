.class Lcom/htc/android/mail/Mime$Part;
.super Ljava/lang/Object;
.source "Mime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/Mime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Part"
.end annotation


# instance fields
.field mBinaryPart:[B

.field mContentId:Ljava/lang/String;

.field mEnvelope:Lcom/htc/android/mail/Mime;

.field mFilename:Ljava/lang/String;

.field mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIncomplete:Z

.field mNoBody:Z

.field mRfc822Start:I

.field mStart:I

.field mTextPart:Ljava/lang/String;

.field mTmpFilename:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/Mime;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/Mime;I)V
    .locals 1
    .parameter
    .parameter "start"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/Mime$Part;->mNoBody:Z

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Mime$Part;->mContentId:Ljava/lang/String;

    .line 127
    iput p2, p0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    .line 128
    return-void
.end method

.method private final findFilename(Ljava/lang/String;)V
    .locals 6
    .parameter "contentType"

    .prologue
    const/4 v5, 0x0

    .line 632
    const-string v3, "name"

    invoke-static {p1, v3, v5}, Lcom/htc/android/mail/Headers;->getAttributeCaseSens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, typeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-description"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    .local v0, description:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-disposition"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    .local v1, disposition:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 637
    const-string v3, "filename"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/Headers;->getAttributeCaseSens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ######## disposition is not null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    if-eqz v2, :cond_2

    .line 642
    iput-object v2, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 643
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ######## typeName mFilename is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 653
    return-void

    .line 644
    :cond_2
    if-eqz v1, :cond_1

    .line 645
    iput-object v1, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 646
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ######## disposition mFilename is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final find()Z
    .locals 5

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, text:Z
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    if-eqz v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    invoke-virtual {v3}, Lcom/htc/android/mail/Mime;->findText()Z

    move-result v0

    .line 360
    .local v0, ret:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 361
    :cond_0
    const/4 v1, 0x1

    :cond_1
    move v3, v1

    .line 368
    .end local v0           #ret:Z
    :goto_0
    return v3

    .line 364
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers;->getBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    const/4 v3, 0x1

    goto :goto_0

    .line 368
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final process(Ljava/lang/String;)V
    .locals 25
    .parameter "bound"

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;IZ)I

    move-result v21

    .line 132
    .local v21, headerBreak:I
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStart is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", and headerBreak is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mLines.size():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v5, v5, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    add-int/lit8 v4, v21, 0x1

    .line 135
    .local v4, firstBodyLine:I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .local v22, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    add-int/lit8 v22, v22, -0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/Mime$Part;->mNoBody:Z

    .line 352
    :cond_2
    return-void

    .line 143
    .end local v22           #i:I
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    move/from16 v0, v21

    invoke-static {v2, v3, v0, v5}, Lcom/htc/android/mail/Headers;->extract(Ljava/util/ArrayList;IILjava/util/HashMap;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-type"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 147
    .local v24, type:Ljava/lang/String;
    const-string v2, "charset"

    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, charset:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-transfer-encoding"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 149
    .local v19, encoding:Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 150
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 152
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-location"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 153
    .local v23, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mContentId:Ljava/lang/String;

    .line 155
    :cond_5
    if-nez v23, :cond_f

    .line 156
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Mime"

    const-string v3, "location is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_6
    :goto_1
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoding is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_7
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mStart is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".firstBodyLIne is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",charset is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",encoding is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_8
    if-eqz v19, :cond_9

    const-string v2, "quoted-printable"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v2, v4, v3, v0}, Lcom/htc/android/mail/QuotedPrintable;->decode(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 180
    :cond_9
    const-string v2, "multipart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "text/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 181
    const-string v2, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 182
    const-string v2, "format"

    const-string v3, "fixed"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 183
    .local v20, format:Ljava/lang/String;
    const-string v2, "delsp"

    const-string v3, "no"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 185
    .local v17, delsp:Ljava/lang/String;
    const-string v2, "flowed"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v5, "yes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v2, v4, v3, v5}, Lcom/htc/android/mail/FormatFlowed;->decode(Ljava/util/ArrayList;IIZ)V

    .line 190
    .end local v17           #delsp:Ljava/lang/String;
    .end local v20           #format:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Mime$Part;->findFilename(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 192
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    if-eqz v19, :cond_10

    const-string v5, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    .line 246
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-location"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 247
    .local v16, content_location:Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 248
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content-location is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_c
    const-string v2, "noname"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 250
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    if-eqz v19, :cond_14

    const-string v5, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    .line 348
    .end local v16           #content_location:Ljava/lang/String;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .restart local v22       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    move/from16 v0, v22

    if-lt v0, v2, :cond_2

    .line 349
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 348
    add-int/lit8 v22, v22, -0x1

    goto :goto_6

    .line 159
    .end local v22           #i:I
    :cond_f
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 196
    :cond_11
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/htc/android/mail/Util;->normalizeLineEndings(Ljava/util/ArrayList;II)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v2, v4, v3, v6, v0}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    .line 202
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mStart is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/Mime$Part;->mStart:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".firstBodyLIne is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",charset is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_12
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_13

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%Size is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v5, v5, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_13
    if-eqz v19, :cond_b

    const-string v2, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/htc/android/mail/Base64;->decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 209
    :catch_0
    move-exception v18

    .line 210
    .local v18, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0207

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    goto/16 :goto_3

    .line 251
    .end local v18           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v16       #content_location:Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 254
    .end local v16           #content_location:Ljava/lang/String;
    :cond_15
    const-string v2, "multipart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 255
    const-string v2, "boundary"

    const-string v3, "---"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, boundary:Ljava/lang/String;
    sget v15, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    .line 258
    .local v15, mMimeContentType:I
    invoke-static/range {v24 .. v24}, Lcom/htc/android/mail/Rfc2822;->setContentType(Ljava/lang/String;)I

    move-result v15

    .line 261
    new-instance v7, Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v8, v2, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v9, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->isIMAP4:Z
    invoke-static {v2}, Lcom/htc/android/mail/Mime;->access$100(Lcom/htc/android/mail/Mime;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccountID:J
    invoke-static {v2}, Lcom/htc/android/mail/Mime;->access$200(Lcom/htc/android/mail/Mime;)J

    move-result-wide v13

    move v10, v4

    invoke-direct/range {v7 .. v15}, Lcom/htc/android/mail/Mime;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    .line 263
    const-string v2, "multipart/alternative"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    invoke-virtual {v2}, Lcom/htc/android/mail/Mime;->pruneAlternatives()V

    goto/16 :goto_5

    .line 272
    .end local v11           #boundary:Ljava/lang/String;
    .end local v15           #mMimeContentType:I
    :cond_16
    const-string v2, "name"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/Headers;->getAttributeCaseSens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Mime$Part;->findFilename(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    if-eqz v19, :cond_18

    const-string v5, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    .line 297
    :cond_17
    :goto_8
    if-eqz v19, :cond_1f

    const-string v2, "quoted-printable"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v2, v4, v3, v0}, Lcom/htc/android/mail/QuotedPrintable;->decode(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v2, v2, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v4, v3, v6}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mBinaryPart:[B

    goto/16 :goto_5

    .line 274
    :cond_18
    const/4 v5, 0x0

    goto :goto_7

    .line 276
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Mime$Part;->findFilename(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 278
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v3, "content-location"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 279
    .restart local v16       #content_location:Ljava/lang/String;
    if-eqz v16, :cond_1d

    .line 280
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_1b

    const-string v2, "Mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content-location is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1b
    const-string v2, "noname"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    if-eqz v19, :cond_1c

    const-string v5, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    goto/16 :goto_8

    :cond_1c
    const/4 v5, 0x0

    goto :goto_9

    .line 284
    :cond_1d
    const-string v2, "noname"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    if-eqz v19, :cond_1e

    const-string v5, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    goto/16 :goto_8

    :cond_1e
    const/4 v5, 0x0

    goto :goto_a

    .line 300
    .end local v16           #content_location:Ljava/lang/String;
    :cond_1f
    if-eqz v19, :cond_d

    const-string v2, "base64"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    if-nez v2, :cond_d

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v7, p1

    #calls: Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/Mime;->access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method final save(JJIIIZLjava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 29
    .parameter "accountId"
    .parameter "messageId"
    .parameter "messageIndex"
    .parameter "partNum"
    .parameter "parentContentType"
    .parameter "includeText"
    .parameter
    .parameter "summaryUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 374
    .local p9, message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-wide/from16 v0, p1

    #setter for: Lcom/htc/android/mail/Mime;->mAccountID:J
    invoke-static {v3, v0, v1}, Lcom/htc/android/mail/Mime;->access$202(Lcom/htc/android/mail/Mime;J)J

    .line 375
    const/4 v12, 0x0

    .line 376
    .local v12, attachment:Z
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter save()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    if-eqz v3, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mEnvelope:Lcom/htc/android/mail/Mime;

    iget v8, v3, Lcom/htc/android/mail/Mime;->mContentType:I

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lcom/htc/android/mail/Mime;->saveParts(JJIIZLjava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v23

    .line 380
    .local v23, ret:Z
    if-nez v23, :cond_1

    if-eqz v12, :cond_2

    .line 381
    :cond_1
    const/4 v12, 0x1

    :cond_2
    move v3, v12

    .line 628
    .end local v23           #ret:Z
    :goto_0
    return v3

    .line 384
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers;->getBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 386
    .local v25, type:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do save part. type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 389
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "Mime"

    const-string v4, "incomplete attachment part."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v3, v12

    .line 390
    goto :goto_0

    .line 392
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    const-string v3, "text/html"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 394
    :cond_8
    if-eqz p8, :cond_9

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mTextBodyEmpty:Z
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$400(Lcom/htc/android/mail/Mime;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v12

    .line 396
    goto/16 :goto_0

    .line 404
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 406
    if-eqz p8, :cond_a

    move v3, v12

    .line 407
    goto/16 :goto_0

    .line 414
    :cond_a
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "Mime"

    const-string v4, "do save part."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_b
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v26, values:Landroid/content/ContentValues;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v27, valuesPreview:Landroid/content/ContentValues;
    const-string v3, "_mimetype"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "_text"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 422
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    const/4 v4, 0x1

    #setter for: Lcom/htc/android/mail/Mime;->mTextBodyEmpty:Z
    invoke-static {v3, v4}, Lcom/htc/android/mail/Mime;->access$402(Lcom/htc/android/mail/Mime;Z)Z

    .line 425
    :cond_d
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mimetype is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",tmpfilename is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_e
    const-string v3, "_filename"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file name is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_f
    const-string v3, "_cid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "_contenttype"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v3, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    const-string v3, "_flags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 435
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    if-eqz v3, :cond_10

    move v3, v12

    .line 436
    goto/16 :goto_0

    .line 437
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mContentId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 438
    const/4 v12, 0x1

    .line 441
    :cond_11
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/Mime;->dropAttach(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 442
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 444
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 446
    .local v19, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move/from16 v1, p7

    invoke-static {v3, v0, v4, v1}, Lcom/htc/android/mail/MailCommon;->checkFileExist(ILjava/lang/String;Landroid/content/Context;I)I

    move-result v16

    .line 447
    .local v16, check_result:I
    if-nez v16, :cond_13

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v4, v4, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move/from16 v1, p7

    invoke-static {v3, v0, v4, v1}, Lcom/htc/android/mail/MailCommon;->getSuggestFileName(ILjava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    .line 450
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    #getter for: Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/Mime;->access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move/from16 v1, p7

    invoke-static {v3, v4, v5, v0, v1}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 452
    .local v22, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    move-object/from16 v0, v22

    #calls: Lcom/htc/android/mail/Mime;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v0, v4}, Lcom/htc/android/mail/Mime;->access$500(Lcom/htc/android/mail/Mime;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 453
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save file as:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTmpFilename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    const-string v4, "mail"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    move/from16 v0, p7

    if-eq v0, v3, :cond_15

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->this$0:Lcom/htc/android/mail/Mime;

    iget-object v3, v3, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Lcom/htc/android/mail/MailCommon;->requestMediaScan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_15
    const-string v3, "_filepath"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v13, attfile:Ljava/io/File;
    const-string v3, "_filesize"

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    .end local v13           #attfile:Ljava/io/File;
    .end local v16           #check_result:I
    .end local v19           #filename:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :cond_16
    :goto_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 471
    .local v2, cp:Landroid/content/IContentProvider;
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-eqz v3, :cond_20

    .line 472
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v3, "_account= ? AND _message= ?  AND _filename= ?  AND _mimetype= ?"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .local v24, sbWhere:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mime$Part;->mTmpFilename:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 476
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mFilename:Ljava/lang/String;

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v25, v6, v3

    .line 485
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_2
    const/16 v17, 0x0

    .line 487
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 489
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 491
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 492
    .local v20, id:J
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_17

    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update part."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_17
    const/4 v14, 0x0

    .line 494
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v3, v4}, Lcom/htc/android/mail/MailCommon;->getPartMessageUri(JJ)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 495
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 497
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 501
    const/4 v15, 0x0

    .line 502
    .local v15, builderPreview:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p10 .. p10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 503
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 505
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v15           #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #id:J
    :cond_18
    :goto_3
    if-eqz v17, :cond_19

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_19

    .line 528
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v24           #sbWhere:Ljava/lang/StringBuilder;
    :cond_19
    :goto_5
    move v3, v12

    .line 628
    goto/16 :goto_0

    .line 462
    .end local v2           #cp:Landroid/content/IContentProvider;
    :cond_1a
    const-string v3, "text/html"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 463
    const-string v3, "_preview"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    :cond_1b
    const-string v3, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 465
    const-string v3, "_preview"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mime$Part;->mTextPart:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    .restart local v2       #cp:Landroid/content/IContentProvider;
    .restart local v24       #sbWhere:Ljava/lang/StringBuilder;
    :cond_1c
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v25, v6, v3

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_2

    .line 508
    .restart local v17       #cursor:Landroid/database/Cursor;
    :cond_1d
    :try_start_1
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "Mime"

    const-string v4, "part insert."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_1e
    const-string v3, "_message"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const/4 v14, 0x0

    .line 511
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 512
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 513
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 517
    const/4 v15, 0x0

    .line 518
    .restart local v15       #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p10 .. p10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 519
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 521
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 524
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    :catch_0
    move-exception v18

    .line 525
    .local v18, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query Cursor Fail where="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    if-eqz v17, :cond_19

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_4

    .end local v18           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_1f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 528
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_1f
    throw v3

    .line 532
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v24           #sbWhere:Ljava/lang/StringBuilder;
    :cond_20
    const/4 v14, 0x0

    .line 533
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 534
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 535
    const-string v3, "_message"

    move/from16 v0, p5

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 536
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 540
    const-string v28, "_id = ?"

    .line 541
    .local v28, where:Ljava/lang/String;
    const/4 v15, 0x0

    .line 542
    .restart local v15       #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p10 .. p10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 543
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 544
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 545
    const/4 v3, 0x0

    move/from16 v0, p5

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 546
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method
