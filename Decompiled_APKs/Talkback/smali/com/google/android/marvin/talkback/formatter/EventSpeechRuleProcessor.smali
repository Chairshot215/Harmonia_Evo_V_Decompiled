.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;
.super Ljava/lang/Object;
.source "EventSpeechRuleProcessor.java"


# static fields
.field private static final UNDEFINED_PACKAGE_NAME:Ljava/lang/String; = "undefined_package_name"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mPackageNameToSpeechRulesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private addSpeechRuleLocked(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Z
    .locals 3
    .parameter "speechRule"

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 236
    .local v1, packageSpeechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #packageSpeechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v1       #packageSpeechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private addSpeechStrategy(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "publicSourceDir"
    .parameter "targetPackage"
    .parameter "resourceId"

    .prologue
    .line 160
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, speechStrategy:Ljava/lang/String;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 164
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-direct {p0, v2, p2, p1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 165
    return-void
.end method

.method private addSpeechStrategy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 9
    .parameter "speechStrategy"
    .parameter "targetPackage"
    .parameter "publicSourceDir"
    .parameter "inputStream"

    .prologue
    .line 179
    invoke-direct {p0, p4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->parseSpeechStrategy(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 181
    .local v0, document:Lorg/w3c/dom/Document;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mContext:Landroid/content/Context;

    .line 180
    invoke-static {v3, p1, p2, p3, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->createSpeechRules(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/util/ArrayList;

    move-result-object v2

    .line 183
    .local v2, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 184
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v4, 0x4

    const-string v5, "%d speech rules appended from: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 189
    invoke-static {v3, v4, v5, v6}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    .line 185
    .local v1, speechRule:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechRuleLocked(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Z

    goto :goto_0

    .line 183
    .end local v1           #speechRule:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    return-object v0
.end method

.method private parseSpeechStrategy(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 8
    .parameter "inputStream"

    .prologue
    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 290
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 296
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-object v2

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Ljava/lang/Exception;
    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v3, 0x6

    .line 293
    const-string v4, "Could not open speechstrategy xml file\n%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 292
    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processEvent(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 10
    .parameter
    .parameter "event"
    .parameter "utterance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;",
            ">;",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Lcom/google/android/marvin/talkback/Utterance;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 274
    :cond_1
    :goto_1
    return v2

    .line 256
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    .line 260
    .local v1, speechRule:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
    :try_start_0
    invoke-virtual {v1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->apply(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    const/16 v6, 0x800

    if-eq v5, v6, :cond_1

    .line 262
    const-class v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v6, 0x2

    .line 263
    const-string v7, "Processed event using rule:\n%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 262
    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    const-class v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v6, 0x6

    .line 269
    const-string v7, "Error while processing rule:\n%s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v3

    .line 268
    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSpeechStrategy(Ljava/lang/String;)V
    .locals 8
    .parameter "speechStrategy"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, removedCount:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v3, 0x3

    const-string v4, "%d speech rules removed from: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 205
    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void

    .line 200
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 201
    .local v1, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    invoke-direct {p0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->removeStrategyFromPackage(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 199
    .end local v1           #speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private removeStrategyFromPackage(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .parameter "speechStrategy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    const/4 v0, 0x0

    .line 213
    .local v0, removedCount:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    .local v2, speechRulesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    return v0

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    .line 218
    .local v1, speechRule:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getSpeechStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addSpeechStrategy(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public addSpeechStrategy(Ljava/io/File;)V
    .locals 8
    .parameter "file"

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, speechStrategy:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->addSpeechStrategy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #inputStream:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/FileNotFoundException;
    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v4, 0x6

    .line 102
    const-string v5, "Error loading speech strategy: %s\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    .line 101
    invoke-static {v3, v4, v5, v6}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public processEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 5
    .parameter "event"
    .parameter "utterance"

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    .line 131
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 133
    .local v0, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->processEvent(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    monitor-exit v2

    .line 145
    :goto_0
    return v1

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->mPackageNameToSpeechRulesMap:Ljava/util/HashMap;

    const-string v4, "undefined_package_name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .restart local v0       #speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->processEvent(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    monitor-exit v2

    goto :goto_0

    .line 128
    .end local v0           #speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSpeechStrategy(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, speechStrategy:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->removeSpeechStrategy(Ljava/lang/String;)V

    .line 114
    return-void
.end method
