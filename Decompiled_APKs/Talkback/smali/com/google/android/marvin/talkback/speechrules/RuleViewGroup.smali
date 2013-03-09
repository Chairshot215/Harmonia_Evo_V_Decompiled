.class public Lcom/google/android/marvin/talkback/speechrules/RuleViewGroup;
.super Ljava/lang/Object;
.source "RuleViewGroup.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 36
    .line 37
    const-class v0, Landroid/view/ViewGroup;

    .line 36
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 43
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getNodeText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    .local v0, nodeText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x2

    const-string v2, "Using node text: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .end local v0           #nodeText:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #nodeText:Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
