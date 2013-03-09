.class public Lcom/google/android/marvin/talkback/speechrules/RuleImageView;
.super Lcom/google/android/marvin/talkback/speechrules/RuleDefault;
.source "RuleImageView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

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
    const-class v0, Landroid/widget/ImageView;

    .line 36
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-class v0, Landroid/widget/ImageButton;

    .line 38
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 36
    goto :goto_0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 46
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    .line 47
    .local v1, isActionable:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 49
    .local v0, hasLabel:Z
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 52
    const-string v6, "TalkBack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unlabeled image in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->hashCode()I

    move-result v6

    rem-int/lit8 v2, v6, 0x64

    .line 54
    .local v2, nodeInt:I
    const v6, 0x7f090042

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .end local v2           #nodeInt:I
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-object v3

    .end local v0           #hasLabel:Z
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_1
    move v0, v5

    .line 47
    goto :goto_0

    .line 55
    .restart local v0       #hasLabel:Z
    :cond_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 57
    const v6, 0x7f09003e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
