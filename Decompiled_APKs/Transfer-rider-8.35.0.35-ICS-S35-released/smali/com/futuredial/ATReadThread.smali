.class public Lcom/futuredial/ATReadThread;
.super Lcom/futuredial/ReadThread;
.source "ATReadThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATReadThread"


# instance fields
.field private bwaitparser:Z

.field public callBack:Ljava/lang/String;

.field private lstmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
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

.field private resCode:I

.field private returnString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 3
    .parameter "tParam"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 21
    iput-object v2, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ATReadThread;->lstmap:Ljava/util/HashMap;

    .line 24
    iput-object v2, p0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/futuredial/ATReadThread;->resCode:I

    .line 27
    iput-boolean v1, p0, Lcom/futuredial/ATReadThread;->bwaitparser:Z

    .line 34
    iput-boolean v1, p0, Lcom/futuredial/ATReadThread;->bwaitparser:Z

    .line 35
    return-void
.end method

.method public static parseComm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "orgComm"

    .prologue
    .line 39
    const-string v0, "\\r"

    const-string v1, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "orgS"

    .prologue
    .line 698
    if-eqz p1, :cond_0

    .line 700
    const-string v2, "\\d+(,\\d{3})*"

    .line 701
    .local v2, regex:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 702
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 703
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 708
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v2           #regex:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static parseSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "org"

    .prologue
    .line 44
    const-string v0, "\\"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected DoComm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    iput v4, p0, Lcom/futuredial/ATReadThread;->ThreadErrorCode:I

    .line 87
    :try_start_0
    new-instance v0, Lcom/futuredial/atparser/ATConfiguration;

    iget-object v3, p0, Lcom/futuredial/ATReadThread;->context:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/futuredial/atparser/ATConfiguration;-><init>(Landroid/content/Context;Lcom/futuredial/ATReadThread;)V

    .line 88
    .local v0, configuration:Lcom/futuredial/atparser/ATConfiguration;
    iget-object v3, p0, Lcom/futuredial/ATReadThread;->commuPolicy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/futuredial/atparser/ATConfiguration;->sendCommAfterGetParamers(Ljava/lang/String;)V

    .line 89
    const/4 v3, 0x0

    iput v3, p0, Lcom/futuredial/ATReadThread;->ThreadErrorCode:I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .end local v0           #configuration:Lcom/futuredial/atparser/ATConfiguration;
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/ATReadThread;->Close(Ljava/lang/Boolean;)V

    .line 106
    return-void

    .line 91
    :catch_0
    move-exception v2

    .line 94
    .local v2, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v4, p0, Lcom/futuredial/ATReadThread;->bPopResume:Z

    .line 95
    invoke-virtual {p0, v4}, Lcom/futuredial/ATReadThread;->ASSERT(I)V

    .line 96
    const/16 v3, 0x67

    iput v3, p0, Lcom/futuredial/ATReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 98
    .end local v2           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    invoke-virtual {p0, v4}, Lcom/futuredial/ATReadThread;->ASSERT(I)V

    goto :goto_0
.end method

.method public SetCallbackStr(Ljava/lang/String;)V
    .locals 0
    .parameter "strCall"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/futuredial/ATReadThread;->SetIsCompleted()V

    .line 51
    return-void
.end method

