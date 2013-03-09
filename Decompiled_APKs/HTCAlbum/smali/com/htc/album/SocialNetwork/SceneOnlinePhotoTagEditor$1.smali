.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->showDialogServerNoRespone()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;Z)Z

    .line 798
    return-void
.end method
