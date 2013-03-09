.class public final Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;
.super Ljava/lang/Object;
.source "SyncProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/syncprovider/SyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EXTRAS"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = null

.field public static final PROJECTION_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "extras"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->PROJECTION_MAP:Ljava/util/Map;

    .line 385
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "key"

    const-string v2, "key"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    const-string v0, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT, %s TEXT );"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extras"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
