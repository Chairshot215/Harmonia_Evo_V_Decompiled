.class Lcom/google/android/finsky/FinskyApp$2;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/finsky/library/Accounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$2;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1
    .parameter "name"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$2;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-static {p1, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$2;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-static {v0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
