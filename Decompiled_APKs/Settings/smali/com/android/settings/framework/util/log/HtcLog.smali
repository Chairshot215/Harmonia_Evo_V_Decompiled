.class public Lcom/android/settings/framework/util/log/HtcLog;
.super Ljava/lang/Object;
.source "HtcLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/log/HtcLog$1;,
        Lcom/android/settings/framework/util/log/HtcLog$LogType;
    }
.end annotation


# static fields
.field public static final GLOBAL_TAG:Ljava/lang/String; = "Settings:"

.field public static final SUPPRESS_DEBUG_LOG:Z

.field public static final SUPPRESS_INFO_LOG:Z

.field public static final SUPPRESS_VERBOSE_LOG:Z

.field public static final SUPPRESS_WARN_LOG:Z

.field private static sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressVerboseLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    .line 49
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressDebugLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    .line 53
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressInfoLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    .line 57
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressWarnLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    .line 115
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 133
    if-nez p0, :cond_1

    .line 134
    const-string p0, "Settings:"

    .line 138
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 135
    .restart local p0
    :cond_1
    const-string v0, "Settings:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 319
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 330
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static log(C)V
    .locals 1
    .parameter "value"

    .prologue
    .line 382
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static log(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 423
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public static log(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 415
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static log(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 399
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public static log(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 407
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static log(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 606
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcContextDumper;->dump(Landroid/content/Context;)V

    .line 607
    return-void
.end method

.method public static log(Landroid/util/TypedValue;)V
    .locals 0
    .parameter "typedValue"

    .prologue
    .line 610
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Landroid/util/TypedValue;)V

    .line 611
    return-void
.end method

.method public static log(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 618
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 619
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static log(Ljava/lang/String;C)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 452
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static log(Ljava/lang/String;D)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 498
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public static log(Ljava/lang/String;F)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 489
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 471
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public static log(Ljava/lang/String;J)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 480
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/util/TypedValue;)V
    .locals 0
    .parameter "tag"
    .parameter "typedValue"

    .prologue
    .line 614
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Ljava/lang/String;Landroid/util/TypedValue;)V

    .line 615
    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "tag"
    .parameter "header"

    .prologue
    .line 622
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 623
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "string"

    .prologue
    .line 507
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 509
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$1;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 511
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_0

    .line 512
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 516
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_0

    .line 520
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_0

    .line 524
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :pswitch_4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :pswitch_5
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "string"
    .parameter "e"

    .prologue
    .line 542
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 544
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$1;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 546
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_0

    .line 547
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 550
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 551
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 554
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_0

    .line 555
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 558
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_0

    .line 559
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 562
    :pswitch_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 565
    :pswitch_5
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 442
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public static log(Ljava/lang/String;[C)V
    .locals 1
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 462
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public static log(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 373
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static log([C)V
    .locals 1
    .parameter "data"

    .prologue
    .line 391
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public static logCallStack()V
    .locals 5

    .prologue
    .line 590
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 591
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 593
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "pid/tid: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 596
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 597
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 598
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public static logPidTid()V
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t pid/tid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static logTimestamp()V
    .locals 3

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public static setLogType(Lcom/android/settings/framework/util/log/HtcLog$LogType;)V
    .locals 0
    .parameter "logType"

    .prologue
    .line 122
    if-eqz p0, :cond_0

    .line 123
    sput-object p0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 125
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 180
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 349
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 360
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
