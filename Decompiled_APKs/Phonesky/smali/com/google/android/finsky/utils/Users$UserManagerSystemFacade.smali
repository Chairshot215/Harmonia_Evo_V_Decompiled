.class Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;
.super Lcom/google/android/finsky/utils/Users$UserManagerFacade;
.source "Users.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserManagerSystemFacade"
.end annotation


# instance fields
.field private mGetUsers:Ljava/lang/reflect/Method;

.field private mSupportsMultipleUsers:Ljava/lang/reflect/Method;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;-><init>(Lcom/google/android/finsky/utils/Users$1;)V

    .line 74
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 80
    const-string v2, "supportsMultipleUsers"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 83
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object v2, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    .line 88
    const-string v2, "getUsers"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 90
    const-class v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object v0, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    .line 94
    return-void
.end method


# virtual methods
.method public hasMultipleUsers()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 111
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, result:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 113
    .local v2, userList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-le v3, v4, :cond_0

    move v3, v4

    .line 118
    .end local v1           #result:Ljava/lang/Object;
    .end local v2           #userList:Ljava/util/List;,"Ljava/util/List<*>;"
    :goto_0
    return v3

    .restart local v1       #result:Ljava/lang/Object;
    .restart local v2       #userList:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_0
    move v3, v5

    .line 113
    goto :goto_0

    .line 116
    .end local v1           #result:Ljava/lang/Object;
    .end local v2           #userList:Ljava/util/List;,"Ljava/util/List<*>;"
    :catch_0
    move-exception v3

    :goto_1
    move v3, v5

    .line 118
    goto :goto_0

    .line 115
    :catch_1
    move-exception v3

    goto :goto_1

    .line 114
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public supportsMultipleUsers()Z
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, result:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v1

    .line 105
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    goto :goto_1

    .line 101
    :catch_2
    move-exception v1

    goto :goto_1
.end method
