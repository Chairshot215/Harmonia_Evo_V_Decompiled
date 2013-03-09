.class Lcom/google/android/talk/PublicIntentDispatcher$5;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher;->getConfirmation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/PublicIntentDispatcher;

.field final synthetic val$confirmedCall:Ljava/lang/Runnable;

.field final synthetic val$query:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;Lcom/google/android/talk/ContactInfoQuery;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    iput-object p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    iput-object p3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->val$confirmedCall:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 5

    .prologue
    .line 379
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    #getter for: Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    invoke-static {v3}, Lcom/google/android/talk/PublicIntentDispatcher;->access$200(Lcom/google/android/talk/PublicIntentDispatcher;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 380
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v3}, Lcom/google/android/talk/ContactInfoQuery;->getCapabilities()I

    move-result v0

    .line 381
    .local v0, capabilities:I
    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    const/4 v4, 0x1

    #setter for: Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    invoke-static {v3, v4}, Lcom/google/android/talk/PublicIntentDispatcher;->access$202(Lcom/google/android/talk/PublicIntentDispatcher;I)I

    .line 391
    .end local v0           #capabilities:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v3}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 393
    .local v2, toAvatarBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/google/android/talk/PublicIntentDispatcher$5$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/PublicIntentDispatcher$5$1;-><init>(Lcom/google/android/talk/PublicIntentDispatcher$5;Landroid/graphics/Bitmap;)V

    .line 409
    .local v1, ready:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    #getter for: Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    invoke-static {v4}, Lcom/google/android/talk/PublicIntentDispatcher;->access$400(Lcom/google/android/talk/PublicIntentDispatcher;)Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/talk/TalkApp;->getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 411
    return-void

    .line 383
    .end local v1           #ready:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    .end local v2           #toAvatarBitmap:Landroid/graphics/Bitmap;
    .restart local v0       #capabilities:I
    :cond_1
    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    const/4 v4, 0x2

    #setter for: Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    invoke-static {v3, v4}, Lcom/google/android/talk/PublicIntentDispatcher;->access$202(Lcom/google/android/talk/PublicIntentDispatcher;I)I

    goto :goto_0

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$5;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    invoke-static {v3, v4}, Lcom/google/android/talk/PublicIntentDispatcher;->access$202(Lcom/google/android/talk/PublicIntentDispatcher;I)I

    goto :goto_0
.end method
