.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onTagButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onClickTagButton()V

    .line 484
    return-void
.end method
