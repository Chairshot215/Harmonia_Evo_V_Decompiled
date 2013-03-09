.class Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$2;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoUtils.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 787
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->access$0()Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
