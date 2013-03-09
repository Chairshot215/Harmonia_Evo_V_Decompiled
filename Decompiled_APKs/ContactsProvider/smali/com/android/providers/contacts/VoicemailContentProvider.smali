.class public Lcom/android/providers/contacts/VoicemailContentProvider;
.super Landroid/content/ContentProvider;
.source "VoicemailContentProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/VoicemailContentProvider$1;,
        Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoicemailContentProvider"


# instance fields
.field private mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

.field private mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 169
    return-void
.end method

.method private checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5
    .parameter "uriData"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider %s does not have %s permission.\nPlease set query parameter \'%s\' in the URI.\nURI: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    :cond_1
    return-void
.end method

.method private final checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "callingPackage"
    .parameter "voicemailSourcePackage"
    .parameter "uri"

    .prologue
    .line 328
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const-string v1, "Permission denied for URI: %s\n. Package %s cannot perform this operation for %s. Requires %s permission."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2
    .parameter "uri"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasOwnVoicemailAccess()V

    .line 305
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 306
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 307
    return-object v0
.end method

.method private varargs checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 5
    .parameter "uri"
    .parameter "valuesArray"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v3

    .line 316
    .local v3, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 317
    .local v4, values:Landroid/content/ContentValues;
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method private checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2
    .parameter "uri"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method private checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "uriData"
    .parameter "values"

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_package in URI was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but doesn\'t match source_package in ContentValues which was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    return-void
.end method

.method private getPackageRestrictionClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;
    .locals 3
    .parameter "uriData"

    .prologue
    .line 152
    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->$SwitchMap$com$android$providers$contacts$VoicemailUriType:[I

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUriType()Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible, all cases are covered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 158
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    goto :goto_0

    .line 160
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri type for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "uriData"
    .parameter "values"

    .prologue
    .line 250
    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, provider:Ljava/lang/String;
    :goto_0
    const-string v1, "source_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0           #provider:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    :cond_1
    return-void

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method context()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 133
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 135
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p3}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getCallingPackage()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 369
    .local v2, caller:I
    if-nez v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object v3

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, callerPackages:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-eqz v7, :cond_0

    .line 376
    array-length v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 377
    aget-object v3, v4, v9

    goto :goto_0

    .line 382
    :cond_2
    aget-object v1, v4, v9

    .line 383
    .local v1, bestSoFar:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v0, v5

    .line 384
    .local v3, callerPackage:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasFullAccess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 388
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasOwnVoicemailAccess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    move-object v1, v3

    .line 383
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3           #callerPackage:Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 392
    goto :goto_0
.end method

.method getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/providers/contacts/COpenHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 107
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 108
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 60
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 65
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentTable;

    const-string v1, "calls"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 67
    new-instance v0, Lcom/android/providers/contacts/VoicemailStatusTable;

    const-string v1, "voicemail_status"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/providers/contacts/VoicemailStatusTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 69
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uriData"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 147
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 115
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v6, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v6, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 117
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 123
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 124
    .local v1, uriData:Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 126
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3, p4}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
