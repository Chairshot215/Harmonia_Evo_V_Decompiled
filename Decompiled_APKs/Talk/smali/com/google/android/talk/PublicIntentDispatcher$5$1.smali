.class Lcom/google/android/talk/PublicIntentDispatcher$5$1;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher$5;->onContactInfoLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/PublicIntentDispatcher$5;

.field final synthetic val$toAvatarBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher$5;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->this$1:Lcom/google/android/talk/PublicIntentDispatcher$5;

    iput-object p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->val$toAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 7
    .parameter "ad"

    .prologue
    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, fromAvatarBitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    .line 399
    .local v0, avatarData:[B
    if-eqz v0, :cond_0

    .line 400
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 404
    .end local v0           #avatarData:[B
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->this$1:Lcom/google/android/talk/PublicIntentDispatcher$5;

    iget-object v3, v3, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    iget-object v4, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->this$1:Lcom/google/android/talk/PublicIntentDispatcher$5;

    iget-object v4, v4, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    #getter for: Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    invoke-static {v4}, Lcom/google/android/talk/PublicIntentDispatcher;->access$200(Lcom/google/android/talk/PublicIntentDispatcher;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->val$toAvatarBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/google/android/talk/PublicIntentDispatcher$5$1;->this$1:Lcom/google/android/talk/PublicIntentDispatcher$5;

    iget-object v6, v6, Lcom/google/android/talk/PublicIntentDispatcher$5;->val$confirmedCall:Ljava/lang/Runnable;

    #calls: Lcom/google/android/talk/PublicIntentDispatcher;->makeConfirmationDialog(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;
    invoke-static {v3, v4, v2, v5, v6}, Lcom/google/android/talk/PublicIntentDispatcher;->access$900(Lcom/google/android/talk/PublicIntentDispatcher;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 406
    .local v1, confirmDialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 407
    return-void
.end method
