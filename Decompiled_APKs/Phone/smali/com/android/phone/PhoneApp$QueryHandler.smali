.class final Lcom/android/phone/PhoneApp$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 5070
    iput-object p1, p0, Lcom/android/phone/PhoneApp$QueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 5071
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 5072
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 5077
    const/16 v11, 0x258

    if-ne p1, v11, :cond_5

    .line 5079
    if-eqz p3, :cond_3

    .line 5081
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 5083
    .local v2, count:I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5085
    .local v6, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/PhoneApp$ContactInfo;>;"
    if-lez v2, :cond_4

    .line 5087
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5089
    const/4 v7, 0x0

    .line 5090
    .local v7, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5091
    .local v9, ringtonePath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5094
    .local v10, sendToVoicemail:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 5095
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5096
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5097
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v10, 0x1

    .line 5099
    :goto_1
    new-instance v1, Lcom/android/phone/PhoneApp$ContactInfo;

    iget-object v11, p0, Lcom/android/phone/PhoneApp$QueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {v1, v11, v7, v9, v10}, Lcom/android/phone/PhoneApp$ContactInfo;-><init>(Lcom/android/phone/PhoneApp;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5101
    .local v1, contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    if-eqz v7, :cond_0

    .line 5102
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5104
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 5106
    .local v5, length:I
    const/4 v11, 0x7

    if-ge v5, v11, :cond_2

    .line 5107
    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5115
    .end local v5           #length:I
    :cond_0
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 5094
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5097
    .end local v1           #contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 5109
    .restart local v1       #contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    .restart local v5       #length:I
    :cond_2
    add-int/lit8 v11, v5, -0x7

    invoke-virtual {v7, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5111
    .local v8, partialNumber:Ljava/lang/String;
    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5123
    .end local v1           #contactInfo:Lcom/android/phone/PhoneApp$ContactInfo;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v6           #newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/PhoneApp$ContactInfo;>;"
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #partialNumber:Ljava/lang/String;
    .end local v9           #ringtonePath:Ljava/lang/String;
    .end local v10           #sendToVoicemail:Z
    :catch_0
    move-exception v3

    .line 5124
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v11, "PhoneApp"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5126
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 5156
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 5119
    .restart local v2       #count:I
    .restart local v6       #newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/PhoneApp$ContactInfo;>;"
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/phone/PhoneApp$QueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v12, v11, Lcom/android/phone/PhoneApp;->mContactInfoLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5120
    :try_start_3
    iget-object v11, p0, Lcom/android/phone/PhoneApp$QueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    iput-object v6, v11, Lcom/android/phone/PhoneApp;->mContactInfoList:Ljava/util/HashMap;

    .line 5121
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5126
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 5121
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5126
    .end local v2           #count:I
    .end local v6           #newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/PhoneApp$ContactInfo;>;"
    :catchall_1
    move-exception v11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v11

    .line 5131
    :cond_5
    if-eqz p3, :cond_3

    .line 5132
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_a

    .line 5133
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 5134
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onQueryComplete cursor count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5138
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5139
    .restart local v7       #number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "-1"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "-2"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 5142
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 5146
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 5147
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onQueryComplete number "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    :cond_9
    iget-object v11, p0, Lcom/android/phone/PhoneApp$QueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->callNumber(Ljava/lang/String;)V
    invoke-static {v11, v7}, Lcom/android/phone/PhoneApp;->access$6000(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V

    .line 5153
    .end local v7           #number:Ljava/lang/String;
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method
