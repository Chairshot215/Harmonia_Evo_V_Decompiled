.class public Lcom/futuredial/ParseThread;
.super Lcom/futuredial/BaseThread;
.source "ParseThread.java"

# interfaces
.implements Lcom/futuredial/HANDLEMSG;


# static fields
.field public static IsParserEnd:Ljava/lang/Boolean; = null

.field private static final TAG:Ljava/lang/String; = "ParseThread"

.field private static bChangePolicy:Ljava/lang/Boolean;

.field public static nCountParser:I

.field protected static parserPolicy:Ljava/lang/String;

.field protected static recvParserByte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected static recvParserString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ReadIsFinish:Ljava/lang/Boolean;

.field private final list:Lcom/futuredial/publicobj/ItemArray;

.field private listResult:Lcom/futuredial/publicobj/ItemArray;

.field protected parser:Lcom/futuredial/IParser;

.field protected parserClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ParseThread;->bChangePolicy:Ljava/lang/Boolean;

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    .line 40
    sput v1, Lcom/futuredial/ParseThread;->nCountParser:I

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 3
    .parameter "tParam"
    .parameter "itemArray"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/futuredial/BaseThread;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ParseThread;->parserClassName:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v0}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    .line 34
    iput-object v1, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->ReadIsFinish:Ljava/lang/Boolean;

    .line 54
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/futuredial/ParseThread;->context:Landroid/content/Context;

    .line 55
    iget v0, p1, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    iput v0, p0, Lcom/futuredial/ParseThread;->contentType:I

    .line 56
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ParseThread;->parserClassName:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->uiHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/futuredial/ParseThread;->uiHandler:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/futuredial/ParseThread;->parserClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/ParseThread;->parserClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    const-string v0, "ParseThread"

    const-string v1, "Class Name is null, Parser will failed."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    iput-object p2, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    .line 63
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserPolicy:Ljava/lang/String;

    sput-object v0, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 66
    :cond_2
    const-string v0, "ParseThread"

    const-string v1, "Policy is null!"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    .line 76
    sget-object v0, Lcom/futuredial/ParseThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v0, p0}, Lcom/futuredial/BaseThread$MyThreadHandler;->SetInterface(Lcom/futuredial/HANDLEMSG;)V

    .line 80
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->RemoveAll()V

    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->ReadIsFinish:Ljava/lang/Boolean;

    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    .line 83
    sput v2, Lcom/futuredial/ParseThread;->nCountParser:I

    .line 84
    return-void

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->setParser()V

    goto :goto_0
.end method

