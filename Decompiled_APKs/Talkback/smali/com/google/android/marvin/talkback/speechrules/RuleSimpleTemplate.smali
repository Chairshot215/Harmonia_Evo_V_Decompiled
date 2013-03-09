.class Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;
.super Lcom/google/android/marvin/talkback/speechrules/RuleDefault;
.source "RuleSimpleTemplate.java"


# instance fields
.field private final mResId:I

.field private final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .parameter
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClassName:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClass:Ljava/lang/Class;

    .line 34
    iput p2, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mResId:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "targetClassName"
    .parameter "resId"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClassName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClass:Ljava/lang/Class;

    .line 40
    iput p2, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mResId:I

    .line 41
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClass:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mTargetClassName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByName(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    .local v0, text:Ljava/lang/CharSequence;
    iget v1, p0, Lcom/google/android/marvin/talkback/speechrules/RuleSimpleTemplate;->mResId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
