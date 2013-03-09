.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;
.super Ljava/lang/Object;
.source "EventSpeechRule.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultFormatter"
.end annotation


# static fields
.field private static final NODE_NAME_PROPERTY:Ljava/lang/String; = "property"

.field private static final NODE_NAME_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private final mSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTemplate:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter
    .parameter "node"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mSelectors:Ljava/util/List;

    .line 908
    const/4 v4, 0x0

    .line 910
    .local v4, template:Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 911
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 932
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mTemplate:Ljava/lang/String;

    .line 933
    return-void

    .line 912
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 914
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 911
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 918
    :cond_1
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$0(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, unqualifiedName:Ljava/lang/String;
    const-string v6, "template"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 922
    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$5(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getLocalizedTextContent(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$6(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 923
    :cond_2
    const-string v6, "property"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 924
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mSelectors:Ljava/util/List;

    new-instance v7, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;

    .line 925
    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$5(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;

    move-result-object v8

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getLocalizedTextContent(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$6(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 924
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 927
    :cond_3
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mSelectors:Ljava/util/List;

    .line 928
    new-instance v7, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$1(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private formatTemplateOrAppendSpaceSeparatedValueIfNoTemplate(Lcom/google/android/marvin/talkback/Utterance;[Ljava/lang/Object;)V
    .locals 10
    .parameter "utterance"
    .parameter "arguments"

    .prologue
    const/4 v4, 0x0

    .line 983
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 985
    .local v3, utteranceText:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mTemplate:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 987
    :try_start_0
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mTemplate:Ljava/lang/String;

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, formatted:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v1           #formatted:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v2

    .line 990
    .local v2, mfae:Ljava/util/MissingFormatArgumentException;
    const-class v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;

    const/4 v6, 0x6

    const-string v7, "Speech rule: \'%d\' has inconsistency between template: \'%s\' and arguments: \'%s\'. Possibliy #template arguments does not match #parameters. %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 993
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mRuleIndex:I
    invoke-static {v9}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$9(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mTemplate:Ljava/lang/String;

    aput-object v9, v8, v4

    const/4 v4, 0x2

    aput-object p2, v8, v4

    const/4 v4, 0x3

    invoke-virtual {v2}, Ljava/util/MissingFormatArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 990
    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 996
    .end local v2           #mfae:Ljava/util/MissingFormatArgumentException;
    :cond_1
    array-length v5, p2

    :goto_1
    if-lt v4, v5, :cond_2

    .line 1000
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1001
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 996
    :cond_2
    aget-object v0, p2, v4

    .line 997
    .local v0, arg:Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 998
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 14
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 937
    iget-object v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->mSelectors:Ljava/util/List;

    .line 938
    .local v8, selectors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v1, v11, [Ljava/lang/Object;

    .line 939
    .local v1, arguments:[Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 941
    .local v10, utteranceBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 955
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mEarcons:Ljava/util/List;
    invoke-static {v12}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$7(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 956
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mVibrationPatterns:Ljava/util/List;
    invoke-static {v12}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$8(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->formatTemplateOrAppendSpaceSeparatedValueIfNoTemplate(Lcom/google/android/marvin/talkback/Utterance;[Ljava/lang/Object;)V

    .line 961
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 962
    iget-object v11, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$5(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090059

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 964
    .local v9, state:Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .end local v9           #state:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    return v11

    .line 942
    :cond_1
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;

    .line 943
    .local v5, selector:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;,"Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 944
    .local v6, selectorType:Ljava/lang/String;
    iget-object v7, v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 946
    .local v7, selectorValue:Ljava/lang/String;
    const-string v11, "property"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 947
    iget-object v11, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    move-object/from16 v0, p2

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyValue(Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;
    invoke-static {v11, v0, v7, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$4(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;

    move-result-object v4

    .line 948
    .local v4, propertyValue:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .end local v4           #propertyValue:Ljava/lang/Object;
    :goto_1
    aput-object v4, v1, v3

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 948
    .restart local v4       #propertyValue:Ljava/lang/Object;
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 950
    .end local v4           #propertyValue:Ljava/lang/Object;
    :cond_3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "Unknown selector type: ["

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 951
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 950
    invoke-direct {v12, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method
