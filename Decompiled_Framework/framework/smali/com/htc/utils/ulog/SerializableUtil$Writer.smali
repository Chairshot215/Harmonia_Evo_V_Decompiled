.class public final Lcom/htc/utils/ulog/SerializableUtil$Writer;
.super Ljava/lang/Object;
.source "SerializableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/SerializableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/io/DataOutputStream;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/utils/ulog/ULogData;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v1, v9

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-ne v1, v10, :cond_1

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v1, v9

    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-ne v1, v10, :cond_2

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {p0, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/htc/utils/ulog/ULogData$ULogItem;->getEntrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_5

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v1, v10

    goto :goto_1

    :cond_4
    move v1, v10

    goto :goto_2

    :cond_5
    const-string v11, ""

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v11, ""

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static writeEx(Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcom/htc/utils/ulog/SerializableUtil$Writer;->write(Ljava/io/DataOutputStream;Ljava/util/List;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
