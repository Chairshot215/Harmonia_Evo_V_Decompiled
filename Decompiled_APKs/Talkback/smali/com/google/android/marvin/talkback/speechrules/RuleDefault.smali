.class Lcom/google/android/marvin/talkback/speechrules/RuleDefault;
.super Ljava/lang/Object;
.source "RuleDefault.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 40
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getNodeText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    .local v0, nodeText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    .end local v0           #nodeText:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #nodeText:Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
