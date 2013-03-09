.class public final Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
.super Lcom/htc/android/htcime/compat/AbstractCompatWrapper;
.source "InputMethodSubtypeCompatWrapper.java"


# static fields
.field public static final CLASS_InputMethodSubtype:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en_US"

.field private static final DEFAULT_MODE:Ljava/lang/String; = "keyboard"

.field private static final METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

.field private static final METHOD_getDisplayName:Ljava/lang/reflect/Method;

.field private static final METHOD_getExtraValue:Ljava/lang/reflect/Method;

.field private static final METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

.field private static final METHOD_getIconResId:Ljava/lang/reflect/Method;

.field private static final METHOD_getLocale:Ljava/lang/reflect/Method;

.field private static final METHOD_getMode:Ljava/lang/reflect/Method;

.field private static final METHOD_getNameResId:Ljava/lang/reflect/Method;

.field private static final METHOD_isAuxiliary:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDummyExtraValues:Ljava/lang/String;

.field private final mDummyIconResId:I

.field private final mDummyLocale:Ljava/lang/String;

.field private final mDummyMode:Ljava/lang/String;

.field private final mDummyNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    const-class v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "android.view.inputmethod.InputMethodSubtype"

    invoke-static {v0}, Lcom/htc/android/htcime/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    .line 23
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getNameResId"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getNameResId:Ljava/lang/reflect/Method;

    .line 25
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getIconResId"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getIconResId:Ljava/lang/reflect/Method;

    .line 27
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getLocale"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getLocale:Ljava/lang/reflect/Method;

    .line 29
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getMode"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getMode:Ljava/lang/reflect/Method;

    .line 31
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getExtraValue"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValue:Ljava/lang/reflect/Method;

    .line 33
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "containsExtraValueKey"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

    .line 35
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getExtraValueOf"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

    .line 37
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "isAuxiliary"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_isAuxiliary:Ljava/lang/reflect/Method;

    .line 39
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getDisplayName"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getDisplayName:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nameResId"
    .parameter "iconResId"
    .parameter "locale"
    .parameter "mode"
    .parameter "extraValues"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/compat/AbstractCompatWrapper;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "CreateInputMethodSubtypeCompatWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput p1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 67
    iput p2, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 68
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 69
    if-eqz p4, :cond_1

    .end local p4
    :goto_1
    iput-object p4, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 70
    if-eqz p5, :cond_2

    .end local p5
    :goto_2
    iput-object p5, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 71
    return-void

    .line 68
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_0
    const-string p3, ""

    goto :goto_0

    .line 69
    .end local p3
    :cond_1
    const-string p4, ""

    goto :goto_1

    .line 70
    .end local p4
    :cond_2
    const-string p5, ""

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "subtype"

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/compat/AbstractCompatWrapper;-><init>(Ljava/lang/Object;)V

    .line 52
    iput v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 53
    iput v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 54
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 55
    const-string v0, "keyboard"

    iput-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 57
    return-void

    .line 50
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static hashCodeInternal(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "nameResId"
    .parameter "iconResId"
    .parameter "locale"
    .parameter "mode"
    .parameter "extraValue"

    .prologue
    .line 168
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 141
    instance-of v1, p1, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 143
    .local v0, subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 145
    iget v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    iget v2, v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    iget v2, v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 153
    .end local v0           #subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    :goto_0
    return v1

    .line 145
    .restart local v0       #subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 153
    .end local v0           #subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "appInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const-string v4, ""

    sget-object v5, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getDisplayName:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v1, v3

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, localeStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getNameResId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getNameResId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 128
    .local v2, subtypeName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValue:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getIconResId:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getLocale:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "en_US"

    goto :goto_0
.end method

.method public getMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getMode:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "keyboard"

    goto :goto_0
.end method

.method public getNameResId()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_getNameResId:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 160
    iget v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    iget v1, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    iget-object v2, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->hashCodeInternal(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAuxiliary()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->METHOD_isAuxiliary:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
