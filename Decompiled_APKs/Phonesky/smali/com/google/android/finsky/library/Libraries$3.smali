.class Lcom/google/android/finsky/library/Libraries$3;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$3;->this$0:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$3;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v0}, Lcom/google/android/finsky/library/Libraries;->access$300(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$3;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v0}, Lcom/google/android/finsky/library/Libraries;->access$300(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries$3;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;
    invoke-static {v1}, Lcom/google/android/finsky/library/Libraries;->access$400(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/Accounts;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/SQLiteLibrary;->resetKeepOnlyAccounts(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$3;->this$0:Lcom/google/android/finsky/library/Libraries;

    #getter for: Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v0}, Lcom/google/android/finsky/library/Libraries;->access$300(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    .line 214
    return-void
.end method
