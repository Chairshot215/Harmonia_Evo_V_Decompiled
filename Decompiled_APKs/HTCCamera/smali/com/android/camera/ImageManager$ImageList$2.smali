.class Lcom/android/camera/ImageManager$ImageList$2;
.super Landroid/database/DataSetObserver;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$ImageList;

.field final synthetic val$this$0:Lcom/android/camera/ImageManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList$2;->this$1:Lcom/android/camera/ImageManager$ImageList;

    iput-object p2, p0, Lcom/android/camera/ImageManager$ImageList$2;->val$this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const-string v0, "ImageManager"

    const-string v1, "MyDataSetObserver.onChanged"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 3

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyDataSetObserver.onInvalidated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageList$2;->this$1:Lcom/android/camera/ImageManager$ImageList;

    iget-boolean v2, v2, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
