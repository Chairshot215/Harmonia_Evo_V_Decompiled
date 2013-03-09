.class public Lcom/htc/reportagent/policy/PolicyConverter;
.super Ljava/lang/Object;
.source "PolicyConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/reportagent/policy/PolicyConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/PolicyConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getFromHandsetPolicyItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "policy"
    .parameter "appId"
    .parameter "category"
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    .line 141
    if-nez p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v9

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItemCount()I

    move-result v0

    .line 143
    .local v0, appCount:I
    if-eqz v0, :cond_0

    .line 145
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 146
    invoke-virtual {p0, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v1

    .line 147
    .local v1, appItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 145
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItemCount()I

    move-result v2

    .line 150
    .local v2, categoryCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v7, v2, :cond_2

    .line 151
    invoke-virtual {v1, v7}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v3

    .line 152
    .local v3, categoryItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 150
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getItemCount()I

    move-result v6

    .line 155
    .local v6, itemCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_3
    if-ge v8, v6, :cond_4

    .line 156
    invoke-virtual {v3, v8}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getItem(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v5

    .line 157
    .local v5, item:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 158
    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 155
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static _handsetPolicyItem2AckBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    .locals 3
    .parameter "policy"
    .parameter "result"

    .prologue
    .line 110
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getMgmtGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setMgmtGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getPolicyGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setPolicyGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v2

    if-eqz p1, :cond_1

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->POLICY_DONE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    .line 117
    .local v0, ackBuilder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    goto :goto_0

    .line 112
    .end local v0           #ackBuilder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    :cond_1
    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->POLICY_FAILED:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    goto :goto_1
.end method

.method private static _handsetPolicyItem2Bundle(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .parameter "policy"
    .parameter "bundle"

    .prologue
    .line 51
    if-nez p0, :cond_1

    const/16 p1, 0x0

    .line 81
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 52
    .restart local p1
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItemCount()I

    move-result v8

    .line 54
    .local v8, appCount:I
    if-nez v8, :cond_2

    const/16 p1, 0x0

    goto :goto_0

    .line 55
    :cond_2
    const-wide/16 v6, -0x1

    .line 56
    .local v6, endTime:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v8, :cond_0

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v9

    .line 58
    .local v9, appItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-virtual {v9}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, appId:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {v9}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getEndTime()J

    move-result-wide v6

    .line 65
    :goto_2
    invoke-virtual {v9}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItemCount()I

    move-result v10

    .line 67
    .local v10, categoryCount:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_3
    if-ge v15, v10, :cond_5

    .line 68
    invoke-virtual {v9, v15}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v11

    .line 69
    .local v11, categoryItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    invoke-virtual {v11}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getItemCount()I

    move-result v14

    .line 72
    .local v14, itemCount:I
    const/16 v16, 0x0

    .local v16, k:I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    .line 73
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->getItem(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v13

    .line 74
    .local v13, item:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-virtual {v13}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, value:Ljava/lang/String;
    move-object/from16 v1, p1

    .line 76
    invoke-static/range {v1 .. v7}, Lcom/htc/utils/ulog/Util;->putPolicy(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 62
    .end local v3           #category:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v10           #categoryCount:I
    .end local v11           #categoryItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    .end local v13           #item:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .end local v14           #itemCount:I
    .end local v15           #j:I
    .end local v16           #k:I
    :cond_3
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 67
    .restart local v3       #category:Ljava/lang/String;
    .restart local v10       #categoryCount:I
    .restart local v11       #categoryItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    .restart local v14       #itemCount:I
    .restart local v15       #j:I
    .restart local v16       #k:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 56
    .end local v3           #category:Ljava/lang/String;
    .end local v11           #categoryItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    .end local v14           #itemCount:I
    .end local v16           #k:I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public static getFromHandsetPolicyItems(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "appId"
    .parameter "category"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, policies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;>;"
    const/4 v4, 0x0

    .line 123
    if-nez p0, :cond_1

    move-object v2, v4

    .line 136
    :cond_0
    :goto_0
    return-object v2

    .line 124
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 125
    .local v0, count:I
    if-nez v0, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 127
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v2, v4

    goto :goto_0

    .line 128
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move-object v2, v4

    goto :goto_0

    .line 129
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move-object v2, v4

    goto :goto_0

    .line 131
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_a

    .line 132
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    invoke-static {v3, p1, p2, p3}, Lcom/htc/reportagent/policy/PolicyConverter;->_getFromHandsetPolicyItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 131
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #value:Ljava/lang/String;
    :cond_a
    move-object v2, v4

    .line 136
    goto :goto_0
.end method

.method public static handsetPolicyItem2Ack(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 2
    .parameter "policy"
    .parameter "result"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/htc/reportagent/policy/PolicyConverter;->_handsetPolicyItem2AckBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    .line 103
    .local v0, ackBuilder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v1

    goto :goto_0
.end method

.method public static handsetPolicyItem2Acks(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, policies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;>;"
    const/4 v2, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 95
    :cond_0
    return-object v2

    .line 87
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 90
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 91
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    .line 93
    .local v3, policy:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v3, p1}, Lcom/htc/reportagent/policy/PolicyConverter;->handsetPolicyItem2Ack(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static handsetPolicyItem2Bundle(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Landroid/os/Bundle;
    .locals 2
    .parameter "policy"

    .prologue
    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v1}, Lcom/htc/reportagent/policy/PolicyConverter;->_handsetPolicyItem2Bundle(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-object v0
.end method

.method public static handsetPolicyItem2Bundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p0, policies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;>;"
    const/4 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    move-object v0, v4

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 38
    .local v1, count:I
    if-nez v1, :cond_2

    move-object v0, v4

    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    invoke-static {v3, v0}, Lcom/htc/reportagent/policy/PolicyConverter;->_handsetPolicyItem2Bundle(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v4

    goto :goto_0
.end method
