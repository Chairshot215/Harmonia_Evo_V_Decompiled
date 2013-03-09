.class public Lcom/android/settings/framework/debug/HtcDumper;
.super Ljava/lang/Object;
.source "HtcDumper.java"


# static fields
.field private static final DEFAULT_COLUMN_WIDTH:I = 0x14

.field private static final INDENT_SPACES:Ljava/lang/String; = "   "

.field private static final SEPARATE_DOUBLE_LINE:Ljava/lang/String; = "============================================================"

.field private static final SEPARATE_LINE:Ljava/lang/String; = "------------------------------------------------------------"

.field private static final TAG:Ljava/lang/String;

.field private static mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

.field private static mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

.field private static mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/debug/HtcDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 395
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    .line 398
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    sget-object v1, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;->dump(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public static dump(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "componentName"

    .prologue
    .line 352
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpComponentName;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpComponentName;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    .line 355
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    sget-object v1, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/framework/debug/HtcDumpComponentName;->dump(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static dump(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public static dump(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 309
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    .line 312
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;->dump(Landroid/content/res/Configuration;)V

    .line 313
    return-void
.end method

.method public static dump(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 440
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/database/Cursor;[I)V

    .line 441
    return-void
.end method

.method public static dump(Landroid/database/Cursor;[I)V
    .locals 1
    .parameter "cursor"
    .parameter "specificFieldWidths"

    .prologue
    .line 449
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/database/Cursor;[I)V

    .line 450
    return-void
.end method

.method public static dump(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    return-void
.end method

.method public static dump(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 238
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 2
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 408
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    .line 411
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;->dump(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"
    .parameter "indent"

    .prologue
    .line 423
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    .line 426
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpRunningServiceInfo:Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/framework/debug/HtcDumpRunningServiceInfo;->dump(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "tag"
    .parameter "componentName"

    .prologue
    .line 365
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpComponentName;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpComponentName;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    .line 368
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settings/framework/debug/HtcDumpComponentName;->dump(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "componentName"
    .parameter "indent"

    .prologue
    .line 380
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpComponentName;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpComponentName;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    .line 383
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpComponentName:Lcom/android/settings/framework/debug/HtcDumpComponentName;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/framework/debug/HtcDumpComponentName;->dump(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "Dump intent:"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "------------------------------------------------------------"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "   - The intent is null."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "------------------------------------------------------------"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/framework/debug/HtcDumper;->dumpProperties(Ljava/lang/String;Landroid/content/Intent;)V

    .line 76
    const-string v0, " "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "Extras: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "   - The extra of the intent is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    const-string v0, "------------------------------------------------------------"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static dump(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "tag"
    .parameter "config"

    .prologue
    .line 321
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    .line 324
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;->dump(Ljava/lang/String;Landroid/content/res/Configuration;)V

    .line 325
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "config"
    .parameter "intent"

    .prologue
    .line 335
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-direct {v0}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;-><init>()V

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    .line 338
    :cond_0
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->mHtcDumpConfiguration:Lcom/android/settings/framework/debug/HtcDumpConfiguration;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/framework/debug/HtcDumpConfiguration;->dump(Ljava/lang/String;Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6
    .parameter "tag"
    .parameter "cursor"

    .prologue
    .line 460
    if-nez p1, :cond_1

    .line 461
    const-string v4, "The cursor is null."

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    return-void

    .line 465
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 470
    .local v0, columnCount:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, line:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    const-string v3, ""

    .line 479
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 484
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 489
    :goto_3
    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_3

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Blob]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 493
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_4
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static dump(Ljava/lang/String;Landroid/database/Cursor;[I)V
    .locals 8
    .parameter "tag"
    .parameter "cursor"
    .parameter "specificFieldWidths"

    .prologue
    .line 506
    if-nez p1, :cond_1

    .line 507
    const-string v6, "The cursor is null."

    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    return-void

    .line 511
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 512
    .local v0, columnCount:I
    invoke-static {p2, v0}, Lcom/android/settings/framework/debug/HtcDumper;->getFieldWidths([II)[I

    move-result-object v2

    .line 517
    .local v2, fieldWidths:[I
    const-string v5, ""

    .line 518
    .local v5, line:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 524
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    .end local v4           #item:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 533
    const-string v5, ""

    .line 534
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 536
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 537
    .restart local v4       #item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 543
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 538
    .end local v4           #item:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 539
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "[Blob]"

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .restart local v4       #item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 545
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v4           #item:Ljava/lang/String;
    :cond_3
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static dump(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "tag"
    .parameter "uri"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 151
    const-string v0, "The uri is null."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAbsolute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHierarchical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOpaque: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRelative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedAuthority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedSchemeSpecificPart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedUserInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastPathSegment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathSegments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SchemeSpecificPart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static dump(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "tag"
    .parameter "bundle"

    .prologue
    .line 246
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private static dump(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .parameter "tag"
    .parameter "bundle"
    .parameter "indentSpaces"

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "The bundle is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, keyName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": (Bundle)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "============================================================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    check-cast v2, Landroid/os/Bundle;

    .end local v2           #value:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "============================================================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, " "

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    if-eqz v2, :cond_3

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static dumpProperties(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v1, "Categories: "

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_6
    return-void
.end method

.method private static getFieldWidths([II)[I
    .locals 6
    .parameter "specificFieldWidths"
    .parameter "columnCount"

    .prologue
    const/16 v5, 0x14

    .line 552
    new-array v0, p1, [I

    .line 555
    .local v0, fieldWidths:[I
    if-eqz p0, :cond_1

    array-length v3, p0

    if-gt v3, p1, :cond_1

    .line 558
    array-length v3, v0

    array-length v4, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 562
    .local v2, minLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 563
    aget v3, p0, v1

    aput v3, v0, v1

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_0
    :goto_1
    if-ge v1, p1, :cond_2

    .line 568
    aput v5, v0, v1

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    .end local v1           #i:I
    .end local v2           #minLength:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 575
    aput v5, v0, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    :cond_2
    return-object v0
.end method

.method private static paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "width"

    .prologue
    .line 608
    if-nez p0, :cond_0

    .line 609
    const/4 v3, 0x0

    .line 623
    :goto_0
    return-object v3

    .line 612
    :cond_0
    if-gez p1, :cond_1

    .line 613
    const-string v1, "The width must be equal to or greater than 0."

    .line 614
    .local v1, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v0, p1, v3

    .local v0, i:I
    :goto_1
    if-lez v0, :cond_2

    .line 620
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 619
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 623
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "width"

    .prologue
    .line 588
    if-nez p0, :cond_0

    .line 589
    const/4 v2, 0x0

    .line 598
    :goto_0
    return-object v2

    .line 592
    :cond_0
    if-gez p1, :cond_1

    .line 593
    const-string v1, "The width must be equal to or greater than 0."

    .line 594
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 598
    .local v0, minWidth:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
