.class public Landroid/test/mock/MockContentProvider;
.super Landroid/content/ContentProvider;
.source "MockContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/mock/MockContentProvider$1;,
        Landroid/test/mock/MockContentProvider$InversionIContentProvider;
    }
.end annotation


# instance fields
.field private final mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;


# direct methods
.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/test/mock/MockContext;

    invoke-direct {v0}, Landroid/test/mock/MockContext;-><init>()V

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v3}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$1;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v2}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$1;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$1;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
