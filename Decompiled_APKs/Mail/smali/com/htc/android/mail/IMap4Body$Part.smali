.class Lcom/htc/android/mail/IMap4Body$Part;
.super Ljava/lang/Object;
.source "IMap4Body.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/IMap4Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Part"
.end annotation


# instance fields
.field public contenttype:I

.field public imap4body:Lcom/htc/android/mail/IMap4Body;

.field index:Ljava/lang/String;

.field parsingStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/IMap4Body;

.field public value:Ljava/util/HashMap;
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


# direct methods
.method constructor <init>(Lcom/htc/android/mail/IMap4Body;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "info"
    .parameter "index"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/android/mail/IMap4Body$Part;->this$0:Lcom/htc/android/mail/IMap4Body;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    .line 339
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->contenttype:I

    .line 342
    iput-object p3, p0, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    .line 343
    iput-object p2, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/htc/android/mail/IMap4Body$Part;->parseFieldInfo()I

    .line 345
    return-void
.end method

.method private findParts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "index"

    .prologue
    .line 377
    new-instance v0, Lcom/htc/android/mail/IMap4Body;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/mail/IMap4Body;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->imap4body:Lcom/htc/android/mail/IMap4Body;

    .line 378
    return-void
.end method

.method private parseAtom(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .parameter "paramlist"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v11, 0x29

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 588
    const/4 v2, -0x1

    .line 589
    .local v2, mode:I
    const/4 v3, -0x1

    .line 590
    .local v3, poorMode:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v0, atomlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 595
    if-ne v3, v9, :cond_1

    .line 597
    const/4 v3, 0x2

    .line 593
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_1
    if-ne v3, v10, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_2

    .line 601
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 604
    :cond_2
    if-ne v3, v10, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_4

    .line 605
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAtom add :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 609
    const/4 v3, -0x1

    .line 610
    goto :goto_1

    .line 613
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_9

    .line 614
    if-ne v2, v8, :cond_5

    .line 615
    const/4 v2, 0x0

    .line 616
    goto :goto_1

    .line 618
    :cond_5
    if-nez v2, :cond_6

    .line 619
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    .line 621
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 646
    :cond_6
    if-eq v2, v8, :cond_0

    .line 647
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 623
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAtom add:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 627
    goto/16 :goto_1

    .line 631
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_a

    .line 632
    if-ne v2, v8, :cond_6

    .line 633
    const/4 v2, 0x1

    .line 634
    goto/16 :goto_1

    .line 637
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_6

    .line 638
    if-ne v2, v9, :cond_6

    .line 639
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "IMap4BodyParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 642
    const/4 v3, 0x1

    .line 643
    goto/16 :goto_1

    .line 652
    :cond_c
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    .line 653
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 654
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_d

    const-string v6, "IMap4BodyParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "put :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", value is :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_e
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 660
    :cond_f
    return-void
.end method

.method private parseFieldInfo()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IMap4BodyParser"

    const-string v1, "##### parts: multi parts"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/IMap4Body$Part;->findParts(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "IMap4BodyParser"

    const-string v1, "##### parts: multi parts"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/IMap4Body$Part;->index:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/IMap4Body$Part;->findParts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "IMap4BodyParser"

    const-string v1, "##### parts: single parts"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/IMap4Body$Part;->parseSingleParts(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    goto :goto_0

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->parsingStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/IMap4Body$Part;->parseSingleParts(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/IMap4Body$Part;->value:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private parseSingleParts(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 16
    .parameter "value"

    .prologue
    .line 381
    const/16 v13, 0xa

    new-array v7, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "type"

    aput-object v14, v7, v13

    const/4 v13, 0x1

    const-string v14, "subtype"

    aput-object v14, v7, v13

    const/4 v13, 0x2

    const-string v14, "paramlist"

    aput-object v14, v7, v13

    const/4 v13, 0x3

    const-string v14, "bodyid"

    aput-object v14, v7, v13

    const/4 v13, 0x4

    const-string v14, "bodydesc"

    aput-object v14, v7, v13

    const/4 v13, 0x5

    const-string v14, "bodyencoding"

    aput-object v14, v7, v13

    const/4 v13, 0x6

    const-string v14, "bodysize"

    aput-object v14, v7, v13

    const/4 v13, 0x7

    const-string v14, "bodyline"

    aput-object v14, v7, v13

    const/16 v13, 0x8

    const-string v14, "attachinfo"

    aput-object v14, v7, v13

    const/16 v13, 0x9

    const-string v14, "textattachinfo"

    aput-object v14, v7, v13

    .line 383
    .local v7, keys:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 384
    .local v8, mode:I
    const/4 v3, 0x0

    .line 385
    .local v3, count:I
    const/4 v4, 0x0

    .line 386
    .local v4, fieldCount:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v12, tmp:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v10, store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_13

    .line 390
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_6

    .line 391
    const/4 v13, 0x1

    if-ne v8, v13, :cond_2

    .line 479
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v6, v13, :cond_1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 482
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_1

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "not save value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_2
    const/4 v13, -0x1

    if-ne v8, v13, :cond_3

    .line 395
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .restart local v12       #tmp:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 397
    goto :goto_2

    .line 399
    :cond_3
    if-nez v8, :cond_0

    .line 400
    array-length v13, v7

    if-ge v4, v13, :cond_5

    .line 401
    add-int/lit8 v5, v4, 0x1

    .end local v4           #fieldCount:I
    .local v5, fieldCount:I
    aget-object v13, v7, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_26

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "22 save "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, -0x1

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 407
    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    :cond_4
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .restart local v12       #tmp:Ljava/lang/StringBuilder;
    const/4 v8, -0x1

    .line 409
    goto :goto_2

    .line 405
    :cond_5
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_4

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "save value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 412
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x28

    if-ne v13, v14, :cond_9

    .line 413
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 416
    :cond_7
    if-nez v8, :cond_8

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 419
    :cond_8
    const/4 v13, -0x1

    if-ne v8, v13, :cond_0

    .line 420
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .restart local v12       #tmp:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 423
    goto/16 :goto_2

    .line 426
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x29

    if-ne v13, v14, :cond_e

    .line 427
    if-nez v8, :cond_a

    .line 428
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 430
    :cond_a
    const/4 v13, 0x1

    if-ne v8, v13, :cond_d

    .line 431
    add-int/lit8 v3, v3, -0x1

    .line 432
    if-gtz v3, :cond_0

    .line 437
    array-length v13, v7

    if-ge v4, v13, :cond_c

    .line 438
    add-int/lit8 v5, v4, 0x1

    .end local v4           #fieldCount:I
    .restart local v5       #fieldCount:I
    aget-object v13, v7, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_25

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "29 save "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, -0x1

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 444
    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    :cond_b
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .restart local v12       #tmp:Ljava/lang/StringBuilder;
    const/4 v8, -0x1

    .line 446
    goto/16 :goto_2

    .line 442
    :cond_c
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_b

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "save value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 449
    :cond_d
    const/4 v13, 0x1

    if-eq v8, v13, :cond_0

    .line 450
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_1

    const-string v13, "IMap4BodyParser"

    const-string v14, "XXXXX"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 454
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_0

    .line 455
    if-eqz v8, :cond_0

    .line 458
    const/4 v13, 0x1

    if-eq v8, v13, :cond_0

    .line 461
    const/4 v13, -0x1

    if-ne v8, v13, :cond_12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_12

    .line 462
    array-length v13, v7

    if-ge v4, v13, :cond_10

    .line 463
    add-int/lit8 v5, v4, 0x1

    .end local v4           #fieldCount:I
    .restart local v5       #fieldCount:I
    aget-object v13, v7, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_24

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "20 save "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, -0x1

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 470
    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    :cond_f
    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .restart local v12       #tmp:Ljava/lang/StringBuilder;
    const/4 v8, -0x1

    .line 472
    goto/16 :goto_2

    .line 467
    :cond_10
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_11

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fieldCount is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", keys.length is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_11
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v13, :cond_f

    const-string v13, "IMap4BodyParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "not save value is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 474
    :cond_12
    const/4 v13, -0x1

    if-ne v8, v13, :cond_0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_0

    goto/16 :goto_2

    .line 487
    :cond_13
    const-string v13, "paramlist"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 488
    .local v9, paramlist:Ljava/lang/String;
    const-string v13, "NIL"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 489
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/htc/android/mail/IMap4Body$Part;->parseAtom(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 491
    :cond_14
    const-string v13, "attachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    .local v2, attachinfo:Ljava/lang/String;
    if-nez v2, :cond_15

    .line 505
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_17

    const-string v13, "subtype"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 506
    const-string v2, "NIL"

    .line 512
    :cond_15
    const-string v13, "NIL"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 513
    const-string v13, " "

    const/4 v14, 0x2

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, attachToken:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ATTACHMENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 516
    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "FILENAME"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 517
    const/4 v13, 0x1

    aget-object v13, v1, v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v1, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/htc/android/mail/IMap4Body$Part;->parseAtom(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 584
    .end local v1           #attachToken:[Ljava/lang/String;
    .end local v10           #store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    :goto_6
    return-object v10

    .line 509
    .restart local v10       #store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    const/4 v10, 0x0

    goto :goto_6

    .line 520
    .restart local v1       #attachToken:[Ljava/lang/String;
    :cond_18
    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_19

    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_19

    .line 521
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 523
    :cond_19
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "noname"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 526
    :cond_1a
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INLINE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 529
    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1b

    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1b

    .line 530
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 532
    :cond_1b
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "noname"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 541
    .end local v1           #attachToken:[Ljava/lang/String;
    :cond_1c
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1f

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1f

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ATTACHMENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 544
    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, " "

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, textattachToken:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "FILENAME"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 546
    const/4 v13, 0x1

    aget-object v13, v11, v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/htc/android/mail/IMap4Body$Part;->parseAtom(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_6

    .line 549
    :cond_1d
    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1e

    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1e

    .line 550
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 552
    :cond_1e
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "noname"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 555
    .end local v11           #textattachToken:[Ljava/lang/String;
    :cond_1f
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_21

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INLINE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_21

    const-string v13, "subtype"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "plain"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_20

    const-string v13, "subtype"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "html"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 560
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/IMap4Body$Part;->this$0:Lcom/htc/android/mail/IMap4Body;

    iget v14, v13, Lcom/htc/android/mail/IMap4Body;->inlineNum:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/htc/android/mail/IMap4Body;->inlineNum:I

    .line 561
    const-string v13, "inline"

    const-string v14, "1"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 563
    :cond_21
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_22

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_22

    const-string v13, "textattachinfo"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INLINE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_22

    const-string v13, "subtype"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "plain"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_22

    const-string v13, "subtype"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "html"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_22

    .line 569
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "noname"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 572
    :cond_22
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 574
    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_23

    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_23

    .line 575
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 577
    :cond_23
    const-string v13, "FILENAME"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "noname"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v2           #attachinfo:Ljava/lang/String;
    .end local v4           #fieldCount:I
    .end local v9           #paramlist:Ljava/lang/String;
    .restart local v5       #fieldCount:I
    :cond_24
    move v4, v5

    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    goto/16 :goto_5

    .end local v4           #fieldCount:I
    .restart local v5       #fieldCount:I
    :cond_25
    move v4, v5

    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    goto/16 :goto_4

    .end local v4           #fieldCount:I
    .restart local v5       #fieldCount:I
    :cond_26
    move v4, v5

    .end local v5           #fieldCount:I
    .restart local v4       #fieldCount:I
    goto/16 :goto_3
.end method
