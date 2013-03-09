.class public Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;
.super Ljava/lang/Object;
.source "NodeSpeechRuleProcessor.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\n"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    .line 42
    iput-object p1, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->loadRules()V

    .line 45
    return-void
.end method

.method private static appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "text"
    .parameter "builder"

    .prologue
    .line 172
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 174
    return-void
.end method

.method private loadRules()V
    .locals 5

    .prologue
    const v4, 0x7f090041

    .line 94
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;

    const-class v2, Landroid/widget/Spinner;

    const v3, 0x7f09004b

    invoke-direct {v1, v2, v3}, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;

    const-class v2, Landroid/widget/RadioButton;

    const v3, 0x7f09004f

    invoke-direct {v1, v2, v3}, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;

    const-class v2, Landroid/widget/CompoundButton;

    const v3, 0x7f09004e

    invoke-direct {v1, v2, v3}, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;

    const-class v2, Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v4}, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;

    const-class v2, Landroid/widget/Button;

    invoke-direct {v1, v2, v4}, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleWebContent;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleWebContent;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleImageView;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleImageView;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleEditText;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleEditText;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleSeekBar;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleSeekBar;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleContainer;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleContainer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleViewGroup;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleViewGroup;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static processVerbose(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, populator:Ljava/lang/StringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const v2, 0x7f09005a

    .line 138
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    const v2, 0x7f09005e

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 154
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const v2, 0x7f09005d

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 161
    :cond_1
    return-object v1

    .line 140
    .end local v0           #action:Ljava/lang/CharSequence;
    :cond_2
    const v2, 0x7f09005b

    goto :goto_0

    .line 149
    .restart local v0       #action:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const v2, 0x7f09005c

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method private processWithRules(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "node"
    .parameter "event"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mRules:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 120
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;

    .line 121
    .local v0, rule:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, p1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v1, 0x2

    const-string v2, "Processing node using %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public process(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "node"
    .parameter "event"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->processWithRules(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .local v0, descriptionBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    const v3, 0x7f090057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->mContext:Landroid/content/Context;

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->appendTextToBuilder(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
