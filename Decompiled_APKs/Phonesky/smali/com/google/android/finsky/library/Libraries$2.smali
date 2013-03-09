.class Lcom/google/android/finsky/library/Libraries$2;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accountsHash:I

.field final synthetic val$librariesToLoad:Ljava/util/List;

.field final synthetic val$loadedLibrariesCount:[I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;[ILjava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$2;->this$0:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/library/Libraries$2;->val$loadedLibrariesCount:[I

    iput-object p4, p0, Lcom/google/android/finsky/library/Libraries$2;->val$librariesToLoad:Ljava/util/List;

    iput p5, p0, Lcom/google/android/finsky/library/Libraries$2;->val$accountsHash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    const-string v0, "Loaded library for account: %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$2;->val$loadedLibrariesCount:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$2;->val$loadedLibrariesCount:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries$2;->val$librariesToLoad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 192
    const-string v0, "Finished loading %d libraries."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries$2;->val$librariesToLoad:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$2;->this$0:Lcom/google/android/finsky/library/Libraries;

    #calls: Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/library/Libraries;->access$000(Lcom/google/android/finsky/library/Libraries;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$2;->this$0:Lcom/google/android/finsky/library/Libraries;

    #calls: Lcom/google/android/finsky/library/Libraries;->runAndClearLoadingCallbacks()V
    invoke-static {v0}, Lcom/google/android/finsky/library/Libraries;->access$100(Lcom/google/android/finsky/library/Libraries;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$2;->this$0:Lcom/google/android/finsky/library/Libraries;

    iget v1, p0, Lcom/google/android/finsky/library/Libraries$2;->val$accountsHash:I

    #setter for: Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/library/Libraries;->access$202(Lcom/google/android/finsky/library/Libraries;I)I

    .line 197
    :cond_0
    return-void
.end method
