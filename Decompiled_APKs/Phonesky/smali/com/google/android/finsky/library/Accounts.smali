.class public interface abstract Lcom/google/android/finsky/library/Accounts;
.super Ljava/lang/Object;
.source "Accounts.java"


# virtual methods
.method public abstract getAccount(Ljava/lang/String;)Landroid/accounts/Account;
.end method

.method public abstract getAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method
