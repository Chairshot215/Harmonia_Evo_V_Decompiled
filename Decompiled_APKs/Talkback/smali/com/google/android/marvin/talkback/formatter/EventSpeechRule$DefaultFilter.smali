.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;
.super Ljava/lang/Object;
.source "EventSpeechRule.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "node"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 756
    .local v3, properties:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 776
    return-void

    .line 757
    :cond_0
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 759
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 756
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_2
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$0(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 764
    .local v6, unqualifiedName:Ljava/lang/String;
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$1(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, textContent:Ljava/lang/String;
    new-instance v4, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    invoke-direct {v4, p2, v6, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .local v4, propertyMatcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPropertyMatchers:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$2(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v7, "packageName"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 773
    #setter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPackageName:Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$3(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private evaluatePropertyForEvent(Landroid/content/Context;Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z
    .locals 8
    .parameter "context"
    .parameter "matcher"
    .parameter "event"
    .parameter "record"

    .prologue
    const/4 v7, 0x0

    .line 793
    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyName:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->access$0(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, propertyName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyValue(Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;
    invoke-static {v5, p1, v3, p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$4(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;

    move-result-object v4

    .line 798
    .local v4, propertyValue:Ljava/lang/Object;
    const-string v5, "className"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 799
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 800
    .local v0, eventPackage:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPropertyMatchers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$2(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v5

    .line 801
    const-string v6, "packageName"

    .line 800
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    .line 804
    .local v2, packageNameMatcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    if-eqz v2, :cond_0

    .line 805
    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->getAcceptedValues()[Ljava/lang/Object;

    move-result-object v5

    aget-object v1, v5, v7

    check-cast v1, Ljava/lang/String;

    .line 810
    .local v1, filteringPackage:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p2, v4, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->accept(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    .line 813
    .end local v0           #eventPackage:Ljava/lang/CharSequence;
    .end local v1           #filteringPackage:Ljava/lang/String;
    .end local v2           #packageNameMatcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    :goto_1
    return v5

    .line 807
    .restart local v0       #eventPackage:Ljava/lang/CharSequence;
    .restart local v2       #packageNameMatcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #filteringPackage:Ljava/lang/String;
    goto :goto_0

    .line 813
    .end local v0           #eventPackage:Ljava/lang/CharSequence;
    .end local v1           #filteringPackage:Ljava/lang/String;
    .end local v2           #packageNameMatcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    :cond_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v4, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->accept(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Z
    .locals 4
    .parameter "event"
    .parameter "context"

    .prologue
    .line 780
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 782
    .local v1, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    #getter for: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPropertyMatchers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$2(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 788
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 782
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    .line 783
    .local v0, matcher:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->evaluatePropertyForEvent(Landroid/content/Context;Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    const/4 v2, 0x0

    goto :goto_0
.end method
