.class public abstract Lcom/android/htccontacts/HtcContactInfoBase;
.super Ljava/lang/Object;
.source "HtcContactInfoBase.java"


# static fields
.field public static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field public static final CONTACT_INFO_COMPLETED:I = 0x2

.field static final CONTACT_TYPE_COMPANY_DIRECTORY:I = 0x7

.field public static final CONTACT_TYPE_CUSTOM:I = 0x6

.field static final CONTACT_TYPE_DEFAULT:I = 0x5

.field public static final CONTACT_TYPE_EXCHANGE:I = 0x3

.field public static final CONTACT_TYPE_FACEBOOK:I = 0x8

.field public static final CONTACT_TYPE_FLICKR:I = 0x9

.field static final CONTACT_TYPE_FRIEND:I = 0x8

.field public static final CONTACT_TYPE_GOOGLE:I = 0x2

.field public static final CONTACT_TYPE_LINKED:I = 0x7

.field public static final CONTACT_TYPE_LOCAL:I = 0x4

.field public static final CONTACT_TYPE_MYCONTACT:I = 0x3e7

.field public static final CONTACT_TYPE_MYPHONEBOOK:I = 0xa

.field public static final CONTACT_TYPE_PC:I = 0x5

.field public static final CONTACT_TYPE_PLURK:I = 0xb

.field public static final CONTACT_TYPE_SIM:I = 0x1

.field public static final CONTACT_TYPE_SKYPE:I = 0xd

.field public static final CONTACT_TYPE_TWITTER:I = 0xc

.field public static final CONTACT_TYPE_UNKNOWN:I = 0x0

.field public static final CONTACT_TYPE_VODAFONE:I = 0x8

.field public static final ENTITY_QUERY_COMPLETED:I = 0x3

.field public static final SUGGESTION_COMPLETED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcContactInfoBase"


# instance fields
.field public bmRawPhoto:Landroid/graphics/Bitmap;

.field public fullName:Ljava/lang/String;

.field public id:J

.field mCacheChang:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChatCapability:I

.field mCompanyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mContactId:J

.field public mContactType:I

.field public mContactTypeLabel:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field mContext:Landroid/content/Context;

.field public mDefaultAction:Ljava/lang/String;

.field public mDestroyed:Z

.field mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupIdTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mImList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field mImpsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsObserved:Z

.field protected mNeedRebuildInfo:Z

.field mNotificationRegistrants:Landroid/os/RegistrantList;

.field mNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumberType:I

.field protected mPackageIconDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mPresence:I

.field protected mRawContactAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field public mSuggestCount:I

.field protected mThumbnailId:J

.field public mUriContact:Landroid/net/Uri;

