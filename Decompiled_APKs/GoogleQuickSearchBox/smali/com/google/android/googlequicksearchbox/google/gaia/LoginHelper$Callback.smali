.class abstract Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 288
    .local p0, this:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;,"Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    .local p0, this:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;,"Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback<TV;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;,"Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback<TV;>;"
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<TV;>;"
    const/4 v1, 0x0

    .line 292
    .local v1, result:Ljava/lang/Object;,"TV;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 298
    .end local v1           #result:Ljava/lang/Object;,"TV;"
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;->handleResult(Ljava/lang/Object;)V

    .line 299
    return-void

    .line 293
    .restart local v1       #result:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v0

    .line 294
    .local v0, ex:Landroid/accounts/AccountsException;
    const-string v2, "QSB.LoginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/accounts/AccountsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v0           #ex:Landroid/accounts/AccountsException;
    :catch_1
    move-exception v0

    .line 296
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "QSB.LoginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
