.class public Lcom/futuredial/ObexFileReadThread;
.super Lcom/futuredial/ReadThread;
.source "ObexFileReadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ObexFileReadThread$FolderStructure;
    }
.end annotation


# static fields
.field private static final InvalidFileNameChar:[Ljava/lang/String;

.field private static bPrintLog:Z


# instance fields
.field private final FileNameLen:I

.field private final LOGTAG:Ljava/lang/String;

.field private arActualFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arCfgDefFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arCfgXNam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bChangeLang:Z

.field private cfgObexWho:Ljava/lang/String;

.field private cfgPathSeparator:Ljava/lang/String;

.field private curFile:Ljava/io/File;

.field curFileOS:Ljava/io/FileOutputStream;

.field private folderStructure:Lcom/futuredial/ObexFileReadThread$FolderStructure;

.field private gottenFileAmount:I

.field private gottenFileSize:J

.field private m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field private m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

.field private originalLang:Ljava/lang/String;

.field private receivedFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalFileAmount:I

.field private totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sput-boolean v2, Lcom/futuredial/ObexFileReadThread;->bPrintLog:Z

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/futuredial/ObexFileReadThread;->InvalidFileNameChar:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 5
    .parameter "tParam"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 48
    const-string v0, "ObexFileReadThread"

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->LOGTAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x50

    iput v0, p0, Lcom/futuredial/ObexFileReadThread;->FileNameLen:I

    .line 54
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 55
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->cfgPathSeparator:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->arCfgDefFolder:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 65
    iput-object v2, p0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    .line 69
    iput-wide v3, p0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    .line 70
    iput-wide v3, p0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    .line 71
    iput v1, p0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    .line 72
    iput v1, p0, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I

    .line 74
    iput-boolean v1, p0, Lcom/futuredial/ObexFileReadThread;->bChangeLang:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread;->originalLang:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/futuredial/ObexFileReadThread;->folderStructure:Lcom/futuredial/ObexFileReadThread$FolderStructure;

    .line 116
    return-void
.end method

.method private ChangeLanguage(Ljava/lang/String;)I
    .locals 14
    .parameter "lang"

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 241
    const-string v11, "ObexFileReadThread"

    const-string v12, "Enter function ChangeLanguage"

    invoke-static {v11, v12}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v3, 0x1

    .line 245
    .local v3, iRet:I
    iget-object v11, p0, Lcom/futuredial/ObexFileReadThread;->uuid:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    .line 247
    .local v9, uID:Ljava/util/UUID;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0, v9, v11}, Lcom/futuredial/ObexFileReadThread;->OpenPort(Ljava/util/UUID;Z)I

    .line 248
    invoke-virtual {p0}, Lcom/futuredial/ObexFileReadThread;->SetIsCompletedCLAN()V

    .line 249
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 252
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v0, "AT+CLAN?\r"

    .line 253
    .local v0, cmdGetLanguage:Ljava/lang/String;
    const-string v11, "ObexFileReadThread"

    invoke-static {v11, v0}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v11, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const v13, 0x1d4c0

    invoke-virtual {v11, v12, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    if-eqz v3, :cond_1

    move v10, v3

    .line 296
    .end local v0           #cmdGetLanguage:Ljava/lang/String;
    .end local v6           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    :goto_0
    return v10

    .line 255
    .restart local v0       #cmdGetLanguage:Ljava/lang/String;
    .restart local v6       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_1
    iget-object v11, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v12, 0x1d4c0

    invoke-virtual {v11, v6, v12}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v10, v3

    goto :goto_0

    .line 256
    :cond_2
    new-instance v8, Ljava/lang/String;

    iget-object v11, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>([B)V

    .line 257
    .local v8, tempOrgLang:Ljava/lang/String;
    const-string v11, "ObexFileReadThread"

    invoke-static {v11, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v11, "+CLAN: \""

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, nStart:I
    const-string v11, "+CLAN: \""

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    .line 261
    const-string v11, "\""

    invoke-virtual {v8, v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, nEnd:I
    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 268
    iput-object v8, p0, Lcom/futuredial/ObexFileReadThread;->originalLang:Ljava/lang/String;

    .line 271
    const-string v11, "AT+CLAN=\"%s\"\r"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, cmdSetLanguage:Ljava/lang/String;
    const-string v11, "ObexFileReadThread"

    invoke-static {v11, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v11, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const v13, 0x1d4c0

    invoke-virtual {v11, v12, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    if-eqz v3, :cond_3

    move v10, v3

    goto :goto_0

    .line 274
    :cond_3
    iget-object v11, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v12, 0x1d4c0

    invoke-virtual {v11, v6, v12}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v10, v3

    goto :goto_0

    .line 275
    :cond_4
    new-instance v7, Ljava/lang/String;

    iget-object v11, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([B)V

    .line 276
    .local v7, result:Ljava/lang/String;
    const-string v11, "ObexFileReadThread"

    invoke-static {v11, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 292
    .end local v0           #cmdGetLanguage:Ljava/lang/String;
    .end local v1           #cmdSetLanguage:Ljava/lang/String;
    .end local v4           #nEnd:I
    .end local v5           #nStart:I
    .end local v6           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #tempOrgLang:Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/futuredial/ObexFileReadThread;->Close(Ljava/lang/Boolean;)V

    .line 294
    const-string v10, "ObexFileReadThread"

    const-string v11, "Exit function ChangeLanguage"

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v3

    .line 296
    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Lcom/futuredial/bluetooth/ExceptionForUI;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/ExceptionForUI;->printStackTrace()V

    .line 281
    const/4 v3, 0x1

    .line 290
    goto :goto_1

    .line 282
    .end local v2           #e:Lcom/futuredial/bluetooth/ExceptionForUI;
    :catch_1
    move-exception v2

    .line 284
    .local v2, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 285
    const/4 v3, 0x1

    .line 290
    goto :goto_1

    .line 286
    .end local v2           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :catch_2
    move-exception v2

    .line 288
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private DeleteOpenFile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 514
    iput-object v2, p0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    .line 515
    iput-object v2, p0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/futuredial/ObexFileReadThread;->DeleteReceivedFiles()V

    .line 518
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private DeleteReceivedFiles()V
    .locals 8

    .prologue
    .line 491
    :goto_0
    iget-object v3, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 494
    .local v2, lastIndex:I
    iget-object v3, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, filepath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, delFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 497
    iget-object v3, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    iget-object v3, p0, Lcom/futuredial/ObexFileReadThread;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 501
    .end local v0           #delFile:Ljava/io/File;
    .end local v1           #filepath:Ljava/lang/String;
    .end local v2           #lastIndex:I
    :cond_0
    return-void
.end method

.method public static DiscardInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "orgString"

    .prologue
    .line 79
    move-object v1, p0

    .line 81
    .local v1, destString:Ljava/lang/String;
    sget-object v0, Lcom/futuredial/ObexFileReadThread;->InvalidFileNameChar:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 83
    .local v3, invalidChar:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v3           #invalidChar:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 33
    .parameter "strObexName"
    .parameter "strObexType"
    .parameter "strObexWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 529
    const-string v30, "ObexFileReadThread"

    const-string v31, "enter function GetCapability"

    invoke-static/range {v30 .. v31}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v11, 0x1

    .line 532
    .local v11, iRet:I
    new-instance v23, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v23 .. v23}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 534
    .local v23, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/futuredial/ObexFileReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v11

    .line 535
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 536
    if-eqz v11, :cond_0

    .line 538
    const-string v30, "ObexFileReadThread"

    const-string v31, "fail in getting x-obex/capability"

    invoke-static/range {v30 .. v31}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v30, v11

    .line 622
    :goto_0
    return v30

    .line 544
    :cond_0
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 545
    .local v13, ins:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v28

    .line 546
    .local v28, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 547
    .local v5, doc:Lorg/w3c/dom/Document;
    const-string v30, "/Capability/Service"

    sget-object v31, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/NodeList;

    .line 548
    .local v15, nlService:Lorg/w3c/dom/NodeList;
    if-nez v15, :cond_1

    .line 550
    const-string v30, "ObexFileReadThread"

    const-string v31, "there is no Service node in the returned Capability xml"

    invoke-static/range {v30 .. v31}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v11, 0x1

    move/from16 v30, v11

    .line 552
    goto :goto_0

    .line 554
    :cond_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 555
    .local v18, nlsSize:I
    const/16 v24, 0x0

    .local v24, sIndex:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 557
    move/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 558
    .local v21, nodeService:Lorg/w3c/dom/Node;
    const-string v30, "Name"

    sget-object v31, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 559
    .local v8, eleName:Lorg/w3c/dom/Element;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v30

    const-string v31, "Folder-Browsing"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 555
    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 564
    :cond_3
    const-string v30, "Ext"

    sget-object v31, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/NodeList;

    .line 565
    .local v14, nlExt:Lorg/w3c/dom/NodeList;
    if-eqz v14, :cond_2

    .line 566
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 567
    .local v17, nleSize:I
    const/4 v7, 0x0

    .local v7, eIndex:I
    :goto_2
    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 569
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 570
    .local v20, nodeExt:Lorg/w3c/dom/Node;
    const-string v30, "XNam"

    sget-object v31, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Node;

    .line 572
    .local v22, nodeXNam:Lorg/w3c/dom/Node;
    if-nez v22, :cond_5

    .line 567
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 574
    :cond_5
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v10, v0, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 577
    .local v26, strCfgXNam:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 579
    const-string v30, "XVal"

    sget-object v31, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/NodeList;

    .line 580
    .local v16, nlXVal:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 581
    .local v19, nlxvSize:I
    const/16 v29, 0x0

    .local v29, xvIndex:I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 583
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 584
    .local v9, eleXVal:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v27

    .line 586
    .local v27, strXVal:Ljava/lang/String;
    const-string v30, "Folder="

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 587
    .local v12, index:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v12, v0, :cond_7

    .line 589
    const-string v30, "Folder="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int v30, v30, v12

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 590
    .local v25, strActualFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v30, "ObexFileReadThread"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "succeed in getting folder : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v9           #eleXVal:Lorg/w3c/dom/Node;
    .end local v12           #index:I
    .end local v16           #nlXVal:Lorg/w3c/dom/NodeList;
    .end local v19           #nlxvSize:I
    .end local v25           #strActualFolder:Ljava/lang/String;
    .end local v26           #strCfgXNam:Ljava/lang/String;
    .end local v27           #strXVal:Ljava/lang/String;
    .end local v29           #xvIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 603
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 581
    .restart local v9       #eleXVal:Lorg/w3c/dom/Node;
    .restart local v12       #index:I
    .restart local v16       #nlXVal:Lorg/w3c/dom/NodeList;
    .restart local v19       #nlxvSize:I
    .restart local v26       #strCfgXNam:Ljava/lang/String;
    .restart local v27       #strXVal:Ljava/lang/String;
    .restart local v29       #xvIndex:I
    :cond_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 574
    .end local v9           #eleXVal:Lorg/w3c/dom/Node;
    .end local v12           #index:I
    .end local v16           #nlXVal:Lorg/w3c/dom/NodeList;
    .end local v19           #nlxvSize:I
    .end local v27           #strXVal:Ljava/lang/String;
    .end local v29           #xvIndex:I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 610
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #eIndex:I
    .end local v8           #eleName:Lorg/w3c/dom/Element;
    .end local v10           #i:I
    .end local v13           #ins:Ljava/io/ByteArrayInputStream;
    .end local v14           #nlExt:Lorg/w3c/dom/NodeList;
    .end local v15           #nlService:Lorg/w3c/dom/NodeList;
    .end local v17           #nleSize:I
    .end local v18           #nlsSize:I
    .end local v20           #nodeExt:Lorg/w3c/dom/Node;
    .end local v21           #nodeService:Lorg/w3c/dom/Node;
    .end local v22           #nodeXNam:Lorg/w3c/dom/Node;
    .end local v24           #sIndex:I
    .end local v26           #strCfgXNam:Ljava/lang/String;
    .end local v28           #xpath:Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v6

    .line 612
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    const-string v30, "ObexFileReadThread"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    const/4 v11, 0x1

    .line 617
    .end local v6           #e:Ljava/lang/Exception;
    :cond_9
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 619
    const-string v30, "ObexFileReadThread"

    const-string v31, "exit function GetCapability"

    invoke-static/range {v30 .. v31}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method private GetFileByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 32
    .parameter "strType"
    .parameter "strWho"
    .parameter "strFileName"
    .parameter "strDiskPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 637
    const-string v26, "ObexFileReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "enter function GetFile and get file "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v15, 0x1

    .line 639
    .local v15, iRet:I
    const-string v23, ""

    .line 640
    .local v23, strFullFilePath:Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 641
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    .line 644
    :try_start_0
    new-instance v22, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v22 .. v22}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 645
    .local v22, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v26, v0

    const/16 v27, -0x35

    invoke-virtual/range {v26 .. v27}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v26

    check-cast v26, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v0, v26

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v11, v0

    .line 648
    .local v11, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, -0x35

    invoke-virtual {v11}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/futuredial/ObexFileReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v7

    .line 650
    .local v7, byteName:[B
    if-nez v7, :cond_0

    .line 652
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 851
    .end local v7           #byteName:[B
    .end local v11           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .end local v15           #iRet:I
    .end local v22           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .local v16, iRet:I
    :goto_0
    return v16

    .line 655
    .end local v16           #iRet:I
    .restart local v7       #byteName:[B
    .restart local v11       #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .restart local v15       #iRet:I
    .restart local v22       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_1

    .line 658
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 659
    .local v8, byteTemp:[B
    array-length v0, v8

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v9, v0, [B

    .line 660
    .local v9, byteType:[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    array-length v0, v8

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v8, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    array-length v0, v8

    move/from16 v26, v0

    const/16 v27, 0x0

    aput-byte v27, v9, v26

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x42

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 664
    .end local v8           #byteTemp:[B
    .end local v9           #byteType:[B
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_2

    .line 666
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 667
    .local v10, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x4a

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 669
    .end local v10           #byteWho:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v6

    .line 670
    .local v6, byteGetCommand:[B
    if-eqz v6, :cond_3

    array-length v0, v6

    move/from16 v26, v0

    if-gtz v26, :cond_4

    .line 672
    :cond_3
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 673
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 677
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_4
    const-string v21, ""

    .line 678
    .local v21, prefix:Ljava/lang/String;
    const-string v25, ""

    .line 679
    .local v25, suffix:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/futuredial/ObexFileReadThread;->DiscardInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 680
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x50

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 682
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x50

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 684
    :cond_5
    const-string v26, "."

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 685
    .local v17, index:I
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 687
    move-object/from16 v21, p3

    .line 688
    const-string v25, "tmp"

    .line 696
    :cond_6
    :goto_1
    const-string v26, "/"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 697
    :goto_2
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 700
    const-string v26, "/"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 701
    .local v24, strPartialPath:Ljava/lang/String;
    :goto_3
    const/16 v18, 0x1

    .local v18, num:I
    move/from16 v19, v18

    .line 703
    .end local v18           #num:I
    .local v19, num:I
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v18, v19, 0x1

    .end local v19           #num:I
    .restart local v18       #num:I
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 704
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_18

    .line 707
    .end local v18           #num:I
    .end local v24           #strPartialPath:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 708
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    .line 714
    :cond_8
    sget v26, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v26, :cond_c

    .line 716
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    .line 720
    new-instance v26, Lcom/futuredial/CancelException;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/CancelException;-><init>()V

    throw v26
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v6           #byteGetCommand:[B
    .end local v7           #byteName:[B
    .end local v11           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .end local v17           #index:I
    .end local v21           #prefix:Ljava/lang/String;
    .end local v22           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v25           #suffix:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 838
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 839
    const/4 v15, 0x1

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .line 841
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 692
    .end local v13           #e1:Ljava/io/IOException;
    .end local v16           #iRet:I
    .restart local v6       #byteGetCommand:[B
    .restart local v7       #byteName:[B
    .restart local v11       #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .restart local v15       #iRet:I
    .restart local v17       #index:I
    .restart local v21       #prefix:Ljava/lang/String;
    .restart local v22       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v25       #suffix:Ljava/lang/String;
    :cond_9
    const/16 v26, 0x0

    :try_start_1
    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 693
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 694
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    if-gtz v26, :cond_6

    const-string v25, "tmp"

    goto/16 :goto_1

    .line 696
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 700
    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    goto/16 :goto_3

    .line 724
    :cond_c
    :try_start_2
    const-string v26, "ObexFileReadThread"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v26, v0

    const v27, 0x1d4c0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v15

    if-eqz v15, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 726
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v26, v0

    const v27, 0x1d4c0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 727
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_e
    const-string v26, "ObexFileReadThread"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 735
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v26

    if-nez v26, :cond_f

    .line 737
    const/4 v15, 0x1

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .line 739
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 728
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :catch_1
    move-exception v12

    .line 730
    .local v12, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 731
    const/4 v15, 0x1

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .line 733
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 741
    .end local v12           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v5

    .line 742
    .local v5, byteErrCode:B
    const/4 v3, 0x0

    .line 743
    .local v3, bObexFinished:Z
    and-int/lit8 v26, v5, 0x7f

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 745
    const/4 v3, 0x1

    .line 759
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x48

    invoke-virtual/range {v26 .. v27}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v26

    check-cast v26, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v0, v26

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v4, v0

    .line 760
    .local v4, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v4, :cond_10

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/FileOutputStream;->write([B)V

    .line 765
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v26, v0

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValueSize()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    .line 766
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_10

    .line 768
    const-wide/16 v26, 0x8

    const-wide/16 v28, 0x3e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    .line 770
    .local v20, percent:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->sendPBARMsg(I)V

    .line 772
    const-string v26, "percent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "size 1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    size 2: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    percent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .end local v20           #percent:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x49

    invoke-virtual/range {v26 .. v27}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v26

    check-cast v26, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v0, v26

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v14, v0

    .line 778
    .local v14, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v14, :cond_11

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/FileOutputStream;->write([B)V

    .line 783
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v26, v0

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValueSize()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    .line 784
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_11

    .line 786
    const-wide/16 v26, 0x8

    const-wide/16 v28, 0x3e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    .line 788
    .restart local v20       #percent:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->sendPBARMsg(I)V

    .line 790
    const-string v26, "percent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "size 1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    size 2: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    percent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .end local v20           #percent:I
    :cond_11
    if-eqz v3, :cond_16

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 817
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFileOS:Ljava/io/FileOutputStream;

    .line 818
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->curFile:Ljava/io/File;

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    .line 821
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gtz v26, :cond_12

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I

    move/from16 v27, v0

    div-int v26, v26, v27

    add-int/lit8 v20, v26, 0x8

    .line 825
    .restart local v20       #percent:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->sendPBARMsg(I)V

    .line 827
    const-string v26, "percent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "account 1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    account 2: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    percent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v20           #percent:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x19d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    move/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "file://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 844
    if-nez v15, :cond_13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_13

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    :cond_13
    const-string v26, "ObexFileReadThread"

    const-string v27, "exit function ObexFileReadThread"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v15

    .line 851
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 747
    .end local v4           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v14           #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_14
    and-int/lit8 v26, v5, 0x7f

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 749
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 753
    :cond_15
    :try_start_4
    const-string v26, "ObexFileReadThread"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "byteErrCode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v15, 0x1

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V

    move/from16 v16, v15

    .line 756
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 802
    .end local v16           #iRet:I
    .restart local v4       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v14       #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v15       #iRet:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, -0x35

    invoke-virtual {v11}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v6

    .line 806
    if-eqz v6, :cond_17

    array-length v0, v6

    move/from16 v26, v0

    if-gtz v26, :cond_8

    .line 808
    :cond_17
    const-string v26, "ObexFileReadThread"

    const-string v27, "fail in packing getting command"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v15, 0x1

    .line 810
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->DeleteOpenFile()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v16, v15

    .line 811
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .end local v3           #bObexFinished:Z
    .end local v4           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v5           #byteErrCode:B
    .end local v14           #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    .restart local v18       #num:I
    .restart local v24       #strPartialPath:Ljava/lang/String;
    :cond_18
    move/from16 v19, v18

    .end local v18           #num:I
    .restart local v19       #num:I
    goto/16 :goto_4
.end method

.method private GetFilesByFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;Ljava/lang/String;)I
    .locals 11
    .parameter "strObexType"
    .parameter "strObexWho"
    .parameter "folder"
    .parameter "strTargetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 914
    const-string v6, "ObexFileReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter function GetFilesByFolderStructure - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v2, 0x1

    .line 918
    .local v2, iRet:I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, curDirFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 922
    iget-object v6, p0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_0
    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-direct {p0, v6, p2}, Lcom/futuredial/ObexFileReadThread;->Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 927
    invoke-virtual {p0, v2, v9}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 928
    if-eqz v2, :cond_1

    .line 930
    iput v2, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 931
    const-string v6, "ObexFileReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail in setting path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 992
    .end local v2           #iRet:I
    .local v3, iRet:I
    :goto_0
    return v3

    .line 936
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_1
    sget v6, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v6, :cond_2

    .line 938
    iput v10, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 939
    new-instance v6, Lcom/futuredial/CancelException;

    invoke-direct {v6}, Lcom/futuredial/CancelException;-><init>()V

    throw v6

    .line 943
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 946
    sget v6, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v6, :cond_3

    .line 948
    iput v10, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 949
    new-instance v6, Lcom/futuredial/CancelException;

    invoke-direct {v6}, Lcom/futuredial/CancelException;-><init>()V

    throw v6

    .line 952
    :cond_3
    const-string v7, ""

    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7, p2, v6, p4}, Lcom/futuredial/ObexFileReadThread;->GetFileByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 954
    invoke-virtual {p0, v2, v9}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 955
    if-eqz v2, :cond_4

    .line 957
    iput v2, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 958
    const-string v7, "ObexFileReadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail in getting file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 959
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 943
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 968
    sget v6, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v6, :cond_6

    .line 970
    iput v10, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 971
    new-instance v6, Lcom/futuredial/CancelException;

    invoke-direct {v6}, Lcom/futuredial/CancelException;-><init>()V

    throw v6

    .line 974
    :cond_6
    iget-object v6, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ObexFileReadThread$FolderStructure;

    .line 977
    .local v5, subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    const-string v6, "/"

    invoke-virtual {p4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    .local v4, strSubPathTarget:Ljava/lang/String;
    :goto_3
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 979
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/futuredial/ObexFileReadThread;->GetFilesByFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;Ljava/lang/String;)I

    move-result v2

    .line 981
    invoke-virtual {p0, v2, v9}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 982
    if-eqz v2, :cond_8

    .line 984
    iput v2, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 985
    const-string v6, "ObexFileReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail in getting files in path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 986
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto/16 :goto_0

    .line 977
    .end local v3           #iRet:I
    .end local v4           #strSubPathTarget:Ljava/lang/String;
    .restart local v2       #iRet:I
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 965
    .restart local v4       #strSubPathTarget:Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 991
    .end local v4           #strSubPathTarget:Ljava/lang/String;
    .end local v5           #subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    :cond_9
    const-string v6, "ObexFileReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit function GetFilesByPath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 992
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto/16 :goto_0
.end method

.method private GetFolderListing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 22
    .parameter "strObexName"
    .parameter "strObexType"
    .parameter "strObexWho"
    .parameter
    .parameter
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 1104
    .local p4, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, folderNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "ObexFileReadThread"

    const-string v19, "exter function GetFolderListing"

    invoke-static/range {v18 .. v19}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v10, 0x1

    .line 1108
    .local v10, iRet:I
    new-instance v15, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v15}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1109
    .local v15, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/futuredial/ObexFileReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v10

    .line 1110
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 1111
    if-eqz v10, :cond_0

    .line 1113
    const-string v18, "ObexFileReadThread"

    const-string v19, "fail in getting x-obex/capability"

    invoke-static/range {v18 .. v19}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1165
    .end local v10           #iRet:I
    .local v11, iRet:I
    :goto_0
    return v11

    .line 1119
    .end local v11           #iRet:I
    .restart local v10       #iRet:I
    :cond_0
    :try_start_0
    new-instance v12, Ljava/io/ByteArrayInputStream;

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1120
    .local v12, ins:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v17

    .line 1121
    .local v17, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1124
    .local v4, doc:Lorg/w3c/dom/Document;
    const-string v18, "/folder-listing/file"

    sget-object v19, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v4, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/NodeList;

    .line 1125
    .local v13, nlFiles:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 1127
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 1129
    .local v6, eleFile:Lorg/w3c/dom/Element;
    const-string v18, "user-perm"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1130
    .local v16, userperm:Ljava/lang/String;
    const-string v18, "R"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1125
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1135
    :cond_1
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const-string v18, "size"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1139
    .local v8, fileSize:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 1141
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    move-wide/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    .line 1143
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1154
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v6           #eleFile:Lorg/w3c/dom/Element;
    .end local v8           #fileSize:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #ins:Ljava/io/ByteArrayInputStream;
    .end local v13           #nlFiles:Lorg/w3c/dom/NodeList;
    .end local v16           #userperm:Ljava/lang/String;
    .end local v17           #xpath:Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v5

    .line 1156
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1157
    const-string v18, "ObexFileReadThread"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1158
    const/4 v10, 0x1

    .line 1161
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 1163
    const-string v18, "ObexFileReadThread"

    const-string v19, "exit function GetFolderListing"

    invoke-static/range {v18 .. v19}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1165
    .end local v10           #iRet:I
    .restart local v11       #iRet:I
    goto/16 :goto_0

    .line 1147
    .end local v11           #iRet:I
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v10       #iRet:I
    .restart local v12       #ins:Ljava/io/ByteArrayInputStream;
    .restart local v13       #nlFiles:Lorg/w3c/dom/NodeList;
    .restart local v17       #xpath:Ljavax/xml/xpath/XPath;
    :cond_4
    :try_start_1
    const-string v18, "/folder-listing/folder"

    sget-object v19, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v4, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/NodeList;

    .line 1148
    .local v14, nlFolders:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 1150
    invoke-interface {v14, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 1151
    .local v7, eleFolder:Lorg/w3c/dom/Element;
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1148
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private GetFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;)I
    .locals 11
    .parameter "strObexType"
    .parameter "strObexWho"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 856
    const-string v0, "ObexFileReadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter function GetFolderStructure - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v7, 0x1

    .line 860
    .local v7, iRet:I
    iget-object v0, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/futuredial/ObexFileReadThread;->Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 862
    if-eqz v7, :cond_0

    .line 864
    iput v7, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 865
    const-string v0, "ObexFileReadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in setting path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 909
    .end local v7           #iRet:I
    .local v8, iRet:I
    :goto_0
    return v8

    .line 870
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_0
    sget v0, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v0, :cond_1

    .line 872
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 873
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 876
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v5, folderNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    iget-object v4, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/futuredial/ObexFileReadThread;->GetFolderListing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v7

    .line 881
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 884
    sget v0, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v0, :cond_2

    .line 886
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 887
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 890
    :cond_2
    iget-object v0, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->cfgPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, strSubPathSource:Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/futuredial/ObexFileReadThread$FolderStructure;

    invoke-direct {v10, p0}, Lcom/futuredial/ObexFileReadThread$FolderStructure;-><init>(Lcom/futuredial/ObexFileReadThread;)V

    .line 892
    .local v10, subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    .line 893
    iput-object v9, v10, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    .line 894
    invoke-direct {p0, p1, p2, v10}, Lcom/futuredial/ObexFileReadThread;->GetFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;)I

    move-result v7

    .line 896
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 897
    if-eqz v7, :cond_4

    .line 899
    iput v7, p0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 900
    const-string v0, "ObexFileReadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in getting files in path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 901
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_0

    .line 890
    .end local v8           #iRet:I
    .end local v9           #strSubPathSource:Ljava/lang/String;
    .end local v10           #subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    .restart local v7       #iRet:I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread;->cfgPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 904
    .restart local v9       #strSubPathSource:Ljava/lang/String;
    .restart local v10       #subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    :cond_4
    iget-object v0, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 908
    .end local v9           #strSubPathSource:Ljava/lang/String;
    .end local v10           #subFolder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    :cond_5
    const-string v0, "ObexFileReadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit function GetFolderStructure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 909
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_0
.end method

.method private LoadConfig(Ljava/lang/String;)I
    .locals 21
    .parameter "strItemID"

    .prologue
    .line 162
    const/4 v8, 0x1

    .line 166
    .local v8, iRet:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "ObexFileConfig.xml"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 168
    .local v9, ins:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 170
    .local v4, doc:Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v18

    .line 171
    .local v18, xpath:Ljavax/xml/xpath/XPath;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "root/item[@id=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\']"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v4, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 173
    .local v6, eleItem:Lorg/w3c/dom/Element;
    if-eqz v6, :cond_4

    .line 176
    const-string v19, "clan"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/ObexFileReadThread;->bChangeLang:Z

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->contentType:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const-string v14, "imagexnam"

    .line 180
    .local v14, strTagName:Ljava/lang/String;
    :goto_0
    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 181
    .local v17, strXNamContent:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 183
    const-string v19, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, strXNamArray:[Ljava/lang/String;
    move-object/from16 v3, v16

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v15, v3, v7

    .line 186
    .local v15, strXNam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v14           #strTagName:Ljava/lang/String;
    .end local v15           #strXNam:Ljava/lang/String;
    .end local v16           #strXNamArray:[Ljava/lang/String;
    .end local v17           #strXNamContent:Ljava/lang/String;
    :cond_0
    const-string v14, "musicxnam"

    goto :goto_0

    .line 192
    .restart local v14       #strTagName:Ljava/lang/String;
    .restart local v17       #strXNamContent:Ljava/lang/String;
    :cond_1
    const-string v19, "obexwho"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    .line 195
    const-string v19, "pathseparator"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ObexFileReadThread;->cfgPathSeparator:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->contentType:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const-string v14, "imagedefdir"

    .line 199
    :goto_2
    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 200
    .local v13, strDefDirContent:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 202
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, strDefDirArray:[Ljava/lang/String;
    move-object v3, v12

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_3

    aget-object v11, v3, v7

    .line 205
    .local v11, strDefDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgDefFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 198
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v11           #strDefDir:Ljava/lang/String;
    .end local v12           #strDefDirArray:[Ljava/lang/String;
    .end local v13           #strDefDirContent:Ljava/lang/String;
    :cond_2
    const-string v14, "musicdefdir"
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 214
    .restart local v13       #strDefDirContent:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 236
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v6           #eleItem:Lorg/w3c/dom/Element;
    .end local v9           #ins:Ljava/io/InputStream;
    .end local v13           #strDefDirContent:Ljava/lang/String;
    .end local v14           #strTagName:Ljava/lang/String;
    .end local v17           #strXNamContent:Ljava/lang/String;
    .end local v18           #xpath:Ljavax/xml/xpath/XPath;
    :cond_4
    :goto_4
    return v8

    .line 218
    :catch_0
    move-exception v5

    .line 220
    .local v5, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v5}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 221
    const/4 v8, 0x1

    .line 234
    goto :goto_4

    .line 222
    .end local v5           #e:Ljavax/xml/xpath/XPathExpressionException;
    :catch_1
    move-exception v5

    .line 224
    .local v5, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 225
    const/4 v8, 0x1

    .line 234
    goto :goto_4

    .line 226
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v5

    .line 228
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 229
    const/4 v8, 0x1

    .line 234
    goto :goto_4

    .line 230
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v5

    .line 232
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    const/4 v8, 0x1

    goto :goto_4
.end method

.method public static LogBinData(Ljava/lang/String;[B)V
    .locals 14
    .parameter "logTag"
    .parameter "binData"

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x20

    .line 1578
    sget-boolean v10, Lcom/futuredial/ObexFileReadThread;->bPrintLog:Z

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    array-length v10, p1

    if-gtz v10, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    const-string v10, "Begin"

    invoke-static {p0, v10}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const/4 v0, 0x0

    .line 1585
    .local v0, bFinished:Z
    const/16 v6, 0x10

    .line 1586
    .local v6, nLen:I
    const/16 v10, 0x30

    new-array v8, v10, [C

    .line 1587
    .local v8, szBinLine:[C
    new-array v9, v6, [C

    .line 1588
    .local v9, szStrLine:[C
    const-string v7, ""

    .line 1589
    .local v7, strMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, m:I
    :goto_1
    array-length v10, v8

    if-ge v5, v10, :cond_2

    .line 1591
    aput-char v12, v8, v5

    .line 1589
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1593
    :cond_2
    const/4 v5, 0x0

    :goto_2
    array-length v10, v9

    if-ge v5, v10, :cond_3

    .line 1595
    aput-char v12, v9, v5

    .line 1593
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1598
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, p1

    if-ge v2, v10, :cond_9

    .line 1600
    const/4 v0, 0x0

    .line 1601
    aget-byte v10, p1, v2

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    and-int/lit8 v1, v10, 0xf

    .line 1602
    .local v1, h:I
    aget-byte v10, p1, v2

    and-int/lit8 v4, v10, 0xf

    .line 1603
    .local v4, l:I
    rem-int v3, v2, v6

    .line 1604
    .local v3, id:I
    if-gt v1, v13, :cond_4

    .line 1606
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v11, v1, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v10

    .line 1613
    :goto_4
    if-gt v4, v13, :cond_5

    .line 1615
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v4, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v10

    .line 1621
    :goto_5
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x2

    aput-char v12, v8, v10

    .line 1623
    aget-byte v10, p1, v2

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_6

    .line 1625
    aget-byte v10, p1, v2

    int-to-char v10, v10

    aput-char v10, v9, v3

    .line 1632
    :goto_6
    add-int/lit8 v10, v2, 0x1

    rem-int/2addr v10, v6

    if-nez v10, :cond_8

    .line 1634
    const/4 v0, 0x1

    .line 1635
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1636
    invoke-static {p0, v7}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const/4 v5, 0x0

    :goto_7
    array-length v10, v8

    if-ge v5, v10, :cond_7

    .line 1640
    aput-char v12, v8, v5

    .line 1638
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1610
    :cond_4
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v11, v1, 0x37

    int-to-char v11, v11

    aput-char v11, v8, v10

    goto :goto_4

    .line 1619
    :cond_5
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v4, 0x37

    int-to-char v11, v11

    aput-char v11, v8, v10

    goto :goto_5

    .line 1629
    :cond_6
    const/16 v10, 0x2e

    aput-char v10, v9, v3

    goto :goto_6

    .line 1642
    :cond_7
    const/4 v5, 0x0

    :goto_8
    array-length v10, v9

    if-ge v5, v10, :cond_8

    .line 1644
    aput-char v12, v9, v5

    .line 1642
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1598
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1649
    .end local v1           #h:I
    .end local v3           #id:I
    .end local v4           #l:I
    :cond_9
    if-nez v0, :cond_a

    .line 1651
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1652
    invoke-static {p0, v7}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_a
    const-string v10, "End"

    invoke-static {p0, v10}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "strTarget"
    .parameter "strWho"

    .prologue
    const/4 v6, 0x1

    .line 1209
    const-string v7, "ObexFileReadThread"

    const-string v8, "enter function Obex_Connect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v4, 0x0

    .line 1212
    .local v4, iRet:I
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 1213
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, -0x80

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 1214
    invoke-direct {p0, p1}, Lcom/futuredial/ObexFileReadThread;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 1215
    .local v1, byteTarget:[B
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x46

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 1216
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1218
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1219
    .local v2, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 1221
    .end local v2           #byteWho:[B
    :cond_0
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 1222
    .local v0, byteConnection:[B
    if-eqz v0, :cond_1

    array-length v7, v0

    if-gtz v7, :cond_2

    .line 1224
    :cond_1
    const-string v7, "ObexFileReadThread"

    const-string v8, "exit function Obex_Connect, function getObexPkgStream fails"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :goto_0
    return v6

    .line 1227
    :cond_2
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1229
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    const-string v6, "ObexFileReadThread"

    invoke-static {v6, v0}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 1230
    iget-object v6, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_3

    move v6, v4

    goto :goto_0

    .line 1231
    :cond_3
    iget-object v6, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v6, v4

    goto :goto_0

    .line 1232
    :cond_4
    const-string v6, "ObexFileReadThread"

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v6, v7}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    iget-object v6, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1243
    const-string v6, "ObexFileReadThread"

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v4, 0x1

    move v6, v4

    .line 1245
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v3

    .line 1235
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 1236
    const-string v6, "ObexFileReadThread"

    const-string v7, "exit function Obex_Connect, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const/4 v4, 0x1

    move v6, v4

    .line 1238
    goto :goto_0

    .line 1248
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    const-string v6, "ObexFileReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit function Obex_Connect, iRet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 1249
    goto :goto_0
.end method

.method private Obex_DisConnect(Ljava/lang/String;)I
    .locals 11
    .parameter "strWho"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0x35

    .line 1539
    const-string v7, "ObexFileReadThread"

    const-string v8, "enter function Obex_DisConnect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const/4 v4, 0x0

    .line 1541
    .local v4, iRet:I
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1542
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 1543
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, -0x7f

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 1544
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v7

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v7

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 1545
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 1546
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1547
    .local v1, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 1548
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 1549
    .local v0, byteDisConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 1551
    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 1572
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 1555
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    :try_start_0
    const-string v7, "ObexFileReadThread"

    invoke-static {v7, v0}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 1556
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v0, v8}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 1557
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v6, v8}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 1558
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_3
    const-string v7, "ObexFileReadThread"

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v7, v8}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    iget-object v7, p0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v7, v8, v10}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1567
    const/4 v4, 0x1

    move v5, v4

    .line 1568
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 1559
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v3

    .line 1561
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 1562
    const/4 v4, 0x1

    move v5, v4

    .line 1563
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 1571
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_4
    const-string v7, "ObexFileReadThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exit function Obex_DisConnect, iRet = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1572
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0
.end method

.method private Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I
    .locals 27
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .parameter "outputBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 1408
    const-string v23, "ObexFileReadThread"

    const-string v24, "enter function Obex_Get"

    invoke-static/range {v23 .. v24}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const/16 v18, 0x0

    .line 1410
    .local v18, iRet:I
    new-instance v22, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v22 .. v22}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1411
    .local v22, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v23, v0

    const/16 v24, -0x35

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v23

    check-cast v23, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v14, v23

    check-cast v14, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 1414
    .local v14, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, -0x35

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 1416
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1

    .line 1418
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/ObexFileReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v10

    .line 1419
    .local v10, byteName:[B
    if-nez v10, :cond_0

    .line 1421
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1533
    .end local v10           #byteName:[B
    .end local v18           #iRet:I
    .local v19, iRet:I
    :goto_0
    return v19

    .line 1424
    .end local v19           #iRet:I
    .restart local v10       #byteName:[B
    .restart local v18       #iRet:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 1426
    .end local v10           #byteName:[B
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    .line 1428
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 1429
    .local v11, byteTemp:[B
    array-length v0, v11

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v12, v0, [B

    .line 1430
    .local v12, byteType:[B
    const/16 v23, 0x0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v11, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1431
    array-length v0, v11

    move/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v12, v23

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x42

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 1434
    .end local v11           #byteTemp:[B
    .end local v12           #byteType:[B
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 1436
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 1437
    .local v13, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x4a

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 1439
    .end local v13           #byteWho:[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 1440
    .local v9, byteGetCommand:[B
    if-eqz v9, :cond_4

    array-length v0, v9

    move/from16 v23, v0

    if-gtz v23, :cond_5

    .line 1442
    :cond_4
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1443
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto :goto_0

    .line 1445
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v5, arrRecvBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_6
    sget v23, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v23, :cond_7

    .line 1451
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 1452
    new-instance v23, Lcom/futuredial/CancelException;

    invoke-direct/range {v23 .. v23}, Lcom/futuredial/CancelException;-><init>()V

    throw v23

    .line 1456
    :cond_7
    :try_start_0
    const-string v23, "ObexFileReadThread"

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v23, v0

    const v24, 0x1d4c0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v19, v18

    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1458
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v23, v0

    const v24, 0x1d4c0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v19, v18

    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1459
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_9
    const-string v23, "ObexFileReadThread"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v23

    if-nez v23, :cond_a

    .line 1468
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1469
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1460
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :catch_0
    move-exception v15

    .line 1462
    .local v15, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v15}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 1463
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1464
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1471
    .end local v15           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v8

    .line 1472
    .local v8, byteErrCode:B
    const/4 v6, 0x0

    .line 1473
    .local v6, bObexFinished:Z
    and-int/lit8 v23, v8, 0x7f

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1475
    const/4 v6, 0x1

    .line 1488
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x48

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v23

    check-cast v23, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v7, v23

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 1489
    .local v7, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v7, :cond_b

    .line 1491
    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x49

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v23

    check-cast v23, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v16, v23

    check-cast v16, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 1494
    .local v16, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v16, :cond_c

    .line 1496
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    :cond_c
    if-eqz v6, :cond_f

    .line 1517
    const/16 v21, 0x0

    .line 1518
    .local v21, nLen:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1519
    .local v20, nCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 1521
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v21, v21, v23

    .line 1519
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1477
    .end local v7           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v16           #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v17           #i:I
    .end local v20           #nCount:I
    .end local v21           #nLen:I
    :cond_d
    and-int/lit8 v23, v8, 0x7f

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1479
    const/4 v6, 0x0

    goto :goto_1

    .line 1483
    :cond_e
    const-string v23, "ObexFileReadThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "byteErrCode = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1485
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1505
    .end local v19           #iRet:I
    .restart local v7       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v16       #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v18       #iRet:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, -0x35

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 1509
    if-eqz v9, :cond_10

    array-length v0, v9

    move/from16 v23, v0

    if-gtz v23, :cond_6

    .line 1511
    :cond_10
    const-string v23, "ObexFileReadThread"

    const-string v24, "fail in packing getting command"

    invoke-static/range {v23 .. v24}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const/16 v18, 0x1

    move/from16 v19, v18

    .line 1513
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 1523
    .end local v19           #iRet:I
    .restart local v17       #i:I
    .restart local v18       #iRet:I
    .restart local v20       #nCount:I
    .restart local v21       #nLen:I
    :cond_11
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 1524
    const/16 v21, 0x0

    .line 1525
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 1527
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v21

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1528
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v21, v21, v23

    .line 1525
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1530
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1532
    const-string v23, "ObexFileReadThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "exit function Obex_Get, iRet = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 1533
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0
.end method

.method private Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "strPath"
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 1254
    const-string v14, "ObexFileReadThread"

    const-string v15, "enter function Obex_SetPath"

    invoke-static {v14, v15}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const/4 v10, 0x0

    .line 1256
    .local v10, iRet:I
    new-instance v12, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v12}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1257
    .local v12, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v15, -0x35

    invoke-virtual {v14, v15}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v14

    check-cast v14, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v7, v14

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 1259
    .local v7, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, -0x7b

    invoke-virtual {v14, v15}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, -0x35

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 1262
    const-string v14, ""

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1263
    .local v1, byteName:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 1266
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1267
    .local v6, byteWho:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, 0x4a

    invoke-virtual {v14, v15, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 1270
    .end local v6           #byteWho:[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v5

    .line 1271
    .local v5, byteSetRootPathTemp:[B
    if-eqz v5, :cond_1

    array-length v14, v5

    if-gtz v14, :cond_2

    .line 1273
    :cond_1
    const/4 v10, 0x1

    move v14, v10

    .line 1368
    :goto_0
    return v14

    .line 1276
    :cond_2
    array-length v14, v5

    add-int/lit8 v14, v14, 0x2

    new-array v4, v14, [B

    .line 1277
    .local v4, byteSetRootPath:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1278
    const/4 v14, 0x3

    const/4 v15, 0x5

    array-length v0, v5

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x3

    move/from16 v0, v16

    invoke-static {v5, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1279
    const/4 v14, 0x1

    array-length v15, v4

    const v16, 0xff00

    and-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v4, v14

    .line 1280
    const/4 v14, 0x2

    array-length v15, v4

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v4, v14

    .line 1281
    const/4 v14, 0x3

    const/4 v15, 0x2

    aput-byte v15, v4, v14

    .line 1282
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-byte v15, v4, v14

    .line 1284
    :try_start_0
    const-string v14, "ObexFileReadThread"

    invoke-static {v14, v4}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v15, 0x1d4c0

    invoke-virtual {v14, v4, v15}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v10

    if-eqz v10, :cond_3

    move v14, v10

    goto :goto_0

    .line 1286
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v15, 0x1d4c0

    invoke-virtual {v14, v12, v15}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v14, v10

    goto :goto_0

    .line 1287
    :cond_4
    const-string v14, "ObexFileReadThread"

    iget-object v15, v12, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v14, v15}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v15, v12, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1296
    const/4 v10, 0x1

    move v14, v10

    .line 1297
    goto :goto_0

    .line 1288
    :catch_0
    move-exception v8

    .line 1290
    .local v8, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v8}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 1291
    const/4 v10, 0x1

    move v14, v10

    .line 1292
    goto :goto_0

    .line 1302
    .end local v8           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    sget v14, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v14, :cond_6

    .line 1304
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 1305
    new-instance v14, Lcom/futuredial/CancelException;

    invoke-direct {v14}, Lcom/futuredial/CancelException;-><init>()V

    throw v14

    .line 1308
    :cond_6
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1309
    .local v13, subPaths:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v14, v13

    if-ge v9, v14, :cond_f

    .line 1311
    aget-object v11, v13, v9

    .line 1312
    .local v11, path:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_8

    .line 1309
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1314
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 1315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, -0x7b

    invoke-virtual {v14, v15}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, -0x35

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 1317
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/futuredial/ObexFileReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 1326
    if-nez v1, :cond_9

    .line 1328
    const/4 v10, 0x1

    move v14, v10

    .line 1329
    goto/16 :goto_0

    .line 1331
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    .line 1334
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1335
    .restart local v6       #byteWho:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v15, 0x4a

    invoke-virtual {v14, v15, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 1337
    .end local v6           #byteWho:[B
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v3

    .line 1338
    .local v3, byteSetPathTemp:[B
    if-eqz v3, :cond_b

    array-length v14, v3

    if-gtz v14, :cond_c

    .line 1340
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1342
    :cond_c
    array-length v14, v3

    add-int/lit8 v14, v14, 0x2

    new-array v2, v14, [B

    .line 1343
    .local v2, byteSetPath:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v3, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    const/4 v14, 0x3

    const/4 v15, 0x5

    array-length v0, v3

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x3

    move/from16 v0, v16

    invoke-static {v3, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1345
    const/4 v14, 0x1

    array-length v15, v2

    const v16, 0xff00

    and-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v2, v14

    .line 1346
    const/4 v14, 0x2

    array-length v15, v2

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v2, v14

    .line 1347
    const/4 v14, 0x3

    const/4 v15, 0x2

    aput-byte v15, v2, v14

    .line 1348
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-byte v15, v2, v14

    .line 1350
    :try_start_1
    const-string v14, "ObexFileReadThread"

    invoke-static {v14, v2}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v15, 0x1d4c0

    invoke-virtual {v14, v2, v15}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v10

    if-eqz v10, :cond_d

    move v14, v10

    goto/16 :goto_0

    .line 1352
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v15, 0x1d4c0

    invoke-virtual {v14, v12, v15}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v10

    if-eqz v10, :cond_e

    move v14, v10

    goto/16 :goto_0

    .line 1353
    :cond_e
    const-string v14, "ObexFileReadThread"

    iget-object v15, v12, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v14, v15}, Lcom/futuredial/ObexFileReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexFileReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v15, v12, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1362
    const/4 v10, 0x1

    move v14, v10

    .line 1363
    goto/16 :goto_0

    .line 1354
    :catch_1
    move-exception v8

    .line 1356
    .restart local v8       #e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v8}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 1357
    const/4 v10, 0x1

    move v14, v10

    .line 1358
    goto/16 :goto_0

    .line 1367
    .end local v2           #byteSetPath:[B
    .end local v3           #byteSetPathTemp:[B
    .end local v8           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v11           #path:Ljava/lang/String;
    :cond_f
    const-string v14, "ObexFileReadThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exit function Obex_SetPath, iRet = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v10

    .line 1368
    goto/16 :goto_0
.end method

.method private Str2UnicodeByte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 1376
    new-array v0, v7, [B

    .line 1401
    :goto_0
    return-object v0

    .line 1380
    :cond_0
    :try_start_0
    const-string v6, "UNICODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1381
    .local v2, byteTempBuffer:[B
    array-length v6, v2

    if-gt v6, v8, :cond_1

    move-object v0, v5

    .line 1383
    goto :goto_0

    .line 1385
    :cond_1
    array-length v6, v2

    new-array v0, v6, [B

    .line 1386
    .local v0, byteDataBuffer:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_2

    .line 1389
    aget-byte v1, v0, v4

    .line 1390
    .local v1, byteTemp:B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v0, v4

    .line 1391
    add-int/lit8 v6, v4, 0x1

    aput-byte v1, v0, v6

    .line 1392
    add-int/lit8 v4, v4, 0x1

    .line 1387
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1394
    .end local v1           #byteTemp:B
    :cond_2
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    aput-byte v7, v0, v6

    .line 1395
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1398
    .end local v0           #byteDataBuffer:[B
    .end local v2           #byteTempBuffer:[B
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 1400
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "ObexFileReadThread"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 1401
    goto :goto_0
.end method

.method private binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 1172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 1173
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1175
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1176
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1177
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 1179
    add-int/lit8 v0, v0, -0x30

    .line 1189
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 1191
    add-int/lit8 v1, v1, -0x30

    .line 1201
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1202
    add-int/lit8 v2, v2, 0x2

    .line 1203
    goto :goto_0

    .line 1181
    :cond_2
    if-gt v0, v7, :cond_3

    .line 1183
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 1185
    :cond_3
    if-gt v0, v8, :cond_0

    .line 1187
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 1193
    :cond_4
    if-gt v0, v7, :cond_5

    .line 1195
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 1197
    :cond_5
    if-gt v0, v8, :cond_1

    .line 1199
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 1204
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method


# virtual methods
.method protected DoComm()V
    .locals 23

    .prologue
    .line 301
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgXNam:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgDefFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 309
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/ObexFileReadThread;->gottenFileSize:J

    .line 310
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/ObexFileReadThread;->totalFileSize:J

    .line 311
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    .line 312
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->totalFileAmount:I

    .line 316
    :try_start_0
    const-string v19, "ObexFileReadThread"

    const-string v20, "Enter function DoComm"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v10, 0x1

    .line 320
    .local v10, iRet:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->parsingPolicy:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/futuredial/ObexFileReadThread;->LoadConfig(Ljava/lang/String;)I

    move-result v10

    .line 321
    if-eqz v10, :cond_0

    .line 323
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 324
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in loading config"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v10           #iRet:I
    :goto_0
    return-void

    .line 329
    .restart local v10       #iRet:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/ObexFileReadThread;->bChangeLang:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "en"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/futuredial/ObexFileReadThread;->ChangeLanguage(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2

    .line 331
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 332
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in changing language"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 460
    .end local v10           #iRet:I
    :catch_0
    move-exception v18

    .line 463
    .local v18, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/ObexFileReadThread;->bPopResume:Z

    .line 464
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(I)V

    .line 465
    const/16 v19, 0x67

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 476
    .end local v18           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/ObexFileReadThread;->bChangeLang:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->originalLang:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->originalLang:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/futuredial/ObexFileReadThread;->ChangeLanguage(Ljava/lang/String;)I

    .line 481
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ObexFileReadThread;->gottenFileAmount:I

    move/from16 v19, v0

    sput v19, Lcom/futuredial/WriteThread;->iWrittenCount:I

    .line 483
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->Close(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 337
    .restart local v10       #iRet:I
    :cond_2
    :try_start_1
    sget v19, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v19, :cond_3

    .line 339
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 340
    new-instance v19, Lcom/futuredial/CancelException;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/CancelException;-><init>()V

    throw v19
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    .end local v10           #iRet:I
    :catch_1
    move-exception v6

    .line 469
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(I)V

    .line 472
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    goto :goto_1

    .line 343
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v10       #iRet:I
    :cond_3
    :try_start_2
    const-string v19, "ObexFileReadThread"

    const-string v20, "OpenPort"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->OpenPort()I

    .line 346
    const-string v19, "ObexFileReadThread"

    const-string v20, "SetIsCompleted"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexFileReadThread;->SetIsCompleted()V

    .line 350
    const/16 v16, 0x0

    .line 351
    .local v16, time:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #time:I
    .local v17, time:I
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 354
    const-string v19, "ObexFileReadThread"

    const-string v20, "Begin to read user content"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v19, "F9EC7BC4953c11d2984E525400DC9E09"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/futuredial/ObexFileReadThread;->Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 358
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/ObexFileReadThread;->ASSERT(II)V

    .line 359
    if-eqz v10, :cond_5

    .line 361
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 362
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in connecting obex server"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_4
    :goto_2
    const-string v19, "ObexFileReadThread"

    const-string v20, "Exit function DoComm"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 367
    :cond_5
    sget v19, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v19, :cond_6

    .line 369
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 370
    new-instance v19, Lcom/futuredial/CancelException;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/CancelException;-><init>()V

    throw v19

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/ObexFileReadThread;->bChangeLang:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arCfgDefFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 378
    .local v12, strDefDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 383
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #strDefDir:Ljava/lang/String;
    :cond_7
    const-string v19, ""

    const-string v20, "x-obex/capability"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/futuredial/ObexFileReadThread;->GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 384
    if-eqz v10, :cond_8

    .line 386
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 387
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in getting x-obex/capability "

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 392
    :cond_8
    sget v19, Lcom/futuredial/ObexFileReadThread;->CancelFlag:I

    if-nez v19, :cond_9

    .line 394
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 395
    new-instance v19, Lcom/futuredial/CancelException;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/CancelException;-><init>()V

    throw v19

    .line 398
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v4, arFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/ObexFileReadThread$FolderStructure;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->arActualFolder:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 401
    .local v13, strFolder:Ljava/lang/String;
    new-instance v7, Lcom/futuredial/ObexFileReadThread$FolderStructure;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/futuredial/ObexFileReadThread$FolderStructure;-><init>(Lcom/futuredial/ObexFileReadThread;)V

    .line 402
    .local v7, folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/ObexFileReadThread;->cfgPathSeparator:Ljava/lang/String;

    .line 403
    .local v11, splitter:Ljava/lang/String;
    const-string v19, "\\"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v11, "\\\\"

    .line 404
    :cond_a
    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 405
    .local v8, folderNames:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    .line 406
    iput-object v13, v7, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    .line 407
    const-string v19, "x-obex/folder-listing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/futuredial/ObexFileReadThread;->GetFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;)I

    move-result v10

    .line 408
    if-eqz v10, :cond_c

    .line 416
    .end local v7           #folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    .end local v8           #folderNames:[Ljava/lang/String;
    .end local v11           #splitter:Ljava/lang/String;
    .end local v13           #strFolder:Ljava/lang/String;
    :cond_b
    if-eqz v10, :cond_d

    .line 418
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 419
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in getting folder structure "

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 413
    .restart local v7       #folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    .restart local v8       #folderNames:[Ljava/lang/String;
    .restart local v11       #splitter:Ljava/lang/String;
    .restart local v13       #strFolder:Ljava/lang/String;
    :cond_c
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 424
    .end local v7           #folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    .end local v8           #folderNames:[Ljava/lang/String;
    .end local v11           #splitter:Ljava/lang/String;
    .end local v13           #strFolder:Ljava/lang/String;
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->strSPhoneInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ","

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "DCIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 425
    .local v15, targetFolder:Ljava/lang/String;
    const-string v19, " "

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 426
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, curDirFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_e

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->receivedFilesList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/futuredial/ObexFileReadThread$FolderStructure;

    .line 435
    .restart local v7       #folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 436
    .local v14, subTargetFolder:Ljava/lang/String;
    const-string v19, " "

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 438
    const-string v19, "x-obex/folder-listing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ObexFileReadThread;->cfgObexWho:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/futuredial/ObexFileReadThread;->GetFilesByFolderStructure(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ObexFileReadThread$FolderStructure;Ljava/lang/String;)I

    move-result v10

    .line 439
    if-eqz v10, :cond_f

    .line 444
    .end local v7           #folder:Lcom/futuredial/ObexFileReadThread$FolderStructure;
    .end local v14           #subTargetFolder:Ljava/lang/String;
    :cond_10
    if-eqz v10, :cond_11

    .line 446
    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/ObexFileReadThread;->ThreadErrorCode:I

    .line 447
    const-string v19, "ObexFileReadThread"

    const-string v20, "fail in getting files "

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 452
    :cond_11
    const-string v19, "PC Suite"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/futuredial/ObexFileReadThread;->Obex_DisConnect(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/ObexFileReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/ObexFileReadThread$1;-><init>(Lcom/futuredial/ObexFileReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 137
    return-void
.end method

.method protected SetIsCompletedCLAN()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/futuredial/ObexFileReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/ObexFileReadThread$2;

    invoke-direct {v1, p0}, Lcom/futuredial/ObexFileReadThread$2;-><init>(Lcom/futuredial/ObexFileReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 158
    return-void
.end method
