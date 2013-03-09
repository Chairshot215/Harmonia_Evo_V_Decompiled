.class public Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;
.super Ljava/lang/Object;
.source "SDMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/util/SDMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundXmlInfo"
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
    .locals 4
    .parameter "TargetXml"

    .prologue
    const-wide/16 v2, 0x0

    .line 1066
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-wide v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->version:J

    .line 1056
    iput-wide v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->dversion:J

    .line 1057
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->lang:Ljava/lang/String;

    .line 1058
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->nextPage:J

    .line 1059
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    .line 1060
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    .line 1061
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    .line 1063
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    .line 1069
    :try_start_0
    new-instance v1, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v1}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 1070
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1071
    new-instance v0, Lorg/kxml2/kdom/Document;

    invoke-direct {v0}, Lorg/kxml2/kdom/Document;-><init>()V

    .line 1072
    .local v0, doc:Lorg/kxml2/kdom/Document;
    invoke-virtual {v0, v1}, Lorg/kxml2/kdom/Document;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1075
    invoke-virtual {v0}, Lorg/kxml2/kdom/Document;->getRootElement()Lorg/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .end local v0           #doc:Lorg/kxml2/kdom/Document;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public parserAssetList(Landroid/content/Context;)V
    .locals 20
    .parameter "mContext"

    .prologue
    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v15

    .line 1087
    .local v15, totalSoundItem:I
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMUtil;->getSystemLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->lang:Ljava/lang/String;

    .line 1090
    const/4 v12, 0x0

    .line 1092
    .local v12, refType:I
    const/4 v12, 0x0

    .line 1093
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->eSoundSet:Lorg/kxml2/kdom/Element;

    .line 1095
    .local v8, eSoundSetNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v8}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AssetSound"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1097
    const/4 v12, 0x1

    .line 1098
    const/16 v17, 0x0

    const-string v18, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1099
    .local v16, type:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1101
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1103
    .local v9, itemType:I
    packed-switch v9, :pswitch_data_0

    .line 1126
    .end local v9           #itemType:I
    :cond_0
    :goto_0
    const-string v4, ""

    .line 1127
    .local v4, SoundSetGUID:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "GUID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1129
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/htc/sdm/util/SDMDBUtil;->getLocaleListVersion(Landroid/content/Context;I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->version:J

    .line 1130
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/htc/sdm/util/SDMDBUtil;->getLocaleListDVersion(Landroid/content/Context;I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->dversion:J

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 1135
    new-instance v6, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v6}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 1137
    .local v6, dat:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 1138
    iput v12, v6, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 1139
    iput-object v4, v6, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 1140
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->version:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 1141
    const/16 v17, 0x0

    const-string v18, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->asset_id:J

    .line 1142
    const/16 v17, 0x0

    const-string v18, "aui"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v17

    move/from16 v0, v17

    iput-byte v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->auth_need:B

    .line 1143
    const/16 v17, 0x0

    const-string v18, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 1144
    const/16 v17, 0x0

    const-string v18, "cat"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 1145
    const/16 v17, 0x0

    const-string v18, "preUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->prelisten_url:Ljava/lang/String;

    .line 1146
    const/16 v17, 0x0

    const-string v18, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    .line 1148
    const/4 v3, 0x0

    .line 1149
    .local v3, ParserString:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "reldate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 1150
    const/16 v17, 0x0

    const-string v18, "rating"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1151
    if-eqz v3, :cond_1

    .line 1152
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->rating:J

    .line 1153
    :cond_1
    const/16 v17, 0x0

    const-string v18, "ratingCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1154
    if-eqz v3, :cond_2

    .line 1155
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->rating_count:J

    .line 1156
    :cond_2
    const/16 v17, 0x0

    const-string v18, "downloadCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1157
    if-eqz v3, :cond_3

    .line 1158
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->download_count:J

    .line 1159
    :cond_3
    const/16 v17, 0x0

    const-string v18, "commentCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    if-eqz v3, :cond_4

    .line 1161
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->comment_count:J

    .line 1162
    :cond_4
    const/16 v17, 0x0

    const-string v18, "likeCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1163
    if-eqz v3, :cond_5

    .line 1164
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/sdm/provider/SoundSetDAO;->likeCount:J

    .line 1166
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const/16 v17, 0x0

    const-string v18, "refType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 1170
    new-instance v5, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v5}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 1172
    .local v5, childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object v4, v5, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 1173
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 1174
    const/16 v17, 0x0

    const-string v18, "refType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetChildDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    .end local v5           #childDao:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_6
    new-instance v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v13}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 1181
    .local v13, t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    iput v12, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 1182
    iput-object v4, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->lang:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 1185
    invoke-virtual {v8}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v14

    .line 1186
    .local v14, totalChildNodes:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    if-ge v10, v14, :cond_9

    .line 1189
    invoke-virtual {v8, v10}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v11

    .line 1190
    .local v11, obj_subnode:Ljava/lang/Object;
    instance-of v0, v11, Lorg/kxml2/kdom/Element;

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1186
    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1106
    .end local v3           #ParserString:Ljava/lang/String;
    .end local v4           #SoundSetGUID:Ljava/lang/String;
    .end local v6           #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v10           #j:I
    .end local v11           #obj_subnode:Ljava/lang/Object;
    .end local v13           #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v14           #totalChildNodes:I
    .restart local v9       #itemType:I
    :pswitch_0
    const/4 v12, 0x1

    .line 1107
    goto/16 :goto_0

    .line 1109
    :pswitch_1
    const/4 v12, 0x2

    .line 1110
    goto/16 :goto_0

    .line 1112
    :pswitch_2
    const/4 v12, 0x4

    .line 1113
    goto/16 :goto_0

    .line 1115
    :pswitch_3
    const/4 v12, 0x3

    goto/16 :goto_0

    .end local v9           #itemType:I
    .restart local v3       #ParserString:Ljava/lang/String;
    .restart local v4       #SoundSetGUID:Ljava/lang/String;
    .restart local v6       #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .restart local v10       #j:I
    .restart local v11       #obj_subnode:Ljava/lang/Object;
    .restart local v13       #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .restart local v14       #totalChildNodes:I
    :cond_8
    move-object v7, v11

    .line 1194
    check-cast v7, Lorg/kxml2/kdom/Element;

    .line 1195
    .local v7, eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    invoke-virtual {v7}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Info"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1198
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 1199
    const/16 v17, 0x0

    const-string v18, "desc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 1200
    const/16 v17, 0x0

    const-string v18, "author"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 1201
    const/16 v17, 0x0

    const-string v18, "corporation"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    goto :goto_2

    .line 1205
    .end local v7           #eSoundSetDataNode:Lorg/kxml2/kdom/Element;
    .end local v11           #obj_subnode:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .end local v3           #ParserString:Ljava/lang/String;
    .end local v4           #SoundSetGUID:Ljava/lang/String;
    .end local v6           #dat:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v10           #j:I
    .end local v13           #t_soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v14           #totalChildNodes:I
    .end local v16           #type:Ljava/lang/String;
    :cond_a
    return-void

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
