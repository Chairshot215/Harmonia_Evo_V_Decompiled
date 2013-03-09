.class public Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityManagerCompatUtils;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatUtils.java"


# static fields
.field private static final CLASS_AccessibilityManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityManagerCompatUtils;->CLASS_AccessibilityManager:Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityManagerCompatUtils;->CLASS_AccessibilityManager:Ljava/lang/Class;

    const-string v1, "isTouchExplorationEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 27
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityManagerCompatUtils;->METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 3
    .parameter "receiver"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityManagerCompatUtils;->METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
