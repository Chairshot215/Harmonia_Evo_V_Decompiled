.class public Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodInfoCompatWrapper.java"


# static fields
.field private static final METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

.field private static final METHOD_getSubtypeCount:Ljava/lang/reflect/Method;


# instance fields
.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeAt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

    .line 30
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeCount"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeCount:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 0
    .parameter "imi"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 68
    instance-of v0, p1, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    check-cast p1, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    .end local p1
    iget-object v1, p1, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubtypeAt(I)Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    .locals 7
    .parameter "index"

    .prologue
    .line 58
    new-instance v0, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    iget-object v1, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeCount:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
