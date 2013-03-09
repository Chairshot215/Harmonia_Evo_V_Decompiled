.class Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TouchExplorationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$1;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    .line 344
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .parameter "host"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$1;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    return-object v0
.end method
