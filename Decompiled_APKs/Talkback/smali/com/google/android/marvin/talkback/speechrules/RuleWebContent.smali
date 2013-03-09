.class public Lcom/google/android/marvin/talkback/speechrules/RuleWebContent;
.super Lcom/google/android/marvin/talkback/speechrules/RuleDefault;
.source "RuleWebContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 45
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 47
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    const v2, 0x7f090067

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    return-object v0
.end method
