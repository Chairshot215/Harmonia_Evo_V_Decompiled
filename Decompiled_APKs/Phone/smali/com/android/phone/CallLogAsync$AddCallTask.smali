.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 18
    .parameter "callList"

    .prologue
    .line 176
    move-object/from16 v0, p1

    array-length v12, v0

    .line 177
    .local v12, count:I
    new-array v0, v12, [Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 178
    .local v17, result:[Landroid/net/Uri;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v12, :cond_a

    .line 179
    aget-object v9, p1, v13

    .line 182
    .local v9, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    iget-object v1, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 183
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 184
    :cond_0
    move-object/from16 v16, v1

    .line 186
    .local v16, oldInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 189
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x63

    if-ne v2, v3, :cond_5

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-ne v2, v3, :cond_5

    const/4 v15, 0x1

    .line 193
    .local v15, marvelcMetroPCS:Z
    :goto_1
    sget-boolean v2, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-nez v2, :cond_1

    if-eqz v15, :cond_4

    .line 194
    :cond_1
    const/4 v10, 0x0

    .line 195
    .local v10, cityId:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 196
    const-string v2, "CITY_ID"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #cityId:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 199
    .restart local v10       #cityId:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 200
    const-string v2, "CITY_ID"

    invoke-virtual {v1, v2, v10}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_2
    if-eqz v1, :cond_8

    if-eqz v16, :cond_8

    .line 207
    const-string v2, "cname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 208
    .local v11, cname:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v16, :cond_3

    .line 209
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 210
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 215
    :cond_3
    :goto_3
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground() info.cnapName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldInfo.cnapName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v10           #cityId:Ljava/lang/String;
    .end local v11           #cname:Ljava/lang/String;
    .end local v15           #marvelcMetroPCS:Z
    .end local v16           #oldInfo:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    :goto_4
    :try_start_0
    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v4, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v5, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v6, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v8, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v1 .. v8}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v17, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 189
    .restart local v16       #oldInfo:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 202
    .restart local v10       #cityId:Ljava/lang/String;
    .restart local v15       #marvelcMetroPCS:Z
    :cond_6
    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/htc/util/phone/CityIdInfo;->addCityIdInfoInto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .restart local v11       #cname:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_3

    .line 216
    .end local v11           #cname:Ljava/lang/String;
    :cond_8
    if-nez v16, :cond_4

    .line 217
    const-string v3, "CallLogAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_9

    const-string v2, "info is null"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", oldInfo = null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.cnapName = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 228
    .end local v10           #cityId:Ljava/lang/String;
    .end local v15           #marvelcMetroPCS:Z
    .end local v16           #oldInfo:Lcom/android/internal/telephony/CallerInfo;
    :catch_0
    move-exception v14

    .line 229
    .local v14, ioexception:Ljava/lang/Exception;
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 233
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v14           #ioexception:Ljava/lang/Exception;
    :cond_a
    return-object v17
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 241
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 242
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 243
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
