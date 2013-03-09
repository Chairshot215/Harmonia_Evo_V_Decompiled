.class public Lcom/google/android/marvin/talkback/speechrules/RuleContainer;
.super Ljava/lang/Object;
.source "RuleContainer.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatWithChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "node"
    .parameter "childCount"

    .prologue
    .line 50
    .line 51
    const-class v1, Landroid/widget/GridView;

    .line 50
    invoke-static {p1, p2, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const v1, 0x7f090046

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, type:Ljava/lang/CharSequence;
    :goto_0
    const v1, 0x7f090045

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0           #type:Ljava/lang/CharSequence;
    :cond_0
    const-class v1, Landroid/widget/TabWidget;

    .line 53
    invoke-static {p1, p2, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const v1, 0x7f090048

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #type:Ljava/lang/CharSequence;
    goto :goto_0

    .line 57
    .end local v0           #type:Ljava/lang/CharSequence;
    :cond_1
    const v1, 0x7f090047

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #type:Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 34
    const-class v0, Landroid/widget/AbsListView;

    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-class v0, Landroid/widget/TabWidget;

    .line 35
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 34
    goto :goto_0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    .line 43
    .local v0, childCount:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/marvin/talkback/speechrules/RuleContainer;->formatWithChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
