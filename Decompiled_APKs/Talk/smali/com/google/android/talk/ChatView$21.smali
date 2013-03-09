.class Lcom/google/android/talk/ChatView$21;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->getSelfAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;

.field final synthetic val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3804
    iput-object p1, p0, Lcom/google/android/talk/ChatView$21;->this$0:Lcom/google/android/talk/ChatView;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$21;->val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 5
    .parameter "ad"

    .prologue
    .line 3807
    iget-object v0, p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    .line 3808
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 3811
    iget-object v1, p0, Lcom/google/android/talk/ChatView$21;->val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-object v3, p0, Lcom/google/android/talk/ChatView$21;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mAccountId:J
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$7000(Lcom/google/android/talk/ChatView;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 3812
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] getSelfAvatar runnable called and the account has changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_0
    :goto_0
    return-void

    .line 3816
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$21;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #setter for: Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$5602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3818
    iget-object v1, p0, Lcom/google/android/talk/ChatView$21;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->requestLayout()V

    goto :goto_0
.end method
