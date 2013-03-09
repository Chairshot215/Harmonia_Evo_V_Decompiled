.class Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoUtils.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeActionFilter"
.end annotation


# instance fields
.field private final mAction:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput p1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;->mAction:I

    .line 827
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    .line 831
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    iget v1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;->mAction:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;->mAction:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
