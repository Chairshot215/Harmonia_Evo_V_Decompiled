.class public Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CdmaGpsLatitudeTranslator.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 9
    const-string v0, "CdmaGpsLatitudeTranslator"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 13
    .parameter "itemId"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 12
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    .line 13
    .local v0, dmCmdCtrl:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    const/16 v8, 0xcd

    invoke-virtual {v0, v8}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;

    .line 14
    .local v4, structure:Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;
    const-wide/16 v5, 0x0

    .line 16
    .local v5, value:J
    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/dmcmd/DM_RX_INFO;->getLatitude()Ljava/lang/String;

    move-result-object v7

    .line 17
    .local v7, valueOfGpsLatitude:Ljava/lang/String;
    const-string v3, ""

    .line 18
    .local v3, plusOrMinux:Ljava/lang/String;
    const/16 v2, 0x8

    .line 19
    .local v2, latitudeLength:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_0

    .line 20
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 25
    :cond_0
    iget-object v8, p0, Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLatitude :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-le v2, v11, :cond_3

    .line 28
    iget-object v8, p0, Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "plusOrMinux ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v8, "2B"

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 31
    const-string v3, "+"

    .line 40
    :cond_1
    :goto_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 49
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 32
    :cond_2
    const-string v8, "2D"

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 33
    const-string v3, "-"

    goto :goto_0

    .line 35
    :cond_3
    iget-object v8, p0, Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v9, "not reveive plus Or Minux "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/android/fieldtrial/translator/CdmaGpsLatitudeTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v9, "parse Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 54
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 55
    return-void
.end method
