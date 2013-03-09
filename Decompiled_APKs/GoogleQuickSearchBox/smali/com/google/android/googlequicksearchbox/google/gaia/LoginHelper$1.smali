.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    #calls: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->refresh()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$000(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V

    .line 93
    return-void
.end method
