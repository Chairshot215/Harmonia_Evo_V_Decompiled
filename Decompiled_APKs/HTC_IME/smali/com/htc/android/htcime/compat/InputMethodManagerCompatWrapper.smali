.class public Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"


# static fields
.field public static final FORCE_ENABLE_VOICE_EVEN_WITH_NO_VOICE_SUBTYPES:Z = false

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method; = null

.field private static final METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method; = null

.field private static final METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method; = null

.field private static final METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method; = null

.field private static final METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method; = null

#the value of this static final field might be set in the static constructor
.field public static final SUBTYPE_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLatinImePackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mService:Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const-class v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    .line 30
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getCurrentInputMethodSubtype"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    .line 32
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getEnabledInputMethodSubtypeList"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/view/inputmethod/InputMethodInfo;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    .line 35
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getShortcutInputMethodsAndSubtypes"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    .line 37
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "setInputMethodAndSubtype"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    .line 41
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "switchToLastInputMethod"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    .line 44
    new-instance v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-direct {v2}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;-><init>()V

    sput-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    .line 52
    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    iget-object v0, v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getInstance() is called before initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method private getLastResortSubtype(Ljava/lang/String;)Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    const-string v2, "voice"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    const/4 v6, 0x0

    .line 142
    .local v6, inputLocale:Ljava/util/Locale;
    if-eqz v6, :cond_0

    .line 144
    new-instance v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v2, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLatinImeInputMethodInfo()Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :cond_0
    return-object v1
.end method

.method public static init(Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 76
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    iput-object p0, v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mService:Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;

    .line 77
    sget-object v1, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 79
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    sget-object v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    return-void
.end method


# virtual methods
.method public getCurrentInputMethodSubtype()Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    .locals 5

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, o:Ljava/lang/Object;
    new-instance v1, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v1, v0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 212
    :cond_0
    return-object v2

    .line 208
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, imis:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;>;"
    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 210
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    new-instance v3, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    invoke-direct {v3, v1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEnabledInputMethodSubtypeList(Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;
    .locals 7
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    :goto_0
    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v2, v4, v5}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, retval:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 127
    :goto_1
    return-object v1

    .end local v0           #retval:Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    .line 106
    goto :goto_0

    .line 127
    .restart local v0       #retval:Ljava/lang/Object;
    :cond_2
    invoke-static {v0}, Lcom/htc/android/htcime/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 149
    iget-object v5, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v7, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, retval:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 184
    :cond_1
    :goto_0
    return-object v4

    .line 173
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, shortcutMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;>;"
    move-object v3, v2

    .line 175
    check-cast v3, Ljava/util/Map;

    .line 176
    .local v3, retvalMap:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, key:Ljava/lang/Object;
    instance-of v5, v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_3

    .line 178
    sget-object v5, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "Class type error."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 179
    goto :goto_0

    .line 181
    :cond_3
    new-instance v7, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    move-object v5, v1

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v7, v5}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 6
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 191
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInputMethodPicker()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

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
