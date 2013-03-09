.class public Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;
.super Ljava/lang/Object;
.source "PackageManagerCompatUtils.java"


# static fields
.field public static final FEATURE_TELEPHONY:Ljava/lang/String;

.field public static final FEATURE_TOUCHSCREEN:Ljava/lang/String;

.field private static final FIELD_FEATURE_TELEPHONY:Ljava/lang/reflect/Field;

.field private static final FIELD_FEATURE_TOUCHSCREEN:Ljava/lang/reflect/Field;

.field private static final METHOD_hasSystemFeature:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "hasSystemFeature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 27
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->METHOD_hasSystemFeature:Ljava/lang/reflect/Method;

    .line 31
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "FEATURE_TELEPHONY"

    .line 30
    invoke-static {v0, v1}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FIELD_FEATURE_TELEPHONY:Ljava/lang/reflect/Field;

    .line 33
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "FEATURE_TOUCHSCREEN"

    .line 32
    invoke-static {v0, v1}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FIELD_FEATURE_TOUCHSCREEN:Ljava/lang/reflect/Field;

    .line 41
    sget-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FIELD_FEATURE_TELEPHONY:Ljava/lang/reflect/Field;

    .line 40
    invoke-static {v5, v5, v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FEATURE_TELEPHONY:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FIELD_FEATURE_TOUCHSCREEN:Ljava/lang/reflect/Field;

    .line 51
    invoke-static {v5, v5, v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FEATURE_TOUCHSCREEN:Ljava/lang/String;

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

.method public static hasSystemFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "receiver"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 74
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 70
    .restart local p2
    :cond_1
    sget-object v0, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->METHOD_hasSystemFeature:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->METHOD_hasSystemFeature:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 74
    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method
