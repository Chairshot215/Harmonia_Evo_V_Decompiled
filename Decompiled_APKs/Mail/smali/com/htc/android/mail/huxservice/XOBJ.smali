.class public Lcom/htc/android/mail/huxservice/XOBJ;
.super Ljava/lang/Object;
.source "XOBJ.java"


# static fields
.field public static final AT:Ljava/lang/String; = "$"

.field public static final ATTR:Ljava/lang/String; = "$attr"

.field public static final NAME:Ljava/lang/String; = "$name"

.field public static final NEXT:Ljava/lang/String; = "$next"

.field public static final OPEN:Ljava/lang/String; = "$open"

.field public static final SP:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "XOBJ"

.field public static final TEXT:Ljava/lang/String; = "$text"

.field static final XOBJ_STACK_SIZE:I = 0x80

.field static xobj_stack:[Ljava/lang/Object;

.field static xobj_stack_n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 17
    .parameter "root"
    .parameter "d"

    .prologue
    .line 52
    if-nez p0, :cond_1

    const/4 v11, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v14, p0

    .line 53
    check-cast v14, Ljava/util/HashMap;

    .line 54
    .local v14, xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "$next"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 55
    .local v10, next:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "$attr"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 56
    .local v3, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "$name"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 57
    .local v9, name:Ljava/lang/String;
    const-string v15, "$text"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 58
    .local v12, text:Ljava/lang/String;
    const-string v4, ""

    .line 59
    .local v4, ds:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move/from16 v0, p1

    if-ge v7, v0, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 60
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, s:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, aa:[Ljava/lang/Object;
    const/4 v7, 0x0

    :goto_2
    array-length v15, v2

    if-ge v7, v15, :cond_3

    .line 64
    aget-object v6, v2, v7

    check-cast v6, Ljava/util/Map$Entry;

    .line 65
    .local v6, ee:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 68
    .end local v2           #aa:[Ljava/lang/Object;
    .end local v6           #ee:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, a:[Ljava/lang/Object;
    array-length v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    array-length v15, v1

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    if-eqz v3, :cond_5

    .line 70
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/>\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 87
    :goto_3
    if-eqz v10, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v10, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->dump(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 71
    :cond_5
    array-length v15, v1

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-eqz v12, :cond_6

    .line 72
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 73
    :cond_6
    array-length v15, v1

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    if-eqz v3, :cond_7

    if-eqz v12, :cond_7

    .line 74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 76
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 77
    const/4 v7, 0x0

    :goto_4
    array-length v15, v1

    if-ge v7, v15, :cond_a

    .line 78
    aget-object v5, v1, v7

    check-cast v5, Ljava/util/Map$Entry;

    .line 79
    .local v5, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 80
    .local v8, key:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 81
    .local v13, val:Ljava/lang/Object;
    const-string v15, "$text"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 82
    :cond_8
    const-string v15, "$"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 77
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 83
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, p1, 0x1

    move/from16 v0, v16

    invoke-static {v13, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->dump(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 85
    .end local v5           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #key:Ljava/lang/String;
    .end local v13           #val:Ljava/lang/Object;
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3
.end method

.method public static dump(Ljava/lang/Object;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->dump(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 50
    :cond_0
    return-void
.end method

.method public static declared-synchronized xml_xobj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "s"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 151
    const-class v9, Lcom/htc/android/mail/huxservice/XOBJ;

    monitor-enter v9

    const/4 v6, 0x0

    .line 152
    .local v6, xobj:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 153
    .local v5, text:Ljava/lang/String;
    const/4 v1, 0x1

    .line 155
    .local v1, eventType:I
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 156
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 157
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 158
    .local v7, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 159
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    const/4 v8, 0x0

    :try_start_1
    sput v8, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_0
    if-eq v1, v12, :cond_1

    .line 165
    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_1
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    goto :goto_0

    .line 160
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 200
    .end local v6           #xobj:Ljava/lang/Object;
    :cond_0
    monitor-exit v9

    return-object v8

    .line 167
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #xobj:Ljava/lang/Object;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_begin(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const/4 v5, 0x0

    .line 169
    goto :goto_1

    .line 171
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_end(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 151
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #xobj:Ljava/lang/Object;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 174
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #xobj:Ljava/lang/Object;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    :try_start_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 175
    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v8, :cond_1

    .line 183
    const-string v8, "XOBJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*error: xml_xobj stack_n="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    sget v8, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    if-ge v3, v8, :cond_1

    .line 185
    const-string v8, "XOBJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    :cond_1
    sget v4, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    .line 192
    .local v4, retry:I
    :cond_2
    sget v8, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    if-le v8, v12, :cond_3

    .line 193
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v10}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_end(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    add-int/lit8 v4, v4, -0x1

    .line 195
    if-gez v4, :cond_2

    .line 198
    :cond_3
    sget v8, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    if-ne v8, v12, :cond_4

    sget-object v8, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v6, v8, v10

    move-object v8, v6

    .line 199
    .end local v6           #xobj:Ljava/lang/Object;
    :goto_3
    sget v10, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    if-lez v10, :cond_0

    sget-object v10, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    sget v11, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    add-int/lit8 v11, v11, -0x1

    sput v11, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    const/4 v12, 0x0

    aput-object v12, v10, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .restart local v6       #xobj:Ljava/lang/Object;
    :cond_4
    move-object v8, v6

    goto :goto_3

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static xobj_attr_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "xobj"
    .parameter "key"
    .parameter "val"

    .prologue
    .line 280
    if-nez p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 282
    .local v0, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static xobj_begin(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "xpp"
    .parameter "name"

    .prologue
    .line 109
    sget v4, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    .line 110
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "XOBJ"

    const-string v5, "*error: xobj stack overflow"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v3, 0x0

    .line 122
    :goto_0
    return-object v3

    .line 113
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v3, xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "$name"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "$open"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .local v2, n:I
    if-lez v2, :cond_3

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_2
    const-string v4, "$attr"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v0           #attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_3
    sget-object v4, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    sget v5, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    aput-object v3, v4, v5

    goto :goto_0
.end method

.method public static xobj_empty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 265
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, root:Ljava/lang/Object;
    return-object v0
.end method

.method static xobj_end(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "xpp"
    .parameter "name"
    .parameter "text"

    .prologue
    .line 127
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_find(Ljava/lang/String;)I

    move-result v4

    .local v4, pos:I
    if-gez v4, :cond_1

    .line 128
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "XOBJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*error: xobj_stack_find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v5, v6, v4

    check-cast v5, Ljava/util/HashMap;

    .line 132
    .local v5, xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "$open"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_2

    .line 134
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "$text"

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_2
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    :goto_1
    sget v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    if-ge v1, v6, :cond_5

    .line 138
    sget-object v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "$name"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, head:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_4

    .line 140
    :goto_2
    const-string v6, "$next"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .local v3, next:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 141
    :cond_3
    const-string v6, "$next"

    sget-object v7, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v7, v7, v1

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v3           #next:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3
    sget-object v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_4
    sget-object v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 147
    .end local v0           #head:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v4, 0x1

    sput v6, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    goto :goto_0
.end method

.method public static xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    .line 27
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 35
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v3, p0

    .line 28
    check-cast v3, Ljava/util/HashMap;

    .line 29
    .local v3, xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, keys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 31
    const-string v4, "$name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, name:Ljava/lang/String;
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_3
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v3, Ljava/util/HashMap;

    .restart local v3       #xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public static xobj_find_attr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "xobj"
    .parameter "key"
    .parameter "attr_key"

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 45
    .end local p0
    :cond_0
    :goto_0
    return-object v1

    .line 44
    .restart local p0
    :cond_1
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    const-string v2, "$attr"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .parameter "xobj"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    const-string v3, "Y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 222
    :cond_2
    const-string v3, "y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static xobj_find_int(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 228
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 229
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 39
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    const-string v0, "$text"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static xobj_gen_exchange(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "EASAccount"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, root:Ljava/lang/Object;
    const-string v1, "exchangeABSyncFlag"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getABSyncFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "exchangeCalSyncFlag"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getCalSyncFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "exchangeDaysToSync"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getDaysToSync()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "exchangeDomain"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "exchangeEmail"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "exchangeFetchFreq"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getFetchFreq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "exchangeMailSyncFlag"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getMailSyncFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "exchangeNickName"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "exchangeSecureFlag"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getsecureFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "exchangeServer"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "exchangeUser"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "exchangeVerifyCertFlag"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getVerifyCertFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-object v0
.end method

.method public static xobj_gen_profile(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;Lcom/htc/android/mail/Account$DeviceInfo;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .parameter "EASAccount"
    .parameter "deviceInfo"

    .prologue
    .line 304
    const/4 v0, 0x1

    .line 305
    .local v0, empty:Z
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 306
    .local v1, root:Ljava/lang/Object;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "XOBJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    const-string v3, "firstName"

    iget-object v4, p2, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "lastName"

    iget-object v4, p2, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string p0, "sncExchangeInfo"

    .line 311
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_gen_exchange(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string p0, "sncPushNotification"

    .line 313
    if-nez v0, :cond_1

    .line 314
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, xobj:Ljava/lang/Object;
    const-string v3, "startDate"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getPushRomingNotificationStatus_startDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_attr_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v3, "endDate"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getPushRomingNotificationStatus_endDateg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_attr_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {v1, p0, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    .end local v2           #xobj:Ljava/lang/Object;
    :goto_0
    const-string p0, "sncSyncNotification"

    .line 322
    if-nez v0, :cond_2

    .line 323
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 324
    .restart local v2       #xobj:Ljava/lang/Object;
    const-string v3, "startTime"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getPushSyncNotificationStatus_startDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_attr_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "endTime"

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->getPushSyncNotificationStatus_endDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_attr_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v1, p0, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    .end local v2           #xobj:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 319
    :cond_1
    invoke-static {v1, p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_empty(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-static {v1, p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put_empty(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static xobj_get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 204
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 205
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "xobj"

    .prologue
    .line 233
    const-string v0, "$attr"

    invoke-static {p0, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static xobj_get_last(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "xobj"

    .prologue
    .line 243
    :goto_0
    if-eqz p0, :cond_0

    .line 244
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, next:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 247
    .end local v0           #next:Ljava/lang/Object;
    :cond_0
    return-object p0

    .line 245
    .restart local v0       #next:Ljava/lang/Object;
    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static xobj_get_name(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "xobj"

    .prologue
    .line 236
    const-string v0, "$name"

    invoke-static {p0, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static xobj_get_next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "xobj"

    .prologue
    .line 239
    const-string v0, "$next"

    invoke-static {p0, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 208
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 209
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static xobj_new(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, root:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v0, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "$name"

    invoke-static {v1, v2, p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v2, "$attr"

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    return-object v1
.end method

.method public static xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "xobj"
    .parameter "key"
    .parameter "val"

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 256
    .end local p0
    :goto_0
    return-void

    .line 255
    .restart local p0
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static xobj_put_empty(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 274
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_empty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public static xobj_put_text(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "xobj"
    .parameter "key"
    .parameter "text"

    .prologue
    .line 277
    invoke-static {p1, p2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static xobj_remove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "xobj"
    .parameter "key"

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 252
    .end local p0
    :goto_0
    return-void

    .line 251
    .restart local p0
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .end local p0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static xobj_stack_find(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 95
    sget v3, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack_n:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 96
    sget-object v3, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "$name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 98
    :cond_1
    if-nez p0, :cond_2

    .line 99
    sget-object v3, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_stack:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "$open"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, open:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 105
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #open:Ljava/lang/String;
    :goto_1
    return v0

    .line 103
    .restart local v0       #i:I
    .restart local v1       #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 105
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static xobj_text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "text"

    .prologue
    .line 269
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_new(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, root:Ljava/lang/Object;
    const-string v1, "$text"

    invoke-static {v0, v1, p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    return-object v0
.end method
