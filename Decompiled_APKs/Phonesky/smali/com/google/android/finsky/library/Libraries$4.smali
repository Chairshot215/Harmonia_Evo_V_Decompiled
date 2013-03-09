.class Lcom/google/android/finsky/library/Libraries$4;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Lcom/google/android/finsky/library/AccountLibrary$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->setupAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;

.field final synthetic val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$4;->this$0:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries$4;->val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryChange()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$4;->this$0:Lcom/google/android/finsky/library/Libraries;

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries$4;->val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    #calls: Lcom/google/android/finsky/library/Libraries;->notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/library/Libraries;->access$500(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V

    .line 232
    return-void
.end method
