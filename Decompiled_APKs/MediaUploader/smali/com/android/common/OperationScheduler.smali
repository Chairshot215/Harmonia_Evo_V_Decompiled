.class public Lcom/android/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/OperationScheduler$Options;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "OperationScheduler_"


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v0, p2

    .line 202
    :cond_0
    return-wide v0
.end method

.method public static parseOptions(Ljava/lang/String;Lcom/android/common/OperationScheduler$Options;)Lcom/android/common/OperationScheduler$Options;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 97
    const-string v0, " +"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string v4, "backoff="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    const/16 v4, 0x2b

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 101
    if-gez v4, :cond_1

    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    goto :goto_1

    .line 104
    :cond_1
    if-le v4, v7, :cond_2

    .line 105
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 107
    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    goto :goto_1

    .line 109
    :cond_3
    const-string v4, "max="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    goto :goto_1

    .line 111
    :cond_4
    const-string v4, "min="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    goto :goto_1

    .line 113
    :cond_5
    const-string v4, "period="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 116
    :cond_6
    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 119
    :cond_7
    return-object p1
.end method

.method private static parseSeconds(Ljava/lang/String;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAttemptTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTimeMillis()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide v9, 0x7fffffffffffffffL

    .line 136
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_enabledState"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    if-nez v0, :cond_0

    move-wide v0, v9

    .line 166
    :goto_0
    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_1

    move-wide v0, v9

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v1

    .line 148
    const-string v3, "OperationScheduler_lastSuccessTimeMillis"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v3

    .line 149
    const-string v5, "OperationScheduler_lastErrorTimeMillis"

    invoke-direct {p0, v5, v1, v2}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v5

    .line 150
    iget-object v7, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v8, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 151
    const-string v9, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-direct {p0, v9, v1, v2}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v1

    .line 152
    const-string v9, "OperationScheduler_moratoriumTimeMillis"

    iget-wide v10, p1, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    add-long/2addr v1, v10

    invoke-direct {p0, v9, v1, v2}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v1

    .line 156
    iget-wide v9, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 157
    iget-wide v9, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    add-long/2addr v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 160
    :cond_2
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 161
    iget-wide v7, p1, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    add-long/2addr v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 162
    if-lez v0, :cond_3

    .line 163
    iget-wide v3, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    int-to-long v7, v0

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v1

    goto :goto_0
.end method

.method public onPermanentError()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 271
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetPermanentError()V

    .line 272
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 241
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 242
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 249
    :goto_0
    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    :try_start_1
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 247
    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[OperationScheduler:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    const-string v3, "OperationScheduler_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    const-string v3, "TimeMillis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 328
    iget-object v4, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 329
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_1
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OperationScheduler_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
