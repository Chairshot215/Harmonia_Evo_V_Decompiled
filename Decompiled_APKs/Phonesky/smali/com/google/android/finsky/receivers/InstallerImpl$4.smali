.class Lcom/google/android/finsky/receivers/InstallerImpl$4;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->kickMultiUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

.field final synthetic val$hintPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$4;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$4;->val$hintPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$4;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$4;->val$hintPackage:Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    .line 935
    return-void
.end method
