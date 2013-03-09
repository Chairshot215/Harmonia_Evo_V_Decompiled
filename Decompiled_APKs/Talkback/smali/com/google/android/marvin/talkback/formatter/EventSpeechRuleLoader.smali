.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;
.super Ljava/lang/Object;
.source "EventSpeechRuleLoader.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;


# instance fields
.field private final mExternalSpeechStrategyDirectory:Ljava/io/File;

.field private final mFileObserver:Landroid/os/FileObserver;

.field private final mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;)V
    .locals 7
    .parameter "context"
    .parameter "speechRuleProcessor"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, packageName:Ljava/lang/String;
    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    .line 58
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/Android/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/speechstrategy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    iput-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    .line 61
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, speechStrategyDirectory:Ljava/lang/String;
    const/16 v0, 0x202

    .line 68
    .local v0, flags:I
    new-instance v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;

    const/16 v4, 0x202

    invoke-direct {v3, p0, v2, v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mFileObserver:Landroid/os/FileObserver;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->unloadExternalSpeechStrategy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->loadExternalSpeechStrategy(Ljava/lang/String;)V

    return-void
.end method

.method private createExternalSpeechRulesDirectory()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v3, 0x3

    const-string v4, "Created external speech rules directory: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 140
    iget-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    aput-object v7, v5, v6

    .line 139
    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, se:Ljava/lang/SecurityException;
    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const-string v3, "Could not create external speech rules directory.\n%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 143
    invoke-static {v2, v10, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    .end local v0           #se:Ljava/lang/SecurityException;
    :cond_1
    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const-string v3, "Could not create external speech rules directory: No external storage."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v10, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private hasExternalSpeechRulesDirectory()Z
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 163
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadExternalSpeechStrategies()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, speechStrategyPaths:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 175
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 178
    return-void

    .line 175
    :cond_0
    aget-object v0, v1, v2

    .line 176
    .local v0, speechStrategyPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->loadExternalSpeechStrategy(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadExternalSpeechStrategy(Ljava/lang/String;)V
    .locals 6
    .parameter "speechStrategyRelativePath"

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    .line 185
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    .line 184
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v0, speechStrategyFile:Ljava/io/File;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(Ljava/io/File;)V

    .line 189
    const-class v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v2, 0x4

    const-string v3, "Loaded external speech strategy: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 190
    aput-object p1, v4, v5

    .line 189
    invoke-static {v1, v2, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private unloadExternalSpeechStrategy(Ljava/lang/String;)V
    .locals 6
    .parameter "speechStrategyRelativePath"

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mExternalSpeechStrategyDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v0, speechStrategyFile:Ljava/io/File;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->removeSpeechStrategy(Ljava/io/File;)V

    .line 202
    const-class v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v2, 0x4

    const-string v3, "Removed external speech strategy: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 203
    aput-object p1, v4, v5

    .line 202
    invoke-static {v1, v2, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method


# virtual methods
.method public loadSpeechRules()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->hasExternalSpeechRulesDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->loadExternalSpeechStrategies()V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    .line 118
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    .line 119
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->createExternalSpeechRulesDirectory()V

    goto :goto_0

    .line 102
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1

    .line 104
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 105
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1

    .line 106
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    .line 107
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1

    .line 108
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    .line 109
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1

    .line 110
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 111
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1

    .line 112
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(I)V

    goto :goto_1
.end method

.method public onInfrastructureStateChange(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isInitialized"

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0
.end method
