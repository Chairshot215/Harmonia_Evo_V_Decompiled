.class public Lcom/htc/android/epst/translator/StatusCHTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "StatusCHTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StatusCHTranslator"


# instance fields
.field private mRawData:Lcom/htc/android/epst/dmcmd/DM_STATUS;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 15
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_STATUS;

    iput-object v0, p0, Lcom/htc/android/epst/translator/StatusCHTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_STATUS;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 20
    iget-object v3, p0, Lcom/htc/android/epst/translator/StatusCHTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_STATUS;

    invoke-virtual {v3}, Lcom/htc/android/epst/dmcmd/DM_STATUS;->getCurrentChan()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 24
    .local v1, nCH:I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 30
    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 35
    :goto_1
    return-object v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "StatusCHTranslator"

    const-string v4, "parseInt(nCH) error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 32
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "StatusCHTranslator"

    const-string v4, "String.valueOf(nCH)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 42
    return-void
.end method
