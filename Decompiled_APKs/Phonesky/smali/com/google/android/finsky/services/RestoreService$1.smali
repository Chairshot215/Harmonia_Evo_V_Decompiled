.class Lcom/google/android/finsky/services/RestoreService$1;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoaded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$aid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$aid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    .line 389
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/RestoreService;->doRestore(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/services/RestoreService;->access$700(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method
