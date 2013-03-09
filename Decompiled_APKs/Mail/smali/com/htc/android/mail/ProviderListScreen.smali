.class public Lcom/htc/android/mail/ProviderListScreen;
.super Lcom/htc/app/HtcListActivity;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;,
        Lcom/htc/android/mail/ProviderListScreen$RequestHandler;,
        Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;
    }
.end annotation


# static fields
.field public static final ADD_ACCOUNT:I = 0x1

.field public static final BACK_TO_PROVIDER:I = 0xc8

.field private static final CHINA_139_EXIST:I = 0x2

.field private static DEBUG:Z = false

.field private static final DIALOG_PROGRESS_ACCOUNT_SYNCING:I = 0x3

.field public static final RESTORE_EXCHANGE_SETTINGS:I = 0x2

.field static final TAG:Ljava/lang/String; = "ProviderListScreen"


# instance fields
.field huxAuthReady:Z

.field isHuxOnDevice:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallingActivity:I

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mIsInForeground:Z

.field private mRequestHandler:Lcom/htc/android/mail/ProviderListScreen$RequestHandler;

.field private mSecretPhrases:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;

.field private mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private singleProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    .line 68
    iput-boolean v1, p0, Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/android/mail/ProviderListScreen;->huxAuthReady:Z

    .line 468
    new-instance v0, Lcom/htc/android/mail/ProviderListScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ProviderListScreen$1;-><init>(Lcom/htc/android/mail/ProviderListScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/ProviderListScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ProviderListScreen;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private newHuxProviderListCursor(Landroid/database/Cursor;[Ljava/lang/String;Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;)Landroid/database/MatrixCursor;
    .locals 14
    .parameter "cursor"
    .parameter "projection"
    .parameter "verifyDeviceInfo"

    .prologue
    .line 242
    new-instance v9, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 243
    .local v9, providerListCursor:Landroid/database/MatrixCursor;
    const/4 v10, 0x0

    .line 244
    .local v10, vzwValues:[Ljava/lang/Object;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v2, v11, [Ljava/lang/Object;

    .line 245
    .local v2, exchangeValues:[Ljava/lang/Object;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v3, v11, [Ljava/lang/Object;

    .line 246
    .local v3, huxValues:[Ljava/lang/Object;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v6, v11, [Ljava/lang/Object;

    .line 248
    .local v6, otherValues:[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 250
    .local v7, providerCount:I
    const/4 v11, -0x1

    :try_start_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    .line 251
    .end local v7           #providerCount:I
    .local v8, providerCount:I
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 252
    const-string v11, "_inprotocol"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_0

    .line 256
    const-string v11, "_inprotocol"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1

    .line 257
    const/4 v11, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #providerCount:I
    .restart local v7       #providerCount:I
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    .line 258
    const/4 v11, 0x1

    const-string v12, "_provider"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 259
    const/4 v11, 0x2

    const-string v12, "_inprotocol"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    .line 260
    const/4 v11, 0x3

    const-string v12, "_description"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 261
    const/4 v11, 0x4

    const-string v12, "_resid"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    .line 262
    const/4 v11, 0x5

    const-string v12, "_domain"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v7

    .line 265
    .end local v7           #providerCount:I
    .restart local v8       #providerCount:I
    :cond_1
    :try_start_3
    const-string v11, "Verizon.net"

    const-string v12, "_provider"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 267
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v10, v11, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 268
    const/4 v11, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #providerCount:I
    .restart local v7       #providerCount:I
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 269
    const/4 v11, 0x1

    const-string v12, "_provider"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 270
    const/4 v11, 0x2

    const-string v12, "_inprotocol"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 271
    const/4 v11, 0x3

    const-string v12, "_description"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 272
    const/4 v11, 0x4

    const-string v12, "_resid"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 273
    const/4 v11, 0x5

    const-string v12, "_domain"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v8, v7

    .line 276
    .end local v7           #providerCount:I
    .restart local v8       #providerCount:I
    :cond_2
    :try_start_5
    const-string v11, "Other"

    const-string v12, "_provider"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    .line 278
    const/4 v11, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #providerCount:I
    .restart local v7       #providerCount:I
    :try_start_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 279
    const/4 v11, 0x1

    const-string v12, "_provider"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    .line 280
    const/4 v11, 0x2

    const-string v12, "_inprotocol"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 281
    const/4 v11, 0x3

    const-string v12, "_description"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    .line 282
    const/4 v11, 0x4

    const-string v12, "_resid"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 283
    const/4 v11, 0x5

    const-string v12, "_domain"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v8, v7

    .end local v7           #providerCount:I
    .restart local v8       #providerCount:I
    goto/16 :goto_0

    .line 287
    :cond_3
    if-eqz v10, :cond_4

    .line 288
    :try_start_7
    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 291
    :cond_4
    invoke-virtual {v9, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 293
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 294
    .local v5, info:Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    const/4 v11, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #providerCount:I
    .restart local v7       #providerCount:I
    :try_start_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 295
    const/4 v11, 0x1

    iget-object v12, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    aput-object v12, v3, v11

    .line 296
    const/4 v11, 0x2

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 297
    const/4 v11, 0x3

    iget-object v12, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    aput-object v12, v3, v11

    .line 298
    const/4 v11, 0x4

    iget-object v12, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/htc/android/mail/util/AccountIconMap;->getAccountIconResource(Ljava/lang/String;Z)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 299
    const/4 v11, 0x5

    const-string v12, ""

    aput-object v12, v3, v11

    .line 300
    invoke-virtual {v9, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v8, v7

    .end local v7           #providerCount:I
    .restart local v8       #providerCount:I
    goto :goto_1

    .line 303
    .end local v5           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    :cond_5
    :try_start_9
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 309
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #providerCount:I
    .end local v9           #providerListCursor:Landroid/database/MatrixCursor;
    :goto_2
    return-object v9

    .line 306
    .restart local v7       #providerCount:I
    .restart local v9       #providerListCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    new-instance v11, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;

    invoke-direct {v11, p1, p0}, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/ProviderListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    const/4 v9, 0x0

    goto :goto_2

    .line 306
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #providerCount:I
    .restart local v8       #providerCount:I
    :catch_1
    move-exception v1

    move v7, v8

    .end local v8           #providerCount:I
    .restart local v7       #providerCount:I
    goto :goto_3
.end method

.method private providerCursorQuery()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 217
    .local v7, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/ProviderListScreen;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 219
    iput-boolean v9, p0, Lcom/htc/android/mail/ProviderListScreen;->singleProvider:Z

    .line 220
    sget-boolean v0, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProviderListScreen"

    const-string v1, "enter setup screen when only one provider exists>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "_provider"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, providerStr:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/android/mail/ecNewAccount;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "provider"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "_domain"

    const-string v1, "_domain"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "_providerid"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v7, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v0, "CallingActivity"

    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "CallingActivity"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v7, v9}, Lcom/htc/android/mail/ProviderListScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    .end local v8           #providerStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 230
    :cond_1
    const-string v0, "ProviderListScreen"

    const-string v1, "can\'t move cursor to First>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ProviderListScreen"

    const-string v1, "enter provider list screen"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ProviderListScreen;->singleProvider:Z

    move-object v2, v6

    .line 236
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 338
    const-string v0, "ProviderListScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/ProviderListScreen;->singleProvider:Z

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/ProviderListScreen;->setResult(ILandroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->finish()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0, v12}, Lcom/htc/android/mail/ProviderListScreen;->requestWindowFeature(I)Z

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x20806a9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 127
    const v8, 0x7f030036

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ProviderListScreen;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 132
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "CallingActivity"

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCallingActivity:I

    .line 133
    new-instance v8, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;

    invoke-direct {v8, p0, p0}, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/ProviderListScreen;)V

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mRequestHandler:Lcom/htc/android/mail/ProviderListScreen$RequestHandler;

    .line 134
    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mRequestHandler:Lcom/htc/android/mail/ProviderListScreen$RequestHandler;

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 136
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 137
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.android.mail.SYNCHUXACCOUNT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/htc/android/mail/ProviderListScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const-string v8, "HuxCmdTimeOut"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    .local v1, huxHttpTaskTimeOut:Z
    if-eqz v1, :cond_3

    .line 143
    sget-boolean v8, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ProviderListScreen"

    const-string v9, "huxHttpTaskTimeout"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ProviderListScreen;->providerCursorQuery()Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    .line 145
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_2

    .line 213
    .end local v1           #huxHttpTaskTimeOut:Z
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 148
    .restart local v1       #huxHttpTaskTimeOut:Z
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v8, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;

    iget-object v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    invoke-direct {v8, v9, p0}, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ProviderListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v8, "verifyDeviceInfo"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 154
    .local v7, verifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/Account;->isHuxOnDevice(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/android/mail/ProviderListScreen;->isHuxOnDevice:Z

    .line 155
    const-string v8, "huxAuthReady"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/android/mail/ProviderListScreen;->huxAuthReady:Z

    .line 161
    sget-boolean v8, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "ProviderListScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isHuxOnDevice:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/htc/android/mail/ProviderListScreen;->isHuxOnDevice:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " huxAuthReady:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/htc/android/mail/ProviderListScreen;->huxAuthReady:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    iget-boolean v8, p0, Lcom/htc/android/mail/ProviderListScreen;->huxAuthReady:Z

    if-eqz v8, :cond_5

    .line 165
    if-eqz v7, :cond_8

    .line 166
    invoke-direct {p0}, Lcom/htc/android/mail/ProviderListScreen;->providerCursorQuery()Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    .line 167
    const/4 v8, 0x6

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v11

    const-string v8, "_provider"

    aput-object v8, v5, v12

    const/4 v8, 0x2

    const-string v9, "_inprotocol"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "_description"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "_resid"

    aput-object v9, v5, v8

    const/4 v8, 0x5

    const-string v9, "_domain"

    aput-object v9, v5, v8

    .line 170
    .local v5, projection:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v8, v5, v7}, Lcom/htc/android/mail/ProviderListScreen;->newHuxProviderListCursor(Landroid/database/Cursor;[Ljava/lang/String;Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 172
    .local v6, providerListCursor:Landroid/database/MatrixCursor;
    new-instance v8, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;

    invoke-direct {v8, v6, p0}, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ProviderListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 177
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #providerListCursor:Landroid/database/MatrixCursor;
    :cond_5
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/Account;->getPIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 178
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 181
    .local v4, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_7

    .line 182
    sget-boolean v8, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "ProviderListScreen"

    const-string v9, "mobile network is not available"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/mail/ProviderListScreen;->providerCursorQuery()Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    .line 184
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    .line 187
    new-instance v8, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;

    iget-object v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    invoke-direct {v8, v9, p0}, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ProviderListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 195
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mobile:Landroid/net/NetworkInfo;
    :cond_7
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/android/mail/huxservice/HuxService;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v8, 0x200

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    const-string v8, "CallingActivity"

    iget v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCallingActivity:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v8, "isTokenExisted"

    iget-boolean v9, p0, Lcom/htc/android/mail/ProviderListScreen;->isHuxOnDevice:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ProviderListScreen;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->finish()V

    goto/16 :goto_0

    .line 205
    .end local v1           #huxHttpTaskTimeOut:Z
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #verifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :cond_8
    invoke-direct {p0}, Lcom/htc/android/mail/ProviderListScreen;->providerCursorQuery()Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    .line 206
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_9

    .line 207
    const-string v8, "ProviderListScreen"

    const-string v9, "mCursor null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->finish()V

    goto/16 :goto_0

    .line 211
    :cond_9
    new-instance v8, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;

    iget-object v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCursor:Landroid/database/Cursor;

    invoke-direct {v8, v9, p0}, Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ProviderListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 402
    packed-switch p1, :pswitch_data_0

    .line 414
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 404
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b005a

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ProviderListScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02d4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ProviderListScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 409
    :pswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b032b

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ProviderListScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 110
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ProviderListScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mSecretPhrases:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;-><init>(Lcom/htc/android/mail/ProviderListScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mSecretPhrases:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mSecretPhrases:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->checkAndStart(I)V

    .line 421
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;

    .line 351
    .local v0, attr:Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;
    iget v1, v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->inProtocol:I

    .line 352
    .local v1, inProtocol:I
    iget-object v7, v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->provider:Ljava/lang/String;

    .line 353
    .local v7, providerStr:Ljava/lang/String;
    iget-object v3, v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->description:Ljava/lang/String;

    .line 354
    .local v3, providerDesc:Ljava/lang/String;
    iget-wide v5, v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->id:J

    .line 355
    .local v5, providerId:J
    iget-object v4, v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->domain:Ljava/lang/String;

    .line 357
    .local v4, providerDomain:Ljava/lang/String;
    const/4 v2, 0x0

    .line 359
    .local v2, intent:Landroid/content/Intent;
    const/16 v8, 0xa

    if-ne v1, v8, :cond_1

    .line 360
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 361
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "intent.eas.from_where"

    const-string v9, "extra.eas.from.mail"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v8, "intent.eas.mode.wizard"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-class v8, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v2, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 364
    const-string v8, "CallingActivity"

    iget v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCallingActivity:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/htc/android/mail/ProviderListScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v8, 0x6

    if-ne v1, v8, :cond_3

    .line 368
    iget-boolean v8, p0, Lcom/htc/android/mail/ProviderListScreen;->isHuxOnDevice:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 370
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/android/mail/huxservice/HuxAddAccount;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "provider"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v8, "providerDesc"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v8, "inprotocol"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v8, "CallingActivity"

    iget v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCallingActivity:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/htc/android/mail/ProviderListScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 376
    :cond_2
    iget-boolean v8, p0, Lcom/htc/android/mail/ProviderListScreen;->isHuxOnDevice:Z

    if-nez v8, :cond_0

    .line 378
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "provider"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v8, "providerDesc"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v8, "inprotocol"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v8, "verifyDeviceInfo"

    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "verifyDeviceInfo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    const-string v8, "CallingActivity"

    iget v9, p0, Lcom/htc/android/mail/ProviderListScreen;->mCallingActivity:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/htc/android/mail/ProviderListScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 389
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/android/mail/ecNewAccount;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "provider"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v8, "providerDesc"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v8, "_domain"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v8, "_providerid"

    invoke-virtual {v2, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    const-string v8, "CallingActivity"

    invoke-virtual {p0}, Lcom/htc/android/mail/ProviderListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "CallingActivity"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/htc/android/mail/ProviderListScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z

    .line 334
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 314
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 315
    iput-boolean v4, p0, Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z

    .line 320
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ProviderListScreen;->showDialog(I)V

    .line 323
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/android/mail/ProviderListScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/ProviderListScreen;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ProviderListScreen"

    const-string v1, "[ATS][com.htc.android.mail][press_provider][launch]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    return-void
.end method
