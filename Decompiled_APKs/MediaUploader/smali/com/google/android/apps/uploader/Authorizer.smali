.class public interface abstract Lcom/google/android/apps/uploader/Authorizer;
.super Ljava/lang/Object;
.source "Authorizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;,
        Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    }
.end annotation


# virtual methods
.method public abstract addAccount(Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchAccounts(Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchAuthToken(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAuthToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
