.class Lcom/google/android/talk/videochat/VideoChatActivity$8;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->initToVanityResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v1, 0x7f1000af

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1605
    return-void
.end method
