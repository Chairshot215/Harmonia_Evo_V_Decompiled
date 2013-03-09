.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$3;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->showDialogNoConnection()Landroid/app/Dialog;
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
    .line 832
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$3;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$3;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onLaunchSettings_Wireless()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    .line 836
    return-void
.end method
