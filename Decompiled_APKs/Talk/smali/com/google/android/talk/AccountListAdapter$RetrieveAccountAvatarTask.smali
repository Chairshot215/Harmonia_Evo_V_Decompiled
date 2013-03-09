.class Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;
.super Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrieveAccountAvatarTask"
.end annotation


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field final synthetic this$0:Lcom/google/android/talk/AccountListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountListAdapter;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$AccountInfo;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "accountInfo"
    .parameter "onLoaded"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->this$0:Lcom/google/android/talk/AccountListAdapter;

    .line 264
    invoke-direct {p0, p2, p4}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;-><init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V

    .line 266
    iput-object p3, p0, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 267
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 5
    .parameter "avatarData"

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 273
    iget-object v2, p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->this$0:Lcom/google/android/talk/AccountListAdapter;

    #getter for: Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/AccountListAdapter;->access$400(Lcom/google/android/talk/AccountListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->this$0:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v2}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 283
    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v1           #b:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 258
    check-cast p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    return-void
.end method
