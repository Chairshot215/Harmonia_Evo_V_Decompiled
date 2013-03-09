.class Lcom/google/android/finsky/utils/PackageManagerUtils$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerUtils;->freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$2;->val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;

    .line 259
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$2;->val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;->onComplete(Z)V

    .line 263
    return-void
.end method