.method public static declared-synchronized AddByteArray([B)V
    .locals 3
    .parameter "str"

    .prologue
    .line 179
    const-class v1, Lcom/futuredial/ParseThread;

    monitor-enter v1

    :try_start_0
    const-string v0, "ParseThread"

    const-string v2, "AddByteArray "

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v2, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    if-eqz p0, :cond_0

    :try_start_1
    array-length v0, p0

    if-lez v0, :cond_0

    .line 184
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-exit v1

    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized AddStrArray(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 169
    const-class v1, Lcom/futuredial/ParseThread;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit v1

    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected DoParser()V
    .locals 13

    .prologue
    const/16 v12, 0x2711

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, linedata:[B
    const-string v6, ""

    .line 206
    .local v6, linestr:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, bHasData:Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 209
    .local v2, bHasStr:Ljava/lang/Boolean;
    :cond_0
    sget v7, Lcom/futuredial/ParseThread;->CancelFlag:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 263
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->GetReadCount()I

    move-result v7

    sput v7, Lcom/futuredial/ParseThread;->nCountParser:I

    .line 264
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/futuredial/ParseThread;->IsParserEnd:Ljava/lang/Boolean;

    .line 265
    return-void

    .line 211
    :cond_2
    sget-object v10, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    monitor-enter v10

    .line 213
    :try_start_0
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 214
    .local v4, iCount:I
    if-lez v4, :cond_3

    .line 216
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 217
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_3
    add-int/lit8 v7, v4, -0x1

    if-lez v7, :cond_7

    move v7, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 220
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 225
    :try_start_1
    iget-object v7, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    iget-object v10, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {p0, v6, v7, v10}, Lcom/futuredial/ParseThread;->parse(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :goto_2
    const-string v6, ""

    .line 235
    :cond_4
    sget v7, Lcom/futuredial/ParseThread;->CancelFlag:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 237
    sget-object v10, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    monitor-enter v10

    .line 239
    :try_start_2
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 240
    if-lez v4, :cond_5

    .line 242
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0

    .line 243
    sget-object v7, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    :cond_5
    add-int/lit8 v7, v4, -0x1

    if-lez v7, :cond_8

    move v7, v8

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 246
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    if-eqz v5, :cond_6

    .line 251
    :try_start_3
    iget-object v7, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    iget-object v10, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {p0, v5, v7, v10}, Lcom/futuredial/ParseThread;->parse([BLcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 258
    :goto_4
    const/4 v5, 0x0

    .line 261
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 219
    goto :goto_1

    .line 220
    .end local v4           #iCount:I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 227
    .restart local v4       #iCount:I
    :catch_0
    move-exception v3

    .line 229
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    iput v12, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    goto :goto_2

    .end local v3           #e:Ljava/lang/Exception;
    :cond_8
    move v7, v9

    .line 245
    goto :goto_3

    .line 246
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 253
    :catch_1
    move-exception v3

    .line 255
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    iput v12, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    goto :goto_4
.end method

.method public declared-synchronized GetReadCount()I
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v0}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/futuredial/WriteThread;->iWrittenCount:I

    add-int/2addr v0, v1

    sget v1, Lcom/futuredial/WriteThread;->iTypeErrorCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Quit()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/futuredial/BaseThread;->Quit()V

    .line 200
    return-void
.end method

.method protected RemoveAll()V
    .locals 2

    .prologue
    .line 133
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    monitor-enter v1

    .line 139
    :try_start_1
    sget-object v0, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 140
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected RemoveByteArray(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 157
    sget-object v2, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    monitor-enter v2

    .line 159
    :try_start_0
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, iCount:I
    if-le v0, p1, :cond_0

    .line 162
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserByte:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    :cond_0
    monitor-exit v2

    .line 165
    return-void

    .line 164
    .end local v0           #iCount:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected RemoveStrArray(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 145
    sget-object v2, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 148
    .local v0, iCount:I
    if-le v0, p1, :cond_0

    .line 150
    sget-object v1, Lcom/futuredial/ParseThread;->recvParserString:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_0
    monitor-exit v2

    .line 153
    return-void

    .line 152
    .end local v0           #iCount:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public SetCancelFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/futuredial/BaseThread;->SetCancelFlag(I)V

    .line 46
    sget v0, Lcom/futuredial/ParseThread;->CancelFlag:I

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    .line 50
    :cond_0
    return-void
.end method

.method protected getParser()Lcom/futuredial/IParser;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 351
    const-string v5, "Enter getParser()"

    invoke-static {v5}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 352
    const/4 v3, 0x0

    .line 355
    .local v3, parser:Lcom/futuredial/IParser;
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/ParseThread;->parserClassName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 356
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/futuredial/IParser;

    move-object v3, v0

    .line 357
    const/4 v4, 0x0

    .line 358
    .local v4, res:I
    iget-object v5, p0, Lcom/futuredial/ParseThread;->context:Landroid/content/Context;

    iget v6, p0, Lcom/futuredial/ParseThread;->contentType:I

    sget-object v7, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lcom/futuredial/IParser;->initModule(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    .line 359
    if-eqz v4, :cond_0

    .line 361
    const-string v5, "ParseThread"

    const-string v6, "ERROR, Cause: Failed to init parser module."

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/ParseThread;->ASSERT(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    const-string v5, "Exit getParser()"

    invoke-static {v5}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    move-object v5, v3

    .line 373
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #res:I
    :goto_0
    return-object v5

    .line 365
    :catch_0
    move-exception v2

    .line 367
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ParseThread"

    const-string v6, "ERROR: Cause:"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    invoke-virtual {p0, v8}, Lcom/futuredial/ParseThread;->ASSERT(I)V

    .line 370
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 102
    :pswitch_1
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 104
    const-string v0, "ParseThread"

    const-string v1, "ReadIsFinish msg is recved."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->ReadIsFinish:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_1
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 109
    sget-object v0, Lcom/futuredial/ParseThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    .line 110
    const-string v0, "ParseThread"

    const-string v1, "Read failed msg is recved."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    goto :goto_0

    .line 116
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    .line 118
    sget-object v0, Lcom/futuredial/ParseThread;->readHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/futuredial/ParseThread;->parserPolicy:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ParseThread;->bChangePolicy:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 5
    .parameter "content"
    .parameter "itemArray"
    .parameter "itemsUnComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 320
    const-string v2, "Enter parse2()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 321
    const/4 v1, 0x0

    .line 324
    .local v1, res:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    iget v3, p0, Lcom/futuredial/ParseThread;->contentType:I

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/futuredial/IParser;->parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v1

    .line 327
    if-eqz v1, :cond_0

    .line 329
    const-string v2, "ParseThread"

    const-string v3, "ERROR, Cause: Failed to parse source data."

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ParseThread"

    const-string v3, "ERROR: Cause:"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    invoke-virtual {p0, v4}, Lcom/futuredial/ParseThread;->ASSERT(I)V

    .line 340
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2

    .line 332
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/futuredial/ParseThread;->ASSERT(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    :cond_1
    const-string v2, "Exit parse2()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 343
    return v1
.end method

.method public parse([BLcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 9
    .parameter "result"
    .parameter "itemArray"
    .parameter "itemsUnComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 285
    const-string v0, "Enter parse()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 286
    const/4 v7, 0x0

    .line 289
    .local v7, res:I
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    if-eqz v0, :cond_2

    .line 291
    if-nez p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    iget v1, p0, Lcom/futuredial/ParseThread;->contentType:I

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/futuredial/IParser;->parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v7

    .line 299
    :goto_0
    if-eqz v7, :cond_1

    .line 301
    const-string v0, "ParseThread"

    const-string v1, "ERROR, Cause: Failed to parse source data."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/futuredial/CommonException;

    invoke-direct {v0}, Lcom/futuredial/CommonException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :catch_0
    move-exception v6

    .line 309
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ParseThread"

    const-string v1, "ERROR: Cause:"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    invoke-virtual {p0, v8}, Lcom/futuredial/ParseThread;->ASSERT(I)V

    .line 312
    new-instance v0, Lcom/futuredial/CommonException;

    invoke-direct {v0}, Lcom/futuredial/CommonException;-><init>()V

    throw v0

    .line 297
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    iget v1, p0, Lcom/futuredial/ParseThread;->contentType:I

    array-length v3, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/futuredial/IParser;->parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v7

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/ParseThread;->ASSERT(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :cond_2
    const-string v0, "Exit parse()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 315
    return v7
.end method

.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x68

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 391
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ParseThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 394
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    sget-object v1, Lcom/futuredial/ParseThread;->bChangePolicy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->setParser()V

    .line 399
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/futuredial/ParseThread;->bChangePolicy:Ljava/lang/Boolean;

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->DoParser()V

    .line 403
    sget v1, Lcom/futuredial/ParseThread;->CancelFlag:I

    if-nez v1, :cond_4

    .line 405
    const/4 v1, 0x4

    iput v1, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_2
    :goto_1
    sget v1, Lcom/futuredial/ParseThread;->CancelFlag:I

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/futuredial/ParseThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ParseThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x196

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    :cond_3
    iget v1, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    if-nez v1, :cond_5

    .line 445
    const-string v1, "ParseThread"

    const-string v2, "Parser Thread Success!!"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v1, Lcom/futuredial/ParseThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v1, v6, v5, v5}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    .line 454
    :goto_2
    sget-object v1, Lcom/futuredial/ParseThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v1}, Lcom/futuredial/BaseThread$MyThreadHandler;->Quit()V

    .line 455
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ParseThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 456
    return-void

    .line 410
    :cond_4
    const-wide/16 v1, 0x32

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :goto_3
    :try_start_2
    iget v1, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_2

    .line 421
    iget-object v1, p0, Lcom/futuredial/ParseThread;->ReadIsFinish:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->DoParser()V

    .line 425
    iget-object v1, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    iget-object v2, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    invoke-interface {v1, v2}, Lcom/futuredial/IParser;->CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V

    .line 426
    iget-object v1, p0, Lcom/futuredial/ParseThread;->listResult:Lcom/futuredial/publicobj/ItemArray;

    iget-object v2, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    iget-object v2, v2, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 427
    iget-object v1, p0, Lcom/futuredial/ParseThread;->list:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    .line 429
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ParseThread;->bExitThread:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ParseThread"

    const-string v2, "Parser Thread Exception!!"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x2

    iput v1, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    goto :goto_1

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 450
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v1, "ParseThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parser Thread fail!! Error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v1, Lcom/futuredial/ParseThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    iget v2, p0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    invoke-virtual {v1, v6, v2, v5}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    goto :goto_2
.end method

.method protected setParser()V
    .locals 1

    .prologue
    .line 378
    const-string v0, "Enter setParser()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/futuredial/ParseThread;->getParser()Lcom/futuredial/IParser;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    .line 380
    iget-object v0, p0, Lcom/futuredial/ParseThread;->parser:Lcom/futuredial/IParser;

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/futuredial/ParseThread;->ASSERT(I)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v0, "Exit setParser()"

    invoke-static {v0}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    goto :goto_0
.end method
