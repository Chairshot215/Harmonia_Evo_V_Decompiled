.class public Lcom/google/android/gsf/checkin/CheckinResponseProcessor;
.super Ljava/lang/Object;
.source "CheckinResponseProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGservices(Lcom/google/common/io/protocol/ProtoBuf;)Landroid/content/ContentValues;
    .locals 8
    .parameter "response"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 39
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v1, gservices:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 41
    invoke-virtual {p0, v7, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 42
    .local v3, setting:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v3           #setting:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, digest:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 50
    const-string v4, "digest"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0           #digest:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x0

    .end local v1           #gservices:Landroid/content/ContentValues;
    :cond_2
    return-object v1
.end method

.method public static getIntents(Lcom/google/common/io/protocol/ProtoBuf;)[Landroid/content/Intent;
    .locals 13
    .parameter "response"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 64
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    new-array v4, v7, [Landroid/content/Intent;

    .line 65
    .local v4, intents:[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 66
    invoke-virtual {p0, v8, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 67
    .local v3, intentProto:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    aput-object v2, v4, v1

    .line 68
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_0
    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    :cond_1
    invoke-virtual {v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    invoke-virtual {v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_2
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 79
    invoke-virtual {v3, v11, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 80
    .local v0, extraProto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    const-string v6, ""

    .line 82
    .local v6, value:Ljava/lang/String;
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_3
    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    .end local v0           #extraProto:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intentProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v5           #j:I
    :cond_6
    return-object v4
.end method
