.class public Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;
.super Ljava/lang/Object;
.source "AccessibilityServiceCompatUtils.java"


# static fields
.field private static final METHOD_getServiceInfo:Ljava/lang/reflect/Method;

.field private static final METHOD_performGlobalAction:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    const-class v0, Landroid/accessibilityservice/AccessibilityService;

    const-string v1, "performGlobalAction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 27
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->METHOD_performGlobalAction:Ljava/lang/reflect/Method;

    .line 30
    const-class v0, Landroid/accessibilityservice/AccessibilityService;

    const-string v1, "getServiceInfo"

    new-array v2, v4, [Ljava/lang/Class;

    .line 29
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->METHOD_getServiceInfo:Ljava/lang/reflect/Method;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceInfo(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3
    .parameter "service"

    .prologue
    .line 37
    const/4 v0, 0x0

    sget-object v1, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->METHOD_getServiceInfo:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public static performGlobalAction(Landroid/accessibilityservice/AccessibilityService;I)Z
    .locals 5
    .parameter "service"
    .parameter "action"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->METHOD_performGlobalAction:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
