.class public Lcom/googlecode/eyesfree/utils/NodeFocusFinder;
.super Ljava/lang/Object;
.source "NodeFocusFinder.java"


# static fields
.field public static final SEARCH_BACKWARD:I = -0x1

.field public static final SEARCH_FORWARD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .parameter "node"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->unOwned(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    move-result-object v0

    .line 37
    .local v0, ref:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    packed-switch p1, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 39
    :pswitch_1
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->nextInOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->release()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->previousInOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->release()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
