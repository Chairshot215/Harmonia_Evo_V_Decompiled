.class synthetic Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator$1;
.super Ljava/lang/Object;
.source "DataTypeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$chrome$bookmarks$sync$api$ChromeSyncClient$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->values()[Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator$1;->$SwitchMap$com$google$chrome$bookmarks$sync$api$ChromeSyncClient$DataType:[I

    :try_start_0
    sget-object v0, Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator$1;->$SwitchMap$com$google$chrome$bookmarks$sync$api$ChromeSyncClient$DataType:[I

    sget-object v1, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    invoke-virtual {v1}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
