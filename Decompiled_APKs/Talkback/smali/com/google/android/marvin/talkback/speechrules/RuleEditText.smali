.class Lcom/google/android/marvin/talkback/speechrules/RuleEditText;
.super Ljava/lang/Object;
.source "RuleEditText.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRule;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getText(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "node"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 57
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/googlecode/eyesfree/compat/provider/SettingsCompatUtils$SecureCompatUtils;->shouldSpeakPasswords(Landroid/content/Context;)Z

    move-result v1

    .line 59
    .local v1, shouldSpeakPasswords:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    .line 73
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v2

    .line 63
    .restart local v2       #text:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, contentDescription:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v0

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 70
    const v3, 0x7f090050

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 36
    .line 37
    const-class v0, Landroid/widget/EditText;

    .line 36
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/speechrules/RuleEditText;->getText(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, text:Ljava/lang/CharSequence;
    const v1, 0x7f090039

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
