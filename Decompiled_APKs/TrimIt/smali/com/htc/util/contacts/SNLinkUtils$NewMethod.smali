.class public Lcom/htc/util/contacts/SNLinkUtils$NewMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewMethod"
.end annotation


# static fields
.field public static final FACEBOOK_ENDING_TOKEN:Ljava/lang/String; = "</Facebook>"

.field public static final FACEBOOK_STARTING_TOKEN:Ljava/lang/String; = "<Facebook>"

.field public static final FLICKR_ENDING_TOKEN:Ljava/lang/String; = "</Flickr>"

.field public static final FLICKR_STARTING_TOKEN:Ljava/lang/String; = "<Flickr>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field public static final PLURK_ENDING_TOKEN:Ljava/lang/String; = "</Plurk>"

.field public static final PLURK_STARTING_TOKEN:Ljava/lang/String; = "<Plurk>"

.field public static final TWITTER_ENDING_TOKEN:Ljava/lang/String; = "</Twitter>"

.field public static final TWITTER_STARTING_TOKEN:Ljava/lang/String; = "<Twitter>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 9
    .parameter "text"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 662
    if-nez p1, :cond_1

    .line 706
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 665
    .restart local p0
    :cond_1
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    if-nez p0, :cond_3

    const-string v6, ""

    :goto_1
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v5, textBuffer:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 671
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v0, :cond_4

    .line 673
    const-string v6, "<HTCData>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    const-string v6, "friendof:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, defaultAction:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 685
    invoke-static {v7, v5, v3}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 688
    :cond_2
    const-string v6, "</HTCData>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v3           #defaultAction:Ljava/lang/String;
    .end local v5           #textBuffer:Ljava/lang/StringBuilder;
    :cond_3
    move-object v6, p0

    .line 669
    goto :goto_1

    .line 691
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v5       #textBuffer:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 692
    .local v1, dataListSize:I
    const/16 v6, 0x14

    if-le v1, v6, :cond_5

    .line 693
    const-string v6, "SNLinkUtils"

    const-string v7, "link infomation exceed the limit so that don\'t add it."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_7

    .line 698
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 699
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 697
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 705
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-static {p0, v0, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 715
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 716
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 717
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 718
    iput-object p3, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 719
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "SNType"
    .parameter "isStart"

    .prologue
    .line 799
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const-string v0, ""

    .line 824
    :goto_0
    return-object v0

    .line 802
    :cond_0
    if-eqz p1, :cond_5

    .line 803
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "facebook sso"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    :cond_1
    const-string v0, "<Facebook>"

    goto :goto_0

    .line 805
    :cond_2
    const-string v0, "flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    const-string v0, "<Flickr>"

    goto :goto_0

    .line 807
    :cond_3
    const-string v0, "plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 808
    const-string v0, "<Plurk>"

    goto :goto_0

    .line 809
    :cond_4
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 810
    const-string v0, "<Twitter>"

    goto :goto_0

    .line 813
    :cond_5
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "facebook sso"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    :cond_6
    const-string v0, "</Facebook>"

    goto :goto_0

    .line 815
    :cond_7
    const-string v0, "flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 816
    const-string v0, "</Flickr>"

    goto :goto_0

    .line 817
    :cond_8
    const-string v0, "plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 818
    const-string v0, "</Plurk>"

    goto :goto_0

    .line 819
    :cond_9
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 820
    const-string v0, "</Twitter>"

    goto :goto_0

    .line 824
    :cond_a
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 506
    const/4 v3, 0x0

    .line 658
    :cond_0
    :goto_0
    return-object v3

    .line 508
    :cond_1
    const-string v22, "<HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 509
    .local v11, startingIndex:I
    const-string v22, "</HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 510
    .local v4, endingIndex:I
    if-lt v4, v11, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 511
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 513
    :cond_3
    const-string v22, "<HTCData>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v11

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 515
    .local v16, subText:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 516
    const/4 v3, 0x0

    goto :goto_0

    .line 520
    :cond_4
    const/4 v9, 0x0

    .line 521
    .local v9, idListTokens:Ljava/util/StringTokenizer;
    const/4 v3, 0x0

    .line 524
    .local v3, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const-string v22, "<Facebook>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 525
    .local v12, startingIndex_facebook:I
    const-string v22, "</Facebook>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 526
    .local v5, endingIndex_facebook:I
    if-lt v5, v12, :cond_5

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_5

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_a

    .line 554
    :cond_5
    :goto_1
    const-string v22, "<Flickr>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 555
    .local v13, startingIndex_flickr:I
    const-string v22, "</Flickr>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 556
    .local v6, endingIndex_flickr:I
    if-lt v6, v13, :cond_6

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_6

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_d

    .line 588
    :cond_6
    :goto_2
    const-string v22, "<Plurk>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 589
    .local v14, startingIndex_plurk:I
    const-string v22, "</Plurk>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 590
    .local v7, endingIndex_plurk:I
    if-lt v7, v14, :cond_7

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_7

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    .line 622
    :cond_7
    :goto_3
    const-string v22, "<Twitter>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 623
    .local v15, startingIndex_twitter:I
    const-string v22, "</Twitter>"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 624
    .local v8, endingIndex_twitter:I
    if-lt v8, v15, :cond_8

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_8

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_13

    .line 655
    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 656
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 529
    .end local v6           #endingIndex_flickr:I
    .end local v7           #endingIndex_plurk:I
    .end local v8           #endingIndex_twitter:I
    .end local v13           #startingIndex_flickr:I
    .end local v14           #startingIndex_plurk:I
    .end local v15           #startingIndex_twitter:I
    :cond_a
    const-string v22, "<Facebook>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v12

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 531
    .local v17, subText_facebook:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    .end local v9           #idListTokens:Ljava/util/StringTokenizer;
    const-string v22, "|"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .restart local v9       #idListTokens:Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v3       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_b
    :goto_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 534
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 535
    .local v21, token:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 536
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 537
    .local v10, ids:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 540
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 542
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 543
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 544
    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 545
    const-string v22, "facebook"

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 546
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 550
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v10           #ids:[Ljava/lang/String;
    .end local v21           #token:Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 560
    .end local v17           #subText_facebook:Ljava/lang/String;
    .restart local v6       #endingIndex_flickr:I
    .restart local v13       #startingIndex_flickr:I
    :cond_d
    const-string v22, "<Flickr>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v13

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 562
    .local v18, subText_flickr:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    .end local v9           #idListTokens:Ljava/util/StringTokenizer;
    const-string v22, "|"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .restart local v9       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v3, :cond_e

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .restart local v3       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_e
    :goto_6
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 568
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 569
    .restart local v21       #token:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 570
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 571
    .restart local v10       #ids:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 574
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 576
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 577
    .restart local v2       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 578
    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 579
    const-string v22, "flickr"

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 580
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 584
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v10           #ids:[Ljava/lang/String;
    .end local v21           #token:Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 594
    .end local v18           #subText_flickr:Ljava/lang/String;
    .restart local v7       #endingIndex_plurk:I
    .restart local v14       #startingIndex_plurk:I
    :cond_10
    const-string v22, "<Plurk>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v14

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 596
    .local v19, subText_plurk:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    .end local v9           #idListTokens:Ljava/util/StringTokenizer;
    const-string v22, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .restart local v9       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v3, :cond_11

    .line 598
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .restart local v3       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_11
    :goto_7
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 602
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 603
    .restart local v21       #token:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 604
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 605
    .restart local v10       #ids:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_11

    .line 608
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 610
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 611
    .restart local v2       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 612
    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 613
    const-string v22, "plurk"

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 614
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 618
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v10           #ids:[Ljava/lang/String;
    .end local v21           #token:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 628
    .end local v19           #subText_plurk:Ljava/lang/String;
    .restart local v8       #endingIndex_twitter:I
    .restart local v15       #startingIndex_twitter:I
    :cond_13
    const-string v22, "<Twitter>"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 630
    .local v20, subText_twitter:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    .end local v9           #idListTokens:Ljava/util/StringTokenizer;
    const-string v22, "|"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .restart local v9       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v3, :cond_14

    .line 632
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .restart local v3       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_14
    :goto_8
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 636
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 637
    .restart local v21       #token:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 638
    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 639
    .restart local v10       #ids:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_14

    .line 642
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 644
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 645
    .restart local v2       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const-string v23, "id:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 646
    const/16 v22, 0x1

    aget-object v22, v10, v22

    const-string v23, "friendof:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 647
    const-string v22, "twitter"

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 648
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 652
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v10           #ids:[Ljava/lang/String;
    .end local v21           #token:Ljava/lang/String;
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 828
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 831
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 832
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v1, :cond_0

    .line 836
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 838
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 839
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 841
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 842
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 846
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 838
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 12
    .parameter "text"
    .parameter
    .parameter "isNewFormat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v0, 0x0

    .line 725
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_4

    .line 726
    const-string v10, "<HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 727
    .local v9, startingIndex:I
    const-string v10, "</HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 728
    .local v6, endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 795
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 732
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 744
    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    :goto_1
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 745
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 746
    .local v3, dataListSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    .local v4, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 750
    .local v1, curType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 751
    .local v8, preType:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 752
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 754
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v1, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 755
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 756
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_2

    .line 757
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 760
    :cond_2
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const/4 v10, 0x1

    invoke-static {v1, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_3
    const-string v10, "id:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    const-string v10, "friendof:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const/16 v10, 0x7c

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    move-object v8, v1

    .line 751
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 734
    .end local v1           #curType:Ljava/lang/String;
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #endingIndex:I
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    .end local v9           #startingIndex:I
    :cond_4
    const-string v10, "<sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 735
    .restart local v9       #startingIndex:I
    const-string v10, "</sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 736
    .restart local v6       #endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 774
    .restart local v1       #curType:Ljava/lang/String;
    .restart local v3       #dataListSize:I
    .restart local v4       #dataStringBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #i:I
    .restart local v8       #preType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_6

    .line 775
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 777
    :cond_6
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    .local v5, defaultAction:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 782
    const/4 v10, 0x0

    invoke-static {v10, v4, v5}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 785
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 786
    const/4 v10, 0x0

    const-string v11, "<HTCData>"

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v10, "</HTCData>"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    .end local v1           #curType:Ljava/lang/String;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #defaultAction:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