.field public sDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mSuggestCount:I

    .line 57
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    .line 60
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 86
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNeedRebuildInfo:Z

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNotificationRegistrants:Landroid/os/RegistrantList;

    .line 92
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    .line 103
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mDestroyed:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    .line 132
    iput v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberType:I

    .line 134
    new-instance v0, Lcom/android/htccontacts/HtcContactInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcContactInfoBase$1;-><init>(Lcom/android/htccontacts/HtcContactInfoBase;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCompanyList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mImpsList:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mImList:Ljava/util/ArrayList;

    .line 170
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mSuggestCount:I

    .line 57
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    .line 60
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 86
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNeedRebuildInfo:Z

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNotificationRegistrants:Landroid/os/RegistrantList;

    .line 92
    iput-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    .line 103
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mDestroyed:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    .line 132
    iput v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberType:I

    .line 134
    new-instance v0, Lcom/android/htccontacts/HtcContactInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcContactInfoBase$1;-><init>(Lcom/android/htccontacts/HtcContactInfoBase;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCompanyList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mImpsList:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mImList:Ljava/util/ArrayList;

    .line 176
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    .line 177
    iput-object p2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized buildAllInfo()V
    .locals 0

    .prologue
    .line 185
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cachePackageIconDrawable(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "packageName"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 450
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 457
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized cachePackageIconDrawable(Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V
    .locals 3
    .parameter "at"
    .parameter "packageName"

    .prologue
    .line 439
    monitor-enter p0

    if-nez p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :cond_1
    move-object v0, p2

    .line 441
    .local v0, key:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method abstract closeAllCursors()V
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->closeAllCursors()V

    .line 192
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mDestroyed:Z

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 208
    :cond_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcContactInfoBase"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceContactChange(Landroid/net/Uri;)V
    .locals 0
    .parameter "uriNew"

    .prologue
    .line 212
    return-void
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getEmailStringList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 423
    .local v2, infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v3, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 420
    .end local v0           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 426
    .restart local v0       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getMyPhonebookRawContactIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, rtn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, arrIdx:I
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 223
    .local v3, typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    const-string v4, "com.htc.android.myphonebook"

    iget-object v5, v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v3           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 220
    .end local v0           #arrIdx:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rtn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getNumberStringList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v2, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 432
    .local v1, infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v3, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 429
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v2           #numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 435
    .restart local v2       #numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method public getNumberType()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberType:I

    return v0
.end method

.method public declared-synchronized getPackageIconDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "resId"
    .parameter "packageName"

    .prologue
    .line 465
    monitor-enter p0

    const/4 v1, 0x0

    .line 466
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 486
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 469
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 470
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    move-object v2, v1

    .line 486
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 474
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 475
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v3, :cond_2

    .line 476
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_2

    .line 478
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 482
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 465
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getPackageIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, d:Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .line 492
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPackageIconDrawable:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 493
    .local v2, localPackageIconDrawable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 496
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method getRawContactIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRawContactIdsString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2c

    .line 234
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v2, localmRawContactIds:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 238
    .local v0, LId:Ljava/lang/Long;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    .end local v0           #LId:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v5, v4, :cond_1

    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasFacebookAccountTyupe()Z
    .locals 5

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 258
    .local v1, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 259
    .local v3, typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    iget-object v2, v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 260
    .local v2, sType:Ljava/lang/String;
    const-string v4, "com.htc.socialnetwork.facebook"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.facebook.auth.login"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    :cond_1
    const/4 v4, 0x1

    .line 264
    .end local v2           #sType:Ljava/lang/String;
    .end local v3           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasPhoto()Z
    .locals 4

    .prologue
    .line 612
    iget-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllFacebookAccountType()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 302
    .local v2, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    if-nez v2, :cond_0

    .line 311
    :goto_0
    return v3

    .line 305
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 306
    .local v0, accType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    const-string v4, "com.htc.socialnetwork.facebook"

    iget-object v5, v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.facebook.auth.login"

    iget-object v5, v0, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 311
    .end local v0           #accType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAllSimAccountTyupe()Z
    .locals 6

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, bSim:Z
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 384
    .local v2, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    if-nez v2, :cond_0

    .line 385
    const/4 v4, 0x0

    .line 395
    :goto_0
    return v4

    .line 387
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 388
    .local v3, sType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    const-string v4, "com.anddroid.contacts.sim"

    iget-object v5, v3, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    const/4 v4, 0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    .end local v3           #sType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_2
    move v4, v0

    .line 395
    goto :goto_0
.end method

.method public isAllSocialNetworkAccountTyupe()Z
    .locals 7

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 340
    .local v3, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isWritable()Z

    move-result v2

    .line 341
    .local v2, isEditable:Z
    const/4 v1, 0x0

    .line 343
    .local v1, isCommonAccountType:Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 344
    .local v5, sTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    iget-object v4, v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 345
    .local v4, sType:Ljava/lang/String;
    const-string v6, "com.google"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.htc.android.mail.eas"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.htc.android.pcsc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    :cond_1
    const/4 v1, 0x1

    .line 354
    .end local v4           #sType:Ljava/lang/String;
    .end local v5           #sTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isWritable()Z

    move-result v0

    return v0
.end method

.method public isMyPhonebookType()Z
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlyOneFacebookAccountType()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 283
    .local v0, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    if-nez v0, :cond_0

    move v1, v2

    .line 291
    :goto_0
    return v1

    .line 286
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v4, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v4, "com.facebook.auth.login"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 289
    goto :goto_0

    :cond_2
    move v1, v2

    .line 291
    goto :goto_0
.end method

.method public declared-synchronized isReadOnly()Z
    .locals 8

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 365
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 367
    .local v1, editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const/4 v3, 0x1

    .line 368
    .local v3, isReadOnly:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 369
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    const/4 v3, 0x0

    .line 374
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    monitor-exit p0

    return v3

    .line 364
    .end local v1           #editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isReadOnly:Z
    .end local v4           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isSimType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 518
    iget v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkypeSignIn()Z
    .locals 7

    .prologue
    .line 403
    const/4 v2, 0x0

    .line 406
    .local v2, isSkypeSignIn:Z
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 407
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 408
    .local v4, unEditableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 409
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v5, "com.skype.contacts.sync"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    const/4 v2, 0x1

    .line 414
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    return v2
.end method

.method public isUnknownType()Z
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isWritable()Z
    .locals 8

    .prologue
    .line 319
    monitor-enter p0

    const/4 v1, 0x0

    .line 320
    .local v1, bWritable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 321
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    .local v2, editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 323
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    const/4 v1, 0x1

    .line 328
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    monitor-exit p0

    return v1

    .line 319
    .end local v2           #editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public notifyChanges(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 608
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/htccontacts/HtcContactInfoBase;->notifyChanges(Ljava/lang/String;J)V

    .line 609
    return-void
.end method

.method public notifyChanges(Ljava/lang/String;J)V
    .locals 3
    .parameter "type"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string v1, "HtcContactInfoBase"

    const-string v2, "Empty type message cannot be sent!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 603
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 545
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 550
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    const-string v5, "CONTACT_INFO_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 552
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 554
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 556
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 557
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 560
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    const-string v5, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #type:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 562
    .restart local v3       #type:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 564
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 565
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 566
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 569
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    const-string v5, "SUGGESTION_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #type:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 571
    .restart local v3       #type:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 573
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 574
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 575
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #type:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HtcContactInfoBase"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setAllInfoDirty()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method setNeedRebuild(Z)V
    .locals 0
    .parameter "rebuild"

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNeedRebuildInfo:Z

    .line 541
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcContactInfoBase"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateEmails()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method protected updateGroupIdTitle()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method protected declared-synchronized updateRawContactAccountTypes()V
    .locals 0

    .prologue
    .line 248
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected updateRawContactIds()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