.method protected SetIsCompleted()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    const-string v1, "ATReadThread"

    const-string v2, "Call back is error!"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    invoke-static {v1}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->callBack:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, callBackArray:[Ljava/lang/String;
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v2, Lcom/futuredial/ATReadThread$1;

    invoke-direct {v2, p0, v0}, Lcom/futuredial/ATReadThread$1;-><init>(Lcom/futuredial/ATReadThread;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    goto :goto_0
.end method

.method public SetParserPolicy(Ljava/lang/String;)V
    .locals 2
    .parameter "strPolicy"

    .prologue
    .line 714
    sget-object v0, Lcom/futuredial/ATReadThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(ILjava/lang/Object;)Z

    .line 715
    return-void
.end method

.method public SetWaitParser(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/futuredial/ATReadThread;->bwaitparser:Z

    .line 111
    return-void
.end method

.method public addlistmap(Ljava/lang/String;)V
    .locals 2
    .parameter "listname"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->lstmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .restart local v0       #ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/futuredial/ATReadThread;->lstmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    return-void
.end method

.method public sendCommThenPutDataInMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .parameter "cmd"
    .parameter "reg"
    .parameter "split"
    .parameter
    .parameter "count"
    .parameter "result"
    .parameter "timeout"
    .parameter "lstMatch"
    .parameter "listname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p4, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "Enter sendCommThenPutDataInMap()"

    invoke-static/range {v27 .. v27}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 283
    new-instance v20, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 286
    .local v20, response:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 288
    .local v5, cInt:I
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 289
    .local v11, intTime:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_0

    .line 293
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/ATReadThread;->send([BI)I

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/ATReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :goto_1
    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 299
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    .line 300
    const-string v27, "ATReadThread"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Receive Data:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_2

    if-eqz p9, :cond_2

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_2

    .line 310
    invoke-static/range {p8 .. p8}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 311
    const/16 v27, 0x20

    move-object/from16 v0, p8

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 312
    .local v17, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 314
    .local v16, matcher:Ljava/util/regex/Matcher;
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 315
    .local v13, istart:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->lstmap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 316
    .local v3, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const/16 v27, 0x1

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 318
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 319
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v15

    .line 320
    .local v15, matchResult:Ljava/util/regex/MatchResult;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 392
    .end local v3           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #cInt:I
    .end local v8           #i:I
    .end local v11           #intTime:I
    .end local v13           #istart:Ljava/lang/Integer;
    .end local v15           #matchResult:Ljava/util/regex/MatchResult;
    .end local v16           #matcher:Ljava/util/regex/Matcher;
    .end local v17           #p:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v6

    .line 394
    .local v6, e:Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v6}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 404
    .end local v6           #e:Ljava/util/regex/PatternSyntaxException;
    :goto_3
    return-void

    .line 305
    .restart local v5       #cInt:I
    .restart local v8       #i:I
    .restart local v11       #intTime:I
    :cond_1
    :try_start_3
    const-string v27, "ATReadThread"

    const-string v28, "Receive Data: null"

    invoke-static/range {v27 .. v28}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 324
    :cond_2
    const/16 v19, 0x0

    .line 325
    .local v19, res:[Ljava/lang/String;
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_8

    .line 328
    invoke-static/range {p2 .. p2}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 330
    const/16 v27, 0x20

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 331
    .restart local v17       #p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 332
    .restart local v16       #matcher:Ljava/util/regex/Matcher;
    const-string v7, ""

    .line 333
    .local v7, group2:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 335
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    .line 336
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->groupCount()I
    :try_end_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 340
    const/16 v27, 0x2

    :try_start_4
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 349
    :cond_3
    :goto_4
    :try_start_5
    invoke-static/range {p3 .. p3}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 351
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 360
    :cond_4
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 361
    .local v18, pSize:I
    const/4 v8, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 363
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 364
    .local v4, aAndV:Ljava/lang/String;
    const-string v27, ":"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 365
    .local v23, str:[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v2, v23, v27

    .line 366
    .local v2, a:Ljava/lang/String;
    const/16 v27, 0x1

    aget-object v24, v23, v27

    .line 368
    .local v24, v:Ljava/lang/String;
    const/16 v27, -0x1

    const-string v28, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 371
    const-string v27, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 372
    .local v25, vStr:[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    .local v22, sb:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_7
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_6

    .line 375
    aget-object v9, v25, v14

    .line 376
    .local v9, index:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 377
    .local v10, intIndex:I
    add-int/lit8 v27, v10, -0x1

    aget-object v21, v19, v27

    .line 378
    .local v21, s:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 355
    .end local v2           #a:Ljava/lang/String;
    .end local v4           #aAndV:Ljava/lang/String;
    .end local v9           #index:Ljava/lang/String;
    .end local v10           #intIndex:I
    .end local v14           #j:I
    .end local v18           #pSize:I
    .end local v21           #s:Ljava/lang/String;
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #str:[Ljava/lang/String;
    .end local v24           #v:Ljava/lang/String;
    .end local v25           #vStr:[Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_4

    .line 358
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19           #res:[Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v19, v27

    const/16 v27, 0x1

    aput-object v7, v19, v27

    .restart local v19       #res:[Ljava/lang/String;
    goto :goto_5

    .line 380
    .restart local v2       #a:Ljava/lang/String;
    .restart local v4       #aAndV:Ljava/lang/String;
    .restart local v14       #j:I
    .restart local v18       #pSize:I
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    .restart local v23       #str:[Ljava/lang/String;
    .restart local v24       #v:Ljava/lang/String;
    .restart local v25       #vStr:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v14           #j:I
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v25           #vStr:[Ljava/lang/String;
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 385
    :cond_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 386
    .local v12, intV:I
    aget-object v26, v19, v12

    .line 387
    .local v26, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    .line 397
    .end local v2           #a:Ljava/lang/String;
    .end local v4           #aAndV:Ljava/lang/String;
    .end local v5           #cInt:I
    .end local v7           #group2:Ljava/lang/String;
    .end local v8           #i:I
    .end local v11           #intTime:I
    .end local v12           #intV:I
    .end local v16           #matcher:Ljava/util/regex/Matcher;
    .end local v17           #p:Ljava/util/regex/Pattern;
    .end local v18           #pSize:I
    .end local v19           #res:[Ljava/lang/String;
    .end local v23           #str:[Ljava/lang/String;
    .end local v24           #v:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 399
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 403
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #cInt:I
    .restart local v8       #i:I
    .restart local v11       #intTime:I
    .restart local v19       #res:[Ljava/lang/String;
    :cond_8
    const-string v27, "Exit sendCommThenPutDataInMap()"

    invoke-static/range {v27 .. v27}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 342
    .restart local v7       #group2:Ljava/lang/String;
    .restart local v16       #matcher:Ljava/util/regex/Matcher;
    .restart local v17       #p:Ljava/util/regex/Pattern;
    :catch_2
    move-exception v27

    goto/16 :goto_4

    .line 295
    .end local v7           #group2:Ljava/lang/String;
    .end local v16           #matcher:Ljava/util/regex/Matcher;
    .end local v17           #p:Ljava/util/regex/Pattern;
    .end local v19           #res:[Ljava/lang/String;
    :catch_3
    move-exception v27

    goto/16 :goto_1
.end method

.method public sendInitComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "count"
    .parameter "result"
    .parameter "timeout"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "Enter sendInitComm()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/futuredial/ATReadThread;->sendNormalComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/futuredial/ATReadThread;->resCode:I

    .line 119
    iget v0, p0, Lcom/futuredial/ATReadThread;->resCode:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/futuredial/ATReadThread;->ASSERT(II)V

    .line 120
    iget v0, p0, Lcom/futuredial/ATReadThread;->resCode:I

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/futuredial/CommonException;

    invoke-direct {v0}, Lcom/futuredial/CommonException;-><init>()V

    throw v0

    .line 127
    :cond_0
    sget v0, Lcom/futuredial/ATReadThread;->CancelFlag:I

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 131
    :cond_1
    const-string v0, "Exit sendInitComm()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public sendNormalComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "count"
    .parameter "result"
    .parameter "timeout"
    .parameter "cmd"

    .prologue
    .line 136
    const-string v9, "Enter sendNormalComm()"

    invoke-static {v9}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 137
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 138
    .local v6, response:Lcom/futuredial/bluetooth/ByteArrayData;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, cInt:I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 140
    .local v5, intTime:I
    invoke-static/range {p4 .. p4}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 141
    const-string v7, ""

    .line 144
    .local v7, returnRes:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    move-object v8, v7

    .end local v7           #returnRes:Ljava/lang/String;
    .local v8, returnRes:Ljava/lang/String;
    :goto_0
    if-ge v3, v1, :cond_5

    .line 148
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9, v5}, Lcom/futuredial/ATReadThread;->send([BI)I

    .line 149
    invoke-virtual {p0, v6, v5}, Lcom/futuredial/ATReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 150
    iget-object v9, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v9, :cond_4

    .line 152
    new-instance v7, Ljava/lang/String;

    iget-object v9, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .end local v8           #returnRes:Ljava/lang/String;
    .restart local v7       #returnRes:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1

    .line 156
    const-string v9, "ATReadThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive Data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    :goto_2
    :try_start_2
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 169
    .local v0, bResult:Z
    if-eqz v0, :cond_3

    .line 172
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 174
    :cond_0
    new-instance v9, Lcom/futuredial/CommonException;

    invoke-direct {v9}, Lcom/futuredial/CommonException;-><init>()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .end local v0           #bResult:Z
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v9, 0x1

    .line 189
    .end local v2           #e:Ljava/lang/Exception;
    :goto_3
    return v9

    .line 161
    :cond_1
    :try_start_3
    const-string v9, "ATReadThread"

    const-string v10, "Receive Data: null"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7           #returnRes:Ljava/lang/String;
    .restart local v8       #returnRes:Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v8           #returnRes:Ljava/lang/String;
    .restart local v0       #bResult:Z
    .restart local v7       #returnRes:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, index:I
    const/4 v9, -0x1

    if-ne v9, v4, :cond_3

    .line 179
    new-instance v9, Lcom/futuredial/CommonException;

    const-string v10, "ERROR. Cause: data error!"

    invoke-direct {v9, v10}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    .end local v4           #index:I
    :cond_3
    const-string v9, "Exit sendNormalComm()"

    invoke-static {v9}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 189
    const/4 v9, 0x0

    goto :goto_3

    .line 163
    .end local v0           #bResult:Z
    .end local v7           #returnRes:Ljava/lang/String;
    .restart local v8       #returnRes:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #returnRes:Ljava/lang/String;
    .restart local v7       #returnRes:Ljava/lang/String;
    goto :goto_4

    :catch_2
    move-exception v9

    goto :goto_4

    .end local v7           #returnRes:Ljava/lang/String;
    .restart local v8       #returnRes:Ljava/lang/String;
    :cond_4
    move-object v7, v8

    .end local v8           #returnRes:Ljava/lang/String;
    .restart local v7       #returnRes:Ljava/lang/String;
    goto :goto_1

    .end local v7           #returnRes:Ljava/lang/String;
    .restart local v8       #returnRes:Ljava/lang/String;
    :cond_5
    move-object v7, v8

    .end local v8           #returnRes:Ljava/lang/String;
    .restart local v7       #returnRes:Ljava/lang/String;
    goto :goto_2
.end method

.method public sendOperComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "count"
    .parameter "result"
    .parameter "timeout"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    const-string v8, "Enter sendOperComm()"

    invoke-static {v8}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 196
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 199
    .local v6, response:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, cInt:I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, intTime:I
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 202
    .local v0, bResult:Z
    const/4 v7, 0x0

    .line 203
    .local v7, returnString:Ljava/lang/String;
    invoke-static {p4}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 204
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 206
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/futuredial/ATReadThread;->send([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :try_start_1
    invoke-virtual {p0, v6, v5}, Lcom/futuredial/ATReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :cond_0
    :try_start_2
    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v8, :cond_3

    .line 220
    new-instance v7, Ljava/lang/String;

    .end local v7           #returnString:Ljava/lang/String;
    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 221
    .restart local v7       #returnString:Ljava/lang/String;
    const-string v8, "ATReadThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive Data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    if-eqz v0, :cond_5

    .line 232
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 234
    :cond_2
    new-instance v8, Lcom/futuredial/CommonException;

    invoke-direct {v8}, Lcom/futuredial/CommonException;-><init>()V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .end local v0           #bResult:Z
    .end local v1           #cInt:I
    .end local v3           #i:I
    .end local v5           #intTime:I
    .end local v7           #returnString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 246
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    new-instance v8, Lcom/futuredial/CommonException;

    invoke-direct {v8}, Lcom/futuredial/CommonException;-><init>()V

    throw v8

    .line 210
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bResult:Z
    .restart local v1       #cInt:I
    .restart local v3       #i:I
    .restart local v5       #intTime:I
    .restart local v7       #returnString:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 212
    .restart local v2       #e:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 214
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    new-instance v8, Lcom/futuredial/CommonException;

    invoke-direct {v8}, Lcom/futuredial/CommonException;-><init>()V

    throw v8

    .line 226
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-string v8, "ATReadThread"

    const-string v9, "Receive Data: null"

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 237
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v8, v4, :cond_5

    .line 239
    new-instance v8, Lcom/futuredial/CommonException;

    const-string v9, "ERROR. Cause: data error!"

    invoke-direct {v8, v9}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    .end local v4           #index:I
    :cond_5
    const-string v8, "Exit sendOperComm()"

    invoke-static {v8}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public sendReadComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .parameter "cmd"
    .parameter "capacity"
    .parameter "usecapacity"
    .parameter "startidx"
    .parameter "step"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    const-string v26, "Enter sendReadComm()"

    invoke-static/range {v26 .. v26}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 420
    const/16 v13, 0x4e20

    .line 421
    .local v13, iTimeout:I
    const/16 v16, 0x0

    .line 424
    .local v16, response:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/futuredial/ATReadThread;->parseComm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    const/16 v23, 0x0

    .line 426
    .local v23, uArr:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 428
    .local v22, total:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 430
    .local v24, uVKey:Ljava/lang/String;
    const/16 v20, 0x0

    .line 432
    .local v20, tVKey:Ljava/lang/String;
    if-eqz p3, :cond_4

    const-string v26, ":"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_4

    .line 434
    const-string v26, ":"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 436
    const/16 v26, 0x1

    aget-object v24, v23, v26

    .line 443
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    const-string v26, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_5

    .line 445
    const-string v26, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 447
    const/16 v26, 0x1

    aget-object v20, v22, v26

    .line 454
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 456
    .local v7, iCapacity:I
    const/4 v14, 0x0

    .line 458
    .local v14, iUsed:I
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 459
    .local v12, iStep:I
    if-eqz v24, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 462
    .local v25, used:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/futuredial/ATReadThread;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 463
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 477
    .end local v25           #used:Ljava/lang/String;
    :goto_2
    if-eqz v20, :cond_7

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 480
    .local v3, capt:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/futuredial/ATReadThread;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 496
    .end local v3           #capt:Ljava/lang/String;
    :goto_3
    const-string v5, ""

    .line 498
    .local v5, fullCmd:Ljava/lang/String;
    const/4 v15, 0x0

    .line 499
    .local v15, loopTimes:I
    if-nez v12, :cond_8

    .line 501
    const/4 v15, 0x1

    .line 515
    :cond_2
    :goto_4
    const/4 v11, 0x0

    .line 516
    .local v11, iStartidx:I
    if-eqz p4, :cond_9

    const-string v26, ":"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_9

    .line 520
    const-string v26, ":"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 521
    .local v19, start:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 522
    .local v18, sStart:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/futuredial/ATReadThread;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 523
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 581
    .end local v18           #sStart:Ljava/lang/String;
    .end local v19           #start:[Ljava/lang/String;
    :cond_3
    :goto_5
    if-nez v14, :cond_10

    .line 586
    const-string v26, "ATReadThread"

    const-string v27, "Exit sendReadComm()"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_6
    return-void

    .line 438
    .end local v5           #fullCmd:Ljava/lang/String;
    .end local v7           #iCapacity:I
    .end local v11           #iStartidx:I
    .end local v12           #iStep:I
    .end local v14           #iUsed:I
    .end local v15           #loopTimes:I
    :cond_4
    if-eqz p3, :cond_0

    const-string v26, "\\d+"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 440
    move-object/from16 v24, p3

    goto/16 :goto_0

    .line 449
    :cond_5
    if-eqz p2, :cond_1

    const-string v26, "\\d+"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v26

    if-nez v26, :cond_1

    .line 451
    move-object/from16 v20, p2

    goto/16 :goto_1

    .line 470
    .restart local v7       #iCapacity:I
    .restart local v12       #iStep:I
    .restart local v14       #iUsed:I
    :cond_6
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    goto/16 :goto_2

    .line 472
    :catch_0
    move-exception v4

    .line 474
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v26, "ATReadThread"

    const-string v27, "ERROR: Failed to parse usecapacity!"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 674
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #iCapacity:I
    .end local v12           #iStep:I
    .end local v14           #iUsed:I
    .end local v20           #tVKey:Ljava/lang/String;
    .end local v22           #total:[Ljava/lang/String;
    .end local v23           #uArr:[Ljava/lang/String;
    .end local v24           #uVKey:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 676
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 677
    const-string v26, "Exit sendReadComm()"

    invoke-static/range {v26 .. v26}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 678
    new-instance v26, Lcom/futuredial/CommonException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CommonException;-><init>()V

    throw v26

    .line 488
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #iCapacity:I
    .restart local v12       #iStep:I
    .restart local v14       #iUsed:I
    .restart local v20       #tVKey:Ljava/lang/String;
    .restart local v22       #total:[Ljava/lang/String;
    .restart local v23       #uArr:[Ljava/lang/String;
    .restart local v24       #uVKey:Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    goto/16 :goto_3

    .line 490
    :catch_2
    move-exception v4

    .line 492
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v26, "ATReadThread"

    const-string v27, "ERROR: Failed to parse capacity!"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 506
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #fullCmd:Ljava/lang/String;
    .restart local v15       #loopTimes:I
    :cond_8
    div-int v15, v7, v12

    .line 507
    rem-int v21, v7, v12

    .line 508
    .local v21, times:I
    if-eqz v21, :cond_2

    .line 510
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 525
    .end local v21           #times:I
    .restart local v11       #iStartidx:I
    :cond_9
    if-eqz p4, :cond_f

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_f

    const-string v26, "\\d+"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->map:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 530
    .restart local v18       #sStart:Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/futuredial/ATReadThread;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 533
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_5

    .line 535
    :cond_a
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->lstmap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 538
    .local v2, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v15

    .line 539
    const/4 v6, 0x0

    .local v6, i:I
    move-object/from16 v17, v16

    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .local v17, response:Lcom/futuredial/bluetooth/ByteArrayData;
    :goto_8
    if-ge v6, v15, :cond_e

    .line 542
    :try_start_5
    new-instance v16, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v16 .. v16}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 543
    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    if-eqz p6, :cond_b

    :try_start_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_b

    .line 545
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 547
    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\r"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v5

    .line 551
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/ATReadThread;->send([BI)I

    .line 552
    const-string v26, "ATReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "***AT Command:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/ATReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 557
    :goto_9
    :try_start_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 559
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    .line 560
    const-string v26, "ATReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Receive Data:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    sput-object v26, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    .line 562
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ATReadThread;->GetExitDotask()Z

    move-result v26

    if-eqz v26, :cond_d

    new-instance v26, Lcom/futuredial/CancelException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CancelException;-><init>()V

    throw v26

    .line 568
    :cond_c
    const-string v26, "ATReadThread"

    const-string v27, "Receive Data: null"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v16

    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v17       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    goto/16 :goto_8

    :cond_e
    move-object/from16 v16, v17

    .line 572
    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    goto/16 :goto_6

    .line 575
    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v18           #sStart:Ljava/lang/String;
    :cond_f
    if-eqz p4, :cond_3

    const-string v26, "\\d+"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 578
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v11

    goto/16 :goto_5

    .line 589
    :cond_10
    const/4 v6, 0x0

    .restart local v6       #i:I
    move-object/from16 v17, v16

    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v17       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    :goto_a
    if-ge v6, v15, :cond_1c

    .line 591
    :try_start_9
    new-instance v16, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v16 .. v16}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 596
    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    if-nez v12, :cond_14

    .line 598
    :try_start_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\r"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    :goto_b
    if-eqz p6, :cond_11

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_11

    .line 617
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result v13

    .line 622
    :cond_11
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/ATReadThread;->send([BI)I

    .line 623
    const-string v26, "ATReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "***AT Command:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/ATReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 631
    :cond_12
    :try_start_c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    .line 633
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    .line 634
    const-string v26, "ATReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Receive Data:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ATReadThread;->returnString:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    sput-object v26, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    .line 650
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 651
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/ATReadThread;->bwaitparser:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 653
    const/4 v9, 0x0

    .local v9, iSleep:I
    move v10, v9

    .line 656
    .end local v9           #iSleep:I
    .local v10, iSleep:I
    :goto_c
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 657
    sget-object v26, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 661
    .end local v10           #iSleep:I
    :cond_13
    sget v26, Lcom/futuredial/ParseThread;->nCountParser:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move/from16 v0, v26

    if-lt v0, v14, :cond_18

    .line 681
    :goto_d
    sget v26, Lcom/futuredial/ATReadThread;->CancelFlag:I

    if-nez v26, :cond_1b

    .line 683
    const-string v26, "Exit sendReadComm()"

    invoke-static/range {v26 .. v26}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 684
    new-instance v26, Lcom/futuredial/CancelException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CancelException;-><init>()V

    throw v26

    .line 600
    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v0, v12, :cond_15

    .line 602
    :try_start_d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\r"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 603
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 607
    :cond_15
    add-int v26, v11, v12

    add-int/lit8 v8, v26, -0x1

    .line 608
    .local v8, iEndidx:I
    if-le v8, v7, :cond_16

    .line 610
    move v8, v7

    .line 612
    :cond_16
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\r"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 613
    add-int/2addr v11, v12

    goto/16 :goto_b

    .line 626
    .end local v8           #iEndidx:I
    :catch_3
    move-exception v4

    .line 628
    .restart local v4       #e:Ljava/lang/Exception;
    add-int/lit8 v26, v15, -0x1

    move/from16 v0, v26

    if-ne v6, v0, :cond_12

    .line 629
    new-instance v26, Lcom/futuredial/CommonException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CommonException;-><init>()V

    throw v26

    .line 658
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v10       #iSleep:I
    :cond_17
    add-int/lit8 v9, v10, 0x1

    .end local v10           #iSleep:I
    .restart local v9       #iSleep:I
    const/16 v26, 0x64

    move/from16 v0, v26

    if-ge v10, v0, :cond_13

    move v10, v9

    .end local v9           #iSleep:I
    .restart local v10       #iSleep:I
    goto/16 :goto_c

    .line 666
    .end local v10           #iSleep:I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ATReadThread;->GetExitDotask()Z

    move-result v26

    if-eqz v26, :cond_1a

    new-instance v26, Lcom/futuredial/CancelException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CancelException;-><init>()V

    throw v26

    .line 670
    :cond_19
    const-string v26, "ATReadThread"

    const-string v27, "Receive Data: null"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 589
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v16

    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v17       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    goto/16 :goto_a

    .line 686
    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_1b
    const-string v26, "Exit sendReadComm()"

    invoke-static/range {v26 .. v26}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 674
    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v17       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    :catch_4
    move-exception v4

    move-object/from16 v16, v17

    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    goto/16 :goto_7

    .line 555
    .restart local v2       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18       #sStart:Ljava/lang/String;
    :catch_5
    move-exception v26

    goto/16 :goto_9

    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v18           #sStart:Ljava/lang/String;
    .restart local v17       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_1c
    move-object/from16 v16, v17

    .end local v17           #response:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v16       #response:Lcom/futuredial/bluetooth/ByteArrayData;
    goto/16 :goto_d
.end method
