.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V
    .locals 1
    .parameter "entryType"
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "photoThumbnailUri"
    .parameter "isFirstLevel"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 92
    iput-boolean p11, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 93
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 95
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 96
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 97
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 98
    iput-wide p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 99
    iput-object p10, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 102
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 12
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 118
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 12
    .parameter "display"
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x0

    .line 140
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 12
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 169
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x0

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 12
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 159
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 109
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayNameSource"
    .parameter "displayName"
    .parameter "destination"

    .prologue
    .line 131
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .parameter "photoBytes"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
