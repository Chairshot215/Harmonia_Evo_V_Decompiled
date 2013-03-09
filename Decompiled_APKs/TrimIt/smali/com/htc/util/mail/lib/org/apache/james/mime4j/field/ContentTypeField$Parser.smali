.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;
.super Ljava/lang/Object;
.source "ContentTypeField.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
    .locals 18
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 209
    const/4 v7, 0x0

    .line 210
    .local v7, parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    const-string v5, ""

    .line 211
    .local v5, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 213
    .local v6, parameters:Ljava/util/Map;
    new-instance v15, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 215
    .local v15, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :try_start_0
    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    :try_start_1
    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v17

    .line 232
    .local v17, type:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, subType:Ljava/lang/String;
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/ArrayList;

    move-result-object v11

    .line 238
    .local v11, paramNames:Ljava/util/ArrayList;
    invoke-virtual {v15}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 240
    .local v13, paramValues:Ljava/util/ArrayList;
    if-eqz v11, :cond_2

    if-eqz v13, :cond_2

    .line 241
    const/4 v9, 0x0

    .local v9, i:I
    move-object v14, v6

    .end local v6           #parameters:Ljava/util/Map;
    .local v14, parameters:Ljava/util/Map;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 242
    if-nez v14, :cond_3

    .line 243
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff4cccccccccccdL

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 244
    .end local v14           #parameters:Ljava/util/Map;
    .restart local v6       #parameters:Ljava/util/Map;
    :goto_2
    :try_start_3
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, paramName:Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 246
    .local v12, paramValue:Ljava/lang/String;
    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 241
    add-int/lit8 v9, v9, 0x1

    move-object v14, v6

    .end local v6           #parameters:Ljava/util/Map;
    .restart local v14       #parameters:Ljava/util/Map;
    goto :goto_1

    .line 217
    .end local v9           #i:I
    .end local v10           #paramName:Ljava/lang/String;
    .end local v11           #paramNames:Ljava/util/ArrayList;
    .end local v12           #paramValue:Ljava/lang/String;
    .end local v13           #paramValues:Ljava/util/ArrayList;
    .end local v14           #parameters:Ljava/util/Map;
    .end local v16           #subType:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    .restart local v6       #parameters:Ljava/util/Map;
    :catch_0
    move-exception v8

    .line 218
    .local v8, e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 221
    :cond_0
    move-object v7, v8

    .line 228
    goto/16 :goto_0

    .line 223
    .end local v8           #e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_1
    move-exception v8

    .line 224
    .local v8, e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    :cond_1
    new-instance v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;

    .end local v7           #parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    .restart local v7       #parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    goto/16 :goto_0

    .line 251
    .end local v8           #e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    :catch_2
    move-exception v1

    .line 253
    :cond_2
    :goto_3
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;)V

    return-object v1

    .line 251
    .end local v6           #parameters:Ljava/util/Map;
    .restart local v9       #i:I
    .restart local v11       #paramNames:Ljava/util/ArrayList;
    .restart local v13       #paramValues:Ljava/util/ArrayList;
    .restart local v14       #parameters:Ljava/util/Map;
    .restart local v16       #subType:Ljava/lang/String;
    .restart local v17       #type:Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;
    .restart local v6       #parameters:Ljava/util/Map;
    goto :goto_3

    .end local v6           #parameters:Ljava/util/Map;
    .restart local v14       #parameters:Ljava/util/Map;
    :cond_3
    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;
    .restart local v6       #parameters:Ljava/util/Map;
    goto/16 :goto_2

    .end local v6           #parameters:Ljava/util/Map;
    .restart local v14       #parameters:Ljava/util/Map;
    :cond_4
    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;
    .restart local v6       #parameters:Ljava/util/Map;
    goto :goto_3
.end method
