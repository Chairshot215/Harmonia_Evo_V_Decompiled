.class public Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
.super Ljava/lang/Object;
.source "SDMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/util/SDMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundSetXmlInfo"
.end annotation


# instance fields
.field public dversion:J

.field private eSoundSet:Lorg/kxml2/kdom/Element;

.field public lang:Ljava/lang/String;

.field public nextPage:J

.field private soundsetChildDAOs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;"
        }
    .end annotation
.end field

.field public soundsetDAOs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetDAO;",
            ">;"
        }
    .end annotation
.end field

.field public soundsetInfoDAOs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetInfoDAO;",
            ">;"
        }
    .end annotation
.end field

.field public version:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "TargetXml"

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 595
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-wide v7, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->version:J

    .line 585
    iput-wide v7, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->dversion:J

    .line 586
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    .line 587
    iput-wide v5, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->nextPage:J

    .line 588
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    .line 589
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    .line 590
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    .line 592
    iput-object v4, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    .line 598
    :try_start_0
    new-instance v2, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v2}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 599
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 600
    new-instance v0, Lorg/kxml2/kdom/Document;

    invoke-direct {v0}, Lorg/kxml2/kdom/Document;-><init>()V

    .line 601
    .local v0, doc:Lorg/kxml2/kdom/Document;
    invoke-virtual {v0, v2}, Lorg/kxml2/kdom/Document;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 604
    invoke-virtual {v0}, Lorg/kxml2/kdom/Document;->getRootElement()Lorg/kxml2/kdom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    .line 607
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    const/4 v4, 0x0

    const-string v5, "timestamp"

    invoke-virtual {v3, v4, v5}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->version:J

    .line 608
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    const/4 v4, 0x0

    const-string v5, "dversion"

    invoke-virtual {v3, v4, v5}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->dversion:J

    .line 609
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    const/4 v4, 0x0

    const-string v5, "lang"

    invoke-virtual {v3, v4, v5}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    .line 610
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->nextPage:J

    .line 612
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    const/4 v4, 0x0

    const-string v5, "next"

    invoke-virtual {v3, v4, v5}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, next:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 614
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->nextPage:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v0           #doc:Lorg/kxml2/kdom/Document;
    .end local v1           #next:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getChildList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .parameter "GUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    const/4 v2, 0x0

    .line 902
    .local v2, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    if-nez p1, :cond_1

    .line 904
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 906
    .local v0, dao:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v3, 0x1

    iget v4, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-ne v3, v4, :cond_0

    .line 908
    iget-object p1, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 914
    .end local v0           #dao:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_3

    .line 916
    iget-object v3, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 918
    .local v0, dao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object p1, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    goto :goto_0

    .line 922
    .end local v0           #dao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_2
    iget-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    .line 925
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method public parserAssetList()V
    .locals 21

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 763
    :cond_0
    return-void

    .line 626
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v16

    .line 627
    .local v16, totalSoundItem:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    .line 629
    const/4 v13, 0x0

    .line 630
    .local v13, refType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v11

    .line 631
    .local v11, obj:Ljava/lang/Object;
    instance-of v0, v11, Lorg/kxml2/kdom/Element;

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 627
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 636
    :cond_3
    const/4 v13, 0x0

    move-object v7, v11

    .line 637
    check-cast v7, Lorg/kxml2/kdom/Element;

    .line 639
    .local v7, eSoundSetNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v7}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "AssetSound"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 641
    const/4 v13, 0x1

    .line 642
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 643
    .local v17, type:Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 645
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 647
    .local v9, itemType:I
    packed-switch v9, :pswitch_data_0

    .line 669
    .end local v9           #itemType:I
    :cond_4
    :goto_2
    const-string v3, ""

    .line 670
    .local v3, SoundSetGUID:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "GUID"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 675
    new-instance v5, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v5}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 677
    .local v5, dat:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 678
    iput v13, v5, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 679
    iput-object v3, v5, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 680
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->version:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 681
    const/16 v18, 0x0

    const-string v19, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->asset_id:J

    .line 682
    const/16 v18, 0x0

    const-string v19, "aui"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v18

    move/from16 v0, v18

    iput-byte v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->auth_need:B

    .line 683
    const/16 v18, 0x0

    const-string v19, "size"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 684
    const/16 v18, 0x0

    const-string v19, "cat"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 685
    const/16 v18, 0x0

    const-string v19, "preUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->prelisten_url:Ljava/lang/String;

    .line 686
    const/16 v18, 0x0

    const-string v19, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, ParserString:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "reldate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 690
    const/16 v18, 0x0

    const-string v19, "rating"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    if-eqz v2, :cond_5

    .line 692
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->rating:J

    .line 693
    :cond_5
    const/16 v18, 0x0

    const-string v19, "ratingCount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    if-eqz v2, :cond_6

    .line 695
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->rating_count:J

    .line 696
    :cond_6
    const/16 v18, 0x0

    const-string v19, "downloadCount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    if-eqz v2, :cond_7

    .line 698
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->download_count:J

    .line 699
    :cond_7
    const/16 v18, 0x0

    const-string v19, "commentCount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 700
    if-eqz v2, :cond_8

    .line 701
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->comment_count:J

    .line 702
    :cond_8
    const/16 v18, 0x0

    const-string v19, "likeCount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    if-eqz v2, :cond_9

    .line 704
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/sdm/provider/SoundSetDAO;->likeCount:J

    .line 706
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const/16 v18, 0x0

    const-string v19, "refType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 710
    new-instance v4, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v4}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 712
    .local v4, childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object v3, v4, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 713
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 714
    const/16 v18, 0x0

    const-string v19, "refType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v4           #childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_a
    new-instance v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v14}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 732
    .local v14, t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    iput v13, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 733
    iput-object v3, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 736
    invoke-virtual {v7}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v15

    .line 737
    .local v15, totalChildNodes:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v15, :cond_d

    .line 740
    invoke-virtual {v7, v10}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v12

    .line 741
    .local v12, obj_subnode:Ljava/lang/Object;
    instance-of v0, v12, Lorg/kxml2/kdom/Element;

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 737
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 650
    .end local v2           #ParserString:Ljava/lang/String;
    .end local v3           #SoundSetGUID:Ljava/lang/String;
    .end local v5           #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v10           #j:I
    .end local v12           #obj_subnode:Ljava/lang/Object;
    .end local v14           #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v15           #totalChildNodes:I
    .restart local v9       #itemType:I
    :pswitch_0
    const/4 v13, 0x1

    .line 651
    goto/16 :goto_2

    .line 653
    :pswitch_1
    const/4 v13, 0x2

    .line 654
    goto/16 :goto_2

    .line 656
    :pswitch_2
    const/4 v13, 0x4

    .line 657
    goto/16 :goto_2

    .line 659
    :pswitch_3
    const/4 v13, 0x3

    goto/16 :goto_2

    .end local v9           #itemType:I
    .restart local v2       #ParserString:Ljava/lang/String;
    .restart local v3       #SoundSetGUID:Ljava/lang/String;
    .restart local v5       #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .restart local v10       #j:I
    .restart local v12       #obj_subnode:Ljava/lang/Object;
    .restart local v14       #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .restart local v15       #totalChildNodes:I
    :cond_c
    move-object v6, v12

    .line 745
    check-cast v6, Lorg/kxml2/kdom/Element;

    .line 746
    .local v6, eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v6}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Info"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 749
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 750
    const/16 v18, 0x0

    const-string v19, "desc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 751
    const/16 v18, 0x0

    const-string v19, "author"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 752
    const/16 v18, 0x0

    const-string v19, "corporation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    goto :goto_4

    .line 756
    .end local v6           #eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    .end local v12           #obj_subnode:Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public parserPresetAssetList()V
    .locals 19

    .prologue
    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 896
    :cond_0
    return-void

    .line 769
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v15

    .line 770
    .local v15, totalSoundItem:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v15, :cond_0

    .line 772
    const/4 v12, 0x0

    .line 773
    .local v12, refType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v10

    .line 774
    .local v10, obj:Ljava/lang/Object;
    instance-of v0, v10, Lorg/kxml2/kdom/Element;

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 770
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 779
    :cond_3
    const/4 v12, 0x0

    move-object v6, v10

    .line 780
    check-cast v6, Lorg/kxml2/kdom/Element;

    .line 782
    .local v6, eSoundSetNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v6}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AssetSound"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 784
    const/4 v12, 0x1

    .line 785
    const/16 v17, 0x0

    const-string v18, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 786
    .local v16, type:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 788
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 790
    .local v8, itemType:I
    packed-switch v8, :pswitch_data_0

    .line 812
    .end local v8           #itemType:I
    :cond_4
    :goto_2
    const-string v2, ""

    .line 813
    .local v2, SoundSetGUID:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "GUID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 818
    new-instance v4, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v4}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 820
    .local v4, dat:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 821
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->downloadStatus:I

    .line 822
    iput v12, v4, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 823
    iput-object v2, v4, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 824
    const-string v17, "0"

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 825
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->asset_id:J

    .line 826
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-byte v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->auth_need:B

    .line 827
    const/16 v17, 0x0

    const-string v18, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 828
    const/16 v17, 0x0

    const-string v18, "cat"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 829
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->prelisten_url:Ljava/lang/String;

    .line 830
    const/16 v17, 0x0

    const-string v18, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    .line 832
    const/16 v17, 0x0

    const-string v18, "reldate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 833
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->rating:J

    .line 834
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->rating_count:J

    .line 835
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->download_count:J

    .line 836
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->comment_count:J

    .line 837
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->likeCount:J

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const/16 v17, 0x0

    const-string v18, "refType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    iget v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 843
    new-instance v3, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v3}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 845
    .local v3, childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object v2, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 846
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 847
    const/16 v17, 0x0

    const-string v18, "refType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .end local v3           #childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_5
    new-instance v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v13}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 865
    .local v13, t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    iput v12, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 866
    iput-object v2, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 869
    invoke-virtual {v6}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v14

    .line 870
    .local v14, totalChildNodes:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    if-ge v9, v14, :cond_8

    .line 873
    invoke-virtual {v6, v9}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v11

    .line 874
    .local v11, obj_subnode:Ljava/lang/Object;
    instance-of v0, v11, Lorg/kxml2/kdom/Element;

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 870
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 793
    .end local v2           #SoundSetGUID:Ljava/lang/String;
    .end local v4           #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v9           #j:I
    .end local v11           #obj_subnode:Ljava/lang/Object;
    .end local v13           #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v14           #totalChildNodes:I
    .restart local v8       #itemType:I
    :pswitch_0
    const/4 v12, 0x1

    .line 794
    goto/16 :goto_2

    .line 796
    :pswitch_1
    const/4 v12, 0x2

    .line 797
    goto/16 :goto_2

    .line 799
    :pswitch_2
    const/4 v12, 0x4

    .line 800
    goto/16 :goto_2

    .line 802
    :pswitch_3
    const/4 v12, 0x3

    goto/16 :goto_2

    .end local v8           #itemType:I
    .restart local v2       #SoundSetGUID:Ljava/lang/String;
    .restart local v4       #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .restart local v9       #j:I
    .restart local v11       #obj_subnode:Ljava/lang/Object;
    .restart local v13       #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .restart local v14       #totalChildNodes:I
    :cond_7
    move-object v5, v11

    .line 878
    check-cast v5, Lorg/kxml2/kdom/Element;

    .line 879
    .local v5, eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v5}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Info"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 882
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 883
    const/16 v17, 0x0

    const-string v18, "desc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 884
    const/16 v17, 0x0

    const-string v18, "author"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 885
    const/16 v17, 0x0

    const-string v18, "corporation"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    goto :goto_4

    .line 889
    .end local v5           #eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    .end local v11           #obj_subnode:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 790
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public parserXmlFromSD()V
    .locals 20

    .prologue
    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1049
    :cond_0
    return-void

    .line 932
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v16

    .line 933
    .local v16, totalSoundItem:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 935
    const/4 v13, 0x0

    .line 936
    .local v13, refType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v11

    .line 937
    .local v11, obj:Ljava/lang/Object;
    instance-of v0, v11, Lorg/kxml2/kdom/Element;

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 933
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 942
    :cond_3
    const/4 v13, 0x0

    move-object v6, v11

    .line 943
    check-cast v6, Lorg/kxml2/kdom/Element;

    .line 945
    .local v6, eSoundSetNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v6}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "AssetSound"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 947
    const/4 v13, 0x1

    .line 948
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 949
    .local v17, type:Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 951
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 953
    .local v8, itemType:I
    packed-switch v8, :pswitch_data_0

    .line 975
    .end local v8           #itemType:I
    :cond_4
    :goto_1
    const-string v2, ""

    .line 976
    .local v2, SoundSetGUID:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "GUID"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 981
    new-instance v4, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v4}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 983
    .local v4, dat:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 984
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->downloadStatus:I

    .line 985
    iput v13, v4, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 986
    iput-object v2, v4, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 987
    const-string v18, "0"

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 988
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->asset_id:J

    .line 989
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->auth_need:B

    .line 990
    const/16 v18, 0x0

    const-string v19, "size"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 991
    const/16 v18, 0x0

    const-string v19, "cat"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 992
    const-string v18, ""

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->prelisten_url:Ljava/lang/String;

    .line 993
    const/16 v18, 0x0

    const-string v19, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    .line 995
    const/16 v18, 0x0

    const-string v19, "reldate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 996
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->rating:J

    .line 997
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->rating_count:J

    .line 998
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->download_count:J

    .line 999
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->comment_count:J

    .line 1000
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->likeCount:J

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const/16 v18, 0x0

    const-string v19, "refType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    iget v0, v4, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1006
    new-instance v3, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v3}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 1008
    .local v3, childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object v2, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 1009
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 1010
    const/16 v18, 0x0

    const-string v19, "refType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .end local v3           #childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_5
    invoke-virtual {v6}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v15

    .line 1018
    .local v15, totalChildNodes:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v15, :cond_2

    .line 1021
    invoke-virtual {v6, v9}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v12

    .line 1022
    .local v12, obj_subnode:Ljava/lang/Object;
    instance-of v0, v12, Lorg/kxml2/kdom/Element;

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 1018
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 956
    .end local v2           #SoundSetGUID:Ljava/lang/String;
    .end local v4           #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v9           #j:I
    .end local v12           #obj_subnode:Ljava/lang/Object;
    .end local v15           #totalChildNodes:I
    .restart local v8       #itemType:I
    :pswitch_0
    const/4 v13, 0x1

    .line 957
    goto/16 :goto_1

    .line 959
    :pswitch_1
    const/4 v13, 0x2

    .line 960
    goto/16 :goto_1

    .line 962
    :pswitch_2
    const/4 v13, 0x4

    .line 963
    goto/16 :goto_1

    .line 965
    :pswitch_3
    const/4 v13, 0x3

    goto/16 :goto_1

    .end local v8           #itemType:I
    .restart local v2       #SoundSetGUID:Ljava/lang/String;
    .restart local v4       #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .restart local v9       #j:I
    .restart local v12       #obj_subnode:Ljava/lang/Object;
    .restart local v15       #totalChildNodes:I
    :cond_7
    move-object v5, v12

    .line 1026
    check-cast v5, Lorg/kxml2/kdom/Element;

    .line 1027
    .local v5, eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v5}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Info"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1029
    new-instance v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v14}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 1030
    .local v14, t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    iput v13, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 1031
    iput-object v2, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 1033
    const/16 v18, 0x0

    const-string v19, "lang"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 1035
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 1036
    const/16 v18, 0x0

    const-string v19, "desc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 1037
    const/16 v18, 0x0

    const-string v19, "author"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 1038
    const/16 v18, 0x0

    const-string v19, "corporation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    .line 1039
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1040
    .local v10, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
