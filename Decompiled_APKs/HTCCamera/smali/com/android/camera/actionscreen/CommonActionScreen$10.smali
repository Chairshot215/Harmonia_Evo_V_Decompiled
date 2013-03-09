.class Lcom/android/camera/actionscreen/CommonActionScreen$10;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$10;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$10;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$10;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$10;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->deleteLatestMedia()V

    return-void
.end method
