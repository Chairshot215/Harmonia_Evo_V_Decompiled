.class public abstract Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "BaseContactDetailLayerTabActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactDetailLayerObserver;


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseContactDetailLayerTabActivity"


# instance fields
.field private mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsDirty:Z

.field private mIsMyContactType:Z

.field private mIsParentObserverRegistered:Z

.field private mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

.field private mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 55
    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    .line 56
    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    .line 57
    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUri:Landroid/net/Uri;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsParentObserverRegistered:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsMyContactType:Z

    .line 62
    new-instance v0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity$1;-><init>(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    return-object v0
.end method


# virtual methods
.method protected doUpdateContactInfo()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->registerContactChangeNotification()V

    .line 116
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getContactUri()Landroid/net/Uri;

    .line 117
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsDirty:Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    goto :goto_0
.end method

.method protected getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 247
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getDetailInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUri:Landroid/net/Uri;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, ""

    return-object v0
.end method

.method protected getUnknownContactInfo()Lcom/android/htccontacts/HtcContactInfoUnknown;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 262
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getDetailInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfoUnknown;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mUnknownContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    return-object v0

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected isMyContactType()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsMyContactType:Z

    return v0
.end method

.method protected onContactChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "infoReadyType"

    .prologue
    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_MY_CONTACT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsMyContactType:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getCarouselActivity()Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->registerContactDetailLayerObserver(Lcom/android/htccontacts/util/BaseDetailLayerObserver;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->registerContactChangeNotification()V

    .line 152
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 176
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->unregisterContactChangeNotification()V

    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->unregisterContactDetailLayerObserver(Lcom/android/htccontacts/util/BaseDetailLayerObserver;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->registerContactChangeNotification()V

    .line 140
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->doUpdateContactInfo()V

    .line 141
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 157
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getCachedInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    .line 160
    .local v0, cachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->preloadTitleData(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;)V

    .line 164
    .end local v0           #cachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->registerContactChangeNotification()V

    .line 170
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->doUpdateContactInfo()V

    .line 171
    return-void
.end method

.method public preloadTitleData(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;)V
    .locals 11
    .parameter "cachedData"

    .prologue
    const/4 v9, 0x0

    .line 185
    iget-wide v0, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->thumbnailId:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 188
    .local v6, RawPhoto:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 189
    .local v7, isSim:Z
    const-string v0, "com.anddroid.contacts.sim"

    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v7, 0x1

    .line 193
    :cond_0
    const/4 v10, 0x0

    .line 194
    .local v10, isLinked:Z
    iget-object v0, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const/4 v0, -0x1

    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 196
    const/4 v10, 0x1

    .line 200
    :cond_1
    iget-object v0, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->accountType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, contactTypeLabel:Ljava/lang/String;
    iget-object v1, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    iget v2, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->presence:I

    iget v3, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->chatCapability:I

    iget-object v5, p1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->category:Ljava/lang/String;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 217
    return-void

    :cond_2
    move v8, v9

    .line 207
    goto :goto_0
.end method

.method protected registerContactChangeNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eq v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsParentObserverRegistered:Z

    if-nez v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/htccontacts/HtcContactInfo;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    iput-boolean v3, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsParentObserverRegistered:Z

    .line 288
    :cond_1
    return-void
.end method

.method protected unregisterContactChangeNotification()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsParentObserverRegistered:Z

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcContactInfo;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->mIsParentObserverRegistered:Z

    .line 297
    :cond_0
    return-void
.end method

.method public updateStatusResult(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;>;"
    return-void
.end method
