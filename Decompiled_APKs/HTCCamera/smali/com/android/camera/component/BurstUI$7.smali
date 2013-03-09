.class Lcom/android/camera/component/BurstUI$7;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    move-object v2, p1

    check-cast v2, Lcom/android/camera/QueryEvent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-direct {v1}, Lcom/android/camera/MediaInfo;-><init>()V

    iget-object v3, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    const-string v3, "image/jpeg"

    iput-object v3, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/android/camera/QueryEvent;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
